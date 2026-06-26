<?php
// Fix navigation menu and header settings - DELETE AFTER USE
require_once __DIR__ . '/wp-load.php';
global $wpdb;

echo "=== FIX NAVIGATION & HEADER ===\n";
$site_url = get_option('siteurl');

// 1. Delete all existing nav menus
$existing_menus = wp_get_nav_menus();
foreach ($existing_menus as $menu) {
    wp_delete_nav_menu($menu->term_id);
    echo "Deleted menu: {$menu->name}\n";
}

// 2. Create the correct primary menu (matching original site)
$menu_id = wp_create_nav_menu('Primary Menu');
if (is_wp_error($menu_id)) {
    echo "Error creating menu: " . $menu_id->get_error_message() . "\n";
} else {
    echo "Created Primary Menu: ID=$menu_id\n";
    
    // Add menu items matching original site
    $items = array(
        array('title' => 'Overview', 'url' => $site_url . '/overview/'),
        array('title' => 'Tickets', 'url' => $site_url . '/'),
        array('title' => 'My Account', 'url' => $site_url . '/my-account/'),
    );
    
    foreach ($items as $item) {
        $item_id = wp_update_nav_menu_item($menu_id, 0, array(
            'menu-item-title'  => $item['title'],
            'menu-item-url'    => $item['url'],
            'menu-item-status' => 'publish',
            'menu-item-type'   => 'custom',
        ));
        echo "  Added: {$item['title']} => {$item['url']} (ID=$item_id)\n";
    }
    
    // 3. Assign menu to primary location
    $locations = get_theme_mod('nav_menu_locations', array());
    $locations['primary'] = $menu_id;
    set_theme_mod('nav_menu_locations', $locations);
    echo "Menu assigned to primary location\n";
}

// 4. Set header banner image in Kadence settings
// The banner is set via Kadence's "Header" settings - specifically the "Above Header" or page hero
// First, let's check what Kadence global settings look like
$kadence_settings = get_option('kadence_global_settings', array());
echo "\nKadence global settings: " . json_encode($kadence_settings) . "\n";

// 5. Set the header image via theme_mods (Kadence uses this for header background)
$banner_id = 1605; // itKI76mfGrrkfrHVr7b1tBxLKsy0YjFX2IemQuEz.jpg
$banner_url = wp_get_attachment_url($banner_id);
echo "\nBanner URL: $banner_url\n";

// Set header image
set_theme_mod('header_image', $banner_url);
set_theme_mod('header_image_data', (object) array(
    'attachment_id' => $banner_id,
    'url'           => $banner_url,
    'thumbnail_url' => $banner_url,
    'height'        => 400,
    'width'         => 1920,
));
echo "Header image set\n";

// 6. Check the page hero settings - Kadence uses 'page_title_element' for the hero section
// The original site shows a full-width banner with "Tickets" text
// This is likely set in the page settings, not theme_mods

// Get the front page
$front_page_id = get_option('page_on_front');
echo "\nFront page ID: $front_page_id\n";

if ($front_page_id) {
    // Check page meta for hero settings
    $hero_meta = get_post_meta($front_page_id, '_kad_post_layout', true);
    echo "Page hero meta: " . json_encode($hero_meta) . "\n";
    
    // Get all meta for front page
    $all_meta = get_post_meta($front_page_id);
    $kad_meta = array_filter($all_meta, function($key) { return strpos($key, '_kad') === 0; }, ARRAY_FILTER_USE_KEY);
    echo "Kadence page meta keys: " . json_encode(array_keys($kad_meta)) . "\n";
}

// 7. Verify final state
echo "\n=== FINAL STATE ===\n";
$menus = wp_get_nav_menus();
foreach ($menus as $m) {
    echo "Menu: {$m->name} (ID={$m->term_id})\n";
    $items = wp_get_nav_menu_items($m->term_id);
    if ($items) {
        foreach ($items as $item) {
            echo "  - {$item->title} => {$item->url}\n";
        }
    }
}
$locations = get_theme_mod('nav_menu_locations', array());
echo "Nav locations: " . json_encode($locations) . "\n";
echo "Custom logo: " . get_theme_mod('custom_logo') . "\n";
echo "Header image: " . get_theme_mod('header_image') . "\n";
echo "\nDONE!\n";
