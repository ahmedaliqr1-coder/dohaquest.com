<?php
// Fix featured image for front page and Kadence settings - DELETE AFTER USE
require_once __DIR__ . '/wp-load.php';
global $wpdb;

echo "=== FIX FEATURED IMAGE & KADENCE SETTINGS ===\n";
$site_url = get_option('siteurl');

// Get front page ID
$front_page_id = get_option('page_on_front');
echo "Front page ID: $front_page_id\n";

// Banner attachment ID
$banner_id = 1605;
$banner_url = wp_get_attachment_url($banner_id);
echo "Banner URL: $banner_url\n";

// 1. Set featured image (thumbnail) for front page
if ($front_page_id) {
    $result = set_post_thumbnail($front_page_id, $banner_id);
    echo "1. Featured image set for page $front_page_id: " . ($result ? "SUCCESS" : "FAILED") . "\n";
    
    // Verify
    $thumb = get_post_thumbnail_id($front_page_id);
    echo "   Verified thumbnail ID: $thumb\n";
}

// 2. Also set Kadence page hero settings
// Kadence uses _kad_post_layout for page layout
// and the featured image is used as hero background when content-title-style-above is set
$kad_layout = get_post_meta($front_page_id, '_kad_post_layout', true);
echo "\n2. Current _kad_post_layout: " . json_encode($kad_layout) . "\n";

// Set Kadence page settings to show hero with featured image
// The class 'content-title-style-above' is added by Kadence when title is shown above content
$kad_settings = array(
    'layout' => 'fullwidth',
    'title' => 'show',
    'title_layout' => 'above',
    'title_height' => array('size' => 200, 'unit' => 'px'),
    'feature' => 'show',
    'feature_position' => 'behind',
);
update_post_meta($front_page_id, '_kad_post_layout', json_encode($kad_settings));
echo "   Updated _kad_post_layout\n";

// 3. Also check and set Kadence global header settings
// The header background color should be white/transparent
$kadence_global = get_option('kadence_global_settings', array());
echo "\n3. Kadence global settings: " . json_encode($kadence_global) . "\n";

// 4. Check all pages and set featured images
$pages = get_pages();
echo "\n4. All pages:\n";
foreach ($pages as $page) {
    $thumb = get_post_thumbnail_id($page->ID);
    echo "  ID={$page->ID}: '{$page->post_title}' | thumbnail: $thumb\n";
}

// 5. Verify the hero CSS will be generated
// Kadence generates: .content-title-style-above .page-hero-section .entry-hero-container-inner
// when the page has a featured image and title_layout is 'above'
echo "\n5. Checking if Kadence will generate hero CSS...\n";
$thumb_id = get_post_thumbnail_id($front_page_id);
if ($thumb_id) {
    $thumb_url = wp_get_attachment_url($thumb_id);
    echo "   Featured image URL: $thumb_url\n";
    echo "   Hero CSS will be: .content-title-style-above .page-hero-section .entry-hero-container-inner{background-image:url('$thumb_url');}\n";
} else {
    echo "   No featured image set!\n";
}

echo "\nDONE!\n";
