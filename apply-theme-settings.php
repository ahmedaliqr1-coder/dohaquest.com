<?php
/**
 * Apply Kadence Theme Settings from Original Site
 * Extracted from: bookings.dohaquest.com
 */

define('ABSPATH', dirname(__FILE__) . '/');
define('WPINC', 'wp-includes');

// Load WordPress
require_once(dirname(__FILE__) . '/wp-load.php');

echo "=== APPLYING KADENCE THEME SETTINGS ===\n";
echo "Site URL: " . get_option('siteurl') . "\n\n";

// ============================================================
// 1. KADENCE GLOBAL SETTINGS (palette colors, typography, etc.)
// ============================================================
$kadence_global = array(
    'palette' => array(
        array('color' => '#510c76', 'slug' => 'palette1', 'name' => 'Palette Color 1'),
        array('color' => '#215387', 'slug' => 'palette2', 'name' => 'Palette Color 2'),
        array('color' => '#1A202C', 'slug' => 'palette3', 'name' => 'Palette Color 3'),
        array('color' => '#2D3748', 'slug' => 'palette4', 'name' => 'Palette Color 4'),
        array('color' => '#4A5568', 'slug' => 'palette5', 'name' => 'Palette Color 5'),
        array('color' => '#718096', 'slug' => 'palette6', 'name' => 'Palette Color 6'),
        array('color' => '#EDF2F7', 'slug' => 'palette7', 'name' => 'Palette Color 7'),
        array('color' => '#F7FAFC', 'slug' => 'palette8', 'name' => 'Palette Color 8'),
        array('color' => '#ffffff', 'slug' => 'palette9', 'name' => 'Palette Color 9'),
    ),
);

// Delete and re-insert kadence_global_settings
$wpdb->query("DELETE FROM {$wpdb->options} WHERE option_name = 'kadence_global_settings'");
$result = $wpdb->insert($wpdb->options, array(
    'option_name' => 'kadence_global_settings',
    'option_value' => wp_json_encode($kadence_global),
    'autoload' => 'yes'
));
echo "1. kadence_global_settings: " . ($result !== false ? "OK" : "FAILED: " . $wpdb->last_error) . "\n";

// ============================================================
// 2. THEME MODS - Complete settings from original site
// ============================================================

// Get current theme mods (preserve custom_logo, nav_menu_locations, header_image)
$theme_mods = get_option('theme_mods_kadence', array());
if (!is_array($theme_mods)) $theme_mods = array();

// Apply all settings from original site CSS analysis
$new_mods = array(
    // Content width: normal (not fullwidth)
    'content_width' => 'normal',
    
    // Content style: boxed
    'content_style' => 'boxed',
    
    // Link style: no-underline
    'link_style' => 'no-underline',
    
    // Page title settings
    'page_title' => true,
    'page_title_layout' => 'above',
    'page_title_inner_layout' => 'fullwidth',
    'page_title_height' => array(
        'size' => array(380, '', ''),
        'unit' => array('px', 'px', 'px'),
    ),
    'page_title_align' => 'center',
    'page_title_elements' => array('title'),
    
    // Page title color: white (palette9)
    'page_title_color' => array(
        'color' => '',
        'palette' => 'palette9',
    ),
    
    // Featured image: show, position behind
    'page_feature' => true,
    'page_feature_position' => 'behind',
    'page_feature_ratio' => 'inherit',
    
    // Global colors
    'palette_color_1' => '#510c76',
    'palette_color_2' => '#215387',
    'palette_color_3' => '#1A202C',
    'palette_color_4' => '#2D3748',
    'palette_color_5' => '#4A5568',
    'palette_color_6' => '#718096',
    'palette_color_7' => '#EDF2F7',
    'palette_color_8' => '#F7FAFC',
    'palette_color_9' => '#ffffff',
    
    // Header settings
    'header_main_height' => array(
        'size' => array(60, '', ''),
        'unit' => array('px', 'px', 'px'),
    ),
    
    // Transparent header (important for hero effect)
    'header_transparent' => true,
    'header_transparent_default' => true,
    
    // Vertical padding
    'content_vertical_padding' => 'show',
    
    // Footer on bottom
    'footer_on_bottom' => true,
);

// Merge with existing mods (preserve custom_logo, nav_menu_locations, header_image)
foreach ($new_mods as $key => $value) {
    $theme_mods[$key] = $value;
}

// Force update by deleting and re-inserting
$wpdb->query("DELETE FROM {$wpdb->options} WHERE option_name = 'theme_mods_kadence'");
$result = $wpdb->insert($wpdb->options, array(
    'option_name' => 'theme_mods_kadence',
    'option_value' => serialize($theme_mods),
    'autoload' => 'yes'
));
echo "2. theme_mods_kadence: " . ($result !== false ? "OK (inserted fresh)" : "FAILED: " . $wpdb->last_error) . "\n";
echo "   Keys set: " . implode(', ', array_keys($new_mods)) . "\n";

