<?php
// Fix Kadence page meta for hero display - DELETE AFTER USE
require_once __DIR__ . '/wp-load.php';
global $wpdb;

echo "=== FIX KADENCE PAGE META ===\n";

$front_page_id = get_option('page_on_front');
echo "Front page ID: $front_page_id\n";

if ($front_page_id) {
    // Set _kad_post_title = 'above' to show title above hero section
    update_post_meta($front_page_id, '_kad_post_title', 'above');
    echo "1. _kad_post_title set to 'above'\n";
    
    // Set _kad_post_feature = 'above' to use featured image as hero background
    update_post_meta($front_page_id, '_kad_post_feature', 'above');
    echo "2. _kad_post_feature set to 'above'\n";
    
    // Set _kad_post_feature_position = 'behind' to show image behind title
    update_post_meta($front_page_id, '_kad_post_feature_position', 'behind');
    echo "3. _kad_post_feature_position set to 'behind'\n";
    
    // Set layout to fullwidth
    update_post_meta($front_page_id, '_kad_post_layout', 'fullwidth');
    echo "4. _kad_post_layout set to 'fullwidth'\n";
    
    // Verify
    echo "\nVerification:\n";
    echo "  _kad_post_title: " . get_post_meta($front_page_id, '_kad_post_title', true) . "\n";
    echo "  _kad_post_feature: " . get_post_meta($front_page_id, '_kad_post_feature', true) . "\n";
    echo "  _kad_post_feature_position: " . get_post_meta($front_page_id, '_kad_post_feature_position', true) . "\n";
    echo "  _kad_post_layout: " . get_post_meta($front_page_id, '_kad_post_layout', true) . "\n";
    echo "  thumbnail ID: " . get_post_thumbnail_id($front_page_id) . "\n";
}

// Also check what Kadence global settings say for page_title_layout
$page_title_layout = kadence()->option('page_title_layout');
echo "\nKadence global page_title_layout: " . json_encode($page_title_layout) . "\n";

// Set global page title layout to 'above' as well
set_theme_mod('kadence_settings', array_merge(
    (array) get_theme_mod('kadence_settings', array()),
    array('page_title_layout' => 'above')
));

echo "DONE!\n";
