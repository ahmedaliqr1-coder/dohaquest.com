<?php
// One-time password reset - DELETE THIS FILE AFTER USE
require_once __DIR__ . '/wp-load.php';

$user = get_user_by('login', 'admin');
if ($user) {
    wp_set_password('DohaQuest@2026!', $user->ID);
    echo "Password reset successfully for user: " . $user->user_login;
} else {
    // Create admin user
    $user_id = wp_create_user('admin', 'DohaQuest@2026!', 'admin@dohaquest.com');
    if (!is_wp_error($user_id)) {
        $user = new WP_User($user_id);
        $user->set_role('administrator');
        echo "Admin user created successfully!";
    } else {
        echo "Error: " . $user_id->get_error_message();
    }
}
