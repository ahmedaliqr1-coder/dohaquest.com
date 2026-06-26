<?php
require_once __DIR__ . '/wp-load.php';
global $wpdb;

echo "=== MEDIA IDs ===\n";

// Find logo image
$logo = $wpdb->get_row("SELECT ID, guid, post_title FROM {$wpdb->posts} WHERE post_type='attachment' AND (guid LIKE '%cropped-imgi_1_LgVJIX%' OR post_title LIKE '%logo%' OR post_title LIKE '%cropped-imgi_1%') LIMIT 1");
echo "Logo: " . ($logo ? "ID={$logo->ID} | {$logo->guid}" : "NOT FOUND") . "\n";

// Find header/banner image
$banner = $wpdb->get_row("SELECT ID, guid, post_title FROM {$wpdb->posts} WHERE post_type='attachment' AND guid LIKE '%itKI76mf%' LIMIT 1");
echo "Banner: " . ($banner ? "ID={$banner->ID} | {$banner->guid}" : "NOT FOUND") . "\n";

// List all attachments
$attachments = $wpdb->get_results("SELECT ID, guid, post_title FROM {$wpdb->posts} WHERE post_type='attachment' ORDER BY ID LIMIT 30");
echo "\nAll attachments:\n";
foreach ($attachments as $att) {
    echo "  ID={$att->ID}: {$att->post_title} | " . basename($att->guid) . "\n";
}

// Get current theme_mods
$theme_mods = get_option('theme_mods_kadence');
echo "\nCurrent theme_mods_kadence: " . ($theme_mods ? json_encode(array_keys((array)$theme_mods)) : "NONE") . "\n";