// ============================================================
// 3. PAGE SETTINGS - Kadence page meta for front page
// ============================================================
$front_page_id = get_option('page_on_front');
if (!$front_page_id) {
    // Find the Tickets page
    $pages = get_posts(array('post_type' => 'page', 'post_status' => 'publish', 'numberposts' => -1));
    foreach ($pages as $page) {
        if ($page->post_title === 'Tickets' || $page->ID == 15) {
            $front_page_id = $page->ID;
            break;
        }
    }
}

if ($front_page_id) {
    echo "\n3. Front page ID: $front_page_id\n";
    
    // Set Kadence page meta
    update_post_meta($front_page_id, '_kad_post_title', 'show');
    update_post_meta($front_page_id, '_kad_post_layout', 'fullwidth');
    update_post_meta($front_page_id, '_kad_post_title_layout', 'above');
    update_post_meta($front_page_id, '_kad_post_title_inner_layout', 'fullwidth');
    update_post_meta($front_page_id, '_kad_post_title_height', json_encode(array('size' => array(380, '', ''), 'unit' => array('px', 'px', 'px'))));
    update_post_meta($front_page_id, '_kad_post_title_align', 'center');
    update_post_meta($front_page_id, '_kad_post_feature', 'above');
    update_post_meta($front_page_id, '_kad_post_feature_position', 'behind');
    update_post_meta($front_page_id, '_kad_post_vertical_padding', 'show');
    
    // Verify featured image
    $thumbnail_id = get_post_thumbnail_id($front_page_id);
    echo "   Featured image ID: $thumbnail_id\n";
    
    if ($thumbnail_id) {
        $img_url = wp_get_attachment_url($thumbnail_id);
        echo "   Featured image URL: $img_url\n";
    }
    
    echo "   Kadence meta set: OK\n";
} else {
    echo "\n3. Front page not found!\n";
}

// ============================================================
// 4. NAVIGATION MENUS - Fix to match original
// ============================================================
echo "\n4. Navigation menus:\n";

// Check existing menus
$menus = wp_get_nav_menus();
foreach ($menus as $menu) {
    echo "   Menu: {$menu->name} (ID: {$menu->term_id})\n";
    $items = wp_get_nav_menu_items($menu->term_id);
    if ($items) {
        foreach ($items as $item) {
            echo "     - {$item->title} -> {$item->url}\n";
        }
    }
}

// ============================================================
// 5. Clear all caches
// ============================================================
echo "\n5. Clearing caches...\n";
wp_cache_flush();
if (function_exists('kadence_get_option')) {
    // Clear Kadence cache
    delete_transient('kadence_global_css');
    delete_transient('kadence_dynamic_css');
}
// Clear all transients
$wpdb->query("DELETE FROM {$wpdb->options} WHERE option_name LIKE '_transient_%'");
$wpdb->query("DELETE FROM {$wpdb->options} WHERE option_name LIKE '_site_transient_%'");
echo "   Caches cleared: OK\n";

// ============================================================
// 6. Verify final state
// ============================================================
echo "\n6. VERIFICATION:\n";
$mods = get_option('theme_mods_kadence', array());
echo "   content_width: " . ($mods['content_width'] ?? 'not set') . "\n";
echo "   page_title: " . (isset($mods['page_title']) ? ($mods['page_title'] ? 'true' : 'false') : 'not set') . "\n";
echo "   page_title_layout: " . ($mods['page_title_layout'] ?? 'not set') . "\n";
echo "   page_feature: " . (isset($mods['page_feature']) ? ($mods['page_feature'] ? 'true' : 'false') : 'not set') . "\n";
echo "   page_feature_position: " . ($mods['page_feature_position'] ?? 'not set') . "\n";
echo "   link_style: " . ($mods['link_style'] ?? 'not set') . "\n";
echo "   header_transparent: " . (isset($mods['header_transparent']) ? ($mods['header_transparent'] ? 'true' : 'false') : 'not set') . "\n";
echo "   palette_color_1: " . ($mods['palette_color_1'] ?? 'not set') . "\n";
echo "   custom_logo: " . ($mods['custom_logo'] ?? 'not set') . "\n";
echo "   nav_menu_locations: " . json_encode($mods['nav_menu_locations'] ?? null) . "\n";
echo "   header_image: " . ($mods['header_image'] ?? 'not set') . "\n";

echo "\n=== DONE! ===\n";
echo "Visit the site to check: " . get_option('siteurl') . "\n";
