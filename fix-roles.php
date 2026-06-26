<?php
// Fix WordPress user roles - DELETE AFTER USE
require_once __DIR__ . '/wp-load.php';
global $wpdb;

echo "=== FIXING WORDPRESS ROLES ===\n";

// 1. Populate wp_user_roles by running WordPress role setup
// This is what wp_install_defaults() does
require_once ABSPATH . 'wp-admin/includes/schema.php';

// Populate default roles
populate_roles();
echo "1. Roles populated\n";

// 2. Verify roles exist now
$roles = get_option($wpdb->prefix . 'user_roles');
echo "2. Roles defined: " . (is_array($roles) ? implode(', ', array_keys($roles)) : 'NONE') . "\n";

// 3. Clear user cache and reload
clean_user_cache(1);
wp_cache_flush();

// 4. Verify admin user
$user = new WP_User(1);
echo "3. User roles: " . implode(', ', $user->roles) . "\n";
echo "4. Is admin: " . (user_can(1, 'manage_options') ? 'YES' : 'NO') . "\n";

echo "\nDONE! Now try wp-admin.\n";
