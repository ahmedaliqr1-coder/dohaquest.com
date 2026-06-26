<?php
// One-time admin fix - DELETE THIS FILE AFTER USE
require_once __DIR__ . '/wp-load.php';

$user = get_user_by('login', 'admin');
if ($user) {
    wp_set_password('DohaQuest@2026!', $user->ID);
    $user_obj = new WP_User($user->ID);
    $user_obj->set_role('administrator');
    global $wpdb;
    $caps = serialize(['administrator' => true]);
    $wpdb->update($wpdb->usermeta, ['meta_value' => $caps], ['user_id' => $user->ID, 'meta_key' => $wpdb->prefix . 'capabilities']);
    echo "Admin fixed: password + administrator role for: " . $user->user_login;
    echo " | Roles: " . implode(', ', (new WP_User($user->ID))->roles);
} else {
    $user_id = wp_create_user('admin', 'DohaQuest@2026!', 'admin@dohaquest.com');
    if (!is_wp_error($user_id)) {
        $user = new WP_User($user_id);
        $user->set_role('administrator');
        echo "Admin user created with administrator role!";
    } else {
        echo "Error: " . $user_id->get_error_message();
    }
}
