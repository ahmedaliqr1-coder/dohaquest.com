<?php
require_once __DIR__ . '/wp-load.php';
global $wpdb, $table_prefix;

echo "=== DIAGNOSIS ===\n";
echo "wpdb->prefix: " . $wpdb->prefix . "\n";
echo "table_prefix var: " . $table_prefix . "\n";
echo "wpdb->usermeta: " . $wpdb->usermeta . "\n";

// Check ALL usermeta for user 1
$all = $wpdb->get_results("SELECT * FROM {$wpdb->usermeta} WHERE user_id = 1 ORDER BY umeta_id");
echo "\nAll usermeta for user 1:\n";
foreach ($all as $row) {
    echo "  [{$row->umeta_id}] {$row->meta_key} = {$row->meta_value}\n";
}

// Check wp_user_roles option
$roles_option = get_option($wpdb->prefix . 'user_roles');
echo "\nUser roles option key: " . $wpdb->prefix . "user_roles\n";
echo "Roles defined: " . (is_array($roles_option) ? implode(', ', array_keys($roles_option)) : 'NONE') . "\n";

// Check if administrator role exists
if (is_array($roles_option) && isset($roles_option['administrator'])) {
    echo "Administrator role: EXISTS\n";
} else {
    echo "Administrator role: MISSING!\n";
}

// Try WP_Roles
$wp_roles = new WP_Roles();
echo "WP_Roles administrators: " . (isset($wp_roles->roles['administrator']) ? 'YES' : 'NO') . "\n";

// Force user reload
clean_user_cache(1);
$user = new WP_User(1);
echo "\nAfter cache clear:\n";
echo "User roles: " . implode(', ', $user->roles) . "\n";
echo "User caps: " . print_r($user->caps, true) . "\n";
