<?php
// Admin fix - DELETE THIS FILE AFTER USE
require_once __DIR__ . '/wp-load.php';
global $wpdb;

$user_id = 1;

// 1. Reset password
$new_pass = wp_hash_password('DohaQuest@2026!');
$wpdb->update($wpdb->users, ['user_pass' => $new_pass], ['ID' => $user_id]);
echo "1. Password updated\n";

// 2. Delete ALL existing capabilities and user_level entries (clean slate)
$wpdb->delete($wpdb->usermeta, ['user_id' => $user_id, 'meta_key' => $wpdb->prefix . 'capabilities']);
$wpdb->delete($wpdb->usermeta, ['user_id' => $user_id, 'meta_key' => $wpdb->prefix . 'user_level']);
echo "2. Deleted old caps and user_level\n";

// 3. Insert fresh capabilities
$wpdb->insert($wpdb->usermeta, [
    'user_id' => $user_id,
    'meta_key' => $wpdb->prefix . 'capabilities',
    'meta_value' => serialize(['administrator' => true])
]);
echo "3. Inserted fresh capabilities\n";

// 4. Insert user_level = 10
$wpdb->insert($wpdb->usermeta, [
    'user_id' => $user_id,
    'meta_key' => $wpdb->prefix . 'user_level',
    'meta_value' => '10'
]);
echo "4. Inserted user_level = 10\n";

// 5. Clear WordPress object cache
wp_cache_flush();
echo "5. Cache flushed\n";

// 6. Verify
$user = new WP_User($user_id);
echo "6. User roles: " . implode(', ', $user->roles) . "\n";
echo "7. Is admin (manage_options): " . (user_can($user_id, 'manage_options') ? 'YES' : 'NO') . "\n";

// 8. Check raw DB
$caps = $wpdb->get_var($wpdb->prepare(
    "SELECT meta_value FROM {$wpdb->usermeta} WHERE user_id = %d AND meta_key = %s",
    $user_id, $wpdb->prefix . 'capabilities'
));
echo "8. Raw DB caps: $caps\n";
echo "DONE!";
