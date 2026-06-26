<?php
require_once(dirname(__FILE__) . '/wp-load.php');
$mods = get_option('theme_mods_kadence', array());
echo "=== THEME MODS ===\n";
foreach ($mods as $k => $v) {
    if (is_array($v)) {
        echo "$k: " . json_encode($v) . "\n";
    } else {
        echo "$k: $v\n";
    }
}

// Check page meta
$front_id = get_option('page_on_front');
echo "\n=== PAGE META (ID: $front_id) ===\n";
$meta_keys = array('_kad_post_title', '_kad_post_layout', '_kad_post_title_layout', '_kad_post_title_inner_layout', '_kad_post_feature', '_kad_post_feature_position', '_thumbnail_id');
foreach ($meta_keys as $key) {
    $val = get_post_meta($front_id, $key, true);
    echo "$key: " . var_export($val, true) . "\n";
}

// Check body classes
echo "\n=== BODY CLASSES ===\n";
$classes = get_body_class();
echo implode(' ', $classes) . "\n";
