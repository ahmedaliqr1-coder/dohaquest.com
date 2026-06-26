<?php
require_once(dirname(__FILE__) . '/wp-load.php');

global $wpdb;

echo "=== DB DEBUG ===\n";
echo "Table prefix: " . $wpdb->prefix . "\n";
echo "Options table: " . $wpdb->options . "\n\n";

// Direct MySQL query for theme_mods_kadence
$result = $wpdb->get_row("SELECT option_id, option_name, LENGTH(option_value) as val_len, LEFT(option_value, 200) as val_preview FROM {$wpdb->options} WHERE option_name = 'theme_mods_kadence'");
if ($result) {
    echo "Found theme_mods_kadence:\n";
    echo "  option_id: " . $result->option_id . "\n";
    echo "  value length: " . $result->val_len . "\n";
    echo "  value preview: " . $result->val_preview . "\n\n";
    
    // Try to unserialize
    $full_val = $wpdb->get_var("SELECT option_value FROM {$wpdb->options} WHERE option_name = 'theme_mods_kadence'");
    $unserialized = @unserialize($full_val);
    if ($unserialized !== false) {
        echo "Unserialized successfully! Keys: " . implode(', ', array_keys($unserialized)) . "\n";
    } else {
        echo "Unserialize FAILED! Raw value:\n" . $full_val . "\n";
    }
} else {
    echo "theme_mods_kadence NOT FOUND in database!\n";
    
    // Check all options with 'kadence' in name
    $kadence_opts = $wpdb->get_results("SELECT option_name, LENGTH(option_value) as val_len FROM {$wpdb->options} WHERE option_name LIKE '%kadence%' OR option_name LIKE '%theme_mods%'");
    echo "\nAll kadence/theme_mods options:\n";
    foreach ($kadence_opts as $opt) {
        echo "  " . $opt->option_name . " (len: " . $opt->val_len . ")\n";
    }
}

echo "\n=== WP_CACHE STATUS ===\n";
echo "WP_CACHE defined: " . (defined('WP_CACHE') ? (WP_CACHE ? 'true' : 'false') : 'not defined') . "\n";
echo "Object cache: " . (wp_using_ext_object_cache() ? 'external' : 'internal') . "\n";

echo "\n=== get_option test ===\n";
// Force bypass cache
wp_cache_delete('theme_mods_kadence', 'options');
$mods = get_option('theme_mods_kadence', array());
echo "Keys after cache delete: " . implode(', ', array_keys($mods)) . "\n";
echo "Count: " . count($mods) . "\n";
