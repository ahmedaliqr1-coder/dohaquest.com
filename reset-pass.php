<?php
// One-time admin fix - DELETE THIS FILE AFTER USE
define('SHORTINIT', false);
require_once __DIR__ . '/wp-load.php';

global $wpdb;

// Get admin user
$user = $wpdb->get_row("SELECT * FROM {$wpdb->users} WHERE user_login = 'admin' LIMIT 1");
if (!$user) {
    echo "No admin user found!";
    exit;
}

$user_id = $user->ID;
echo "Found user ID: $user_id\n";

// Reset password using MD5 hash (WordPress uses phpass but we can use wp_hash_password)
$new_pass = wp_hash_password('DohaQuest@2026!');
$wpdb->update($wpdb->users, ['user_pass' => $new_pass], ['ID' => $user_id]);
echo "Password updated\n";

// Set administrator capabilities directly in usermeta
$caps_key = $wpdb->prefix . 'capabilities';
$existing = $wpdb->get_var($wpdb->prepare(
    "SELECT meta_value FROM {$wpdb->usermeta} WHERE user_id = %d AND meta_key = %s",
    $user_id, $caps_key
));
echo "Existing caps: $existing\n";

$new_caps = serialize(['administrator' => true]);
if ($existing) {
    $wpdb->update($wpdb->usermeta, ['meta_value' => $new_caps], ['user_id' => $user_id, 'meta_key' => $caps_key]);
    echo "Updated caps to administrator\n";
} else {
    $wpdb->insert($wpdb->usermeta, ['user_id' => $user_id, 'meta_key' => $caps_key, 'meta_value' => $new_caps]);
    echo "Inserted caps as administrator\n";
}

// Also set user_level
$level_key = $wpdb->prefix . 'user_level';
$wpdb->replace($wpdb->usermeta, ['user_id' => $user_id, 'meta_key' => $level_key, 'meta_value' => '10']);
echo "Set user_level to 10\n";

// Verify
$verify = $wpdb->get_var($wpdb->prepare(
    "SELECT meta_value FROM {$wpdb->usermeta} WHERE user_id = %d AND meta_key = %s",
    $user_id, $caps_key
));
echo "Final caps: $verify\n";
echo "DONE! Login with admin / DohaQuest@2026!";
