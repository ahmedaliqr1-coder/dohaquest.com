<?php
// Fix WordPress user roles - DELETE AFTER USE
require_once __DIR__ . '/wp-load.php';
global $wpdb;

echo "=== FIXING WORDPRESS ROLES ===\n";

// Generate the correct wp_user_roles value
$roles = array(
    'administrator' => array(
        'name' => 'Administrator',
        'capabilities' => array(
            'switch_themes' => true, 'edit_themes' => true, 'activate_plugins' => true,
            'edit_plugins' => true, 'edit_users' => true, 'edit_files' => true,
            'manage_options' => true, 'moderate_comments' => true, 'manage_categories' => true,
            'manage_links' => true, 'upload_files' => true, 'import' => true,
            'unfiltered_html' => true, 'edit_posts' => true, 'edit_others_posts' => true,
            'edit_published_posts' => true, 'publish_posts' => true, 'edit_pages' => true,
            'read' => true, 'level_10' => true, 'level_9' => true, 'level_8' => true,
            'level_7' => true, 'level_6' => true, 'level_5' => true, 'level_4' => true,
            'level_3' => true, 'level_2' => true, 'level_1' => true, 'level_0' => true,
            'edit_others_pages' => true, 'edit_published_pages' => true, 'publish_pages' => true,
            'delete_pages' => true, 'delete_others_pages' => true, 'delete_published_pages' => true,
            'delete_posts' => true, 'delete_others_posts' => true, 'delete_published_posts' => true,
            'delete_private_posts' => true, 'edit_private_posts' => true, 'read_private_posts' => true,
            'delete_private_pages' => true, 'edit_private_pages' => true, 'read_private_pages' => true,
            'delete_users' => true, 'create_users' => true, 'unfiltered_upload' => true,
            'edit_dashboard' => true, 'update_plugins' => true, 'delete_plugins' => true,
            'install_plugins' => true, 'update_themes' => true, 'install_themes' => true,
            'update_core' => true, 'list_users' => true, 'remove_users' => true,
            'promote_users' => true, 'edit_theme_options' => true, 'delete_themes' => true,
            'export' => true
        )
    ),
    'editor' => array(
        'name' => 'Editor',
        'capabilities' => array(
            'moderate_comments' => true, 'manage_categories' => true, 'manage_links' => true,
            'upload_files' => true, 'edit_posts' => true, 'edit_others_posts' => true,
            'edit_published_posts' => true, 'publish_posts' => true, 'edit_pages' => true,
            'read' => true, 'level_7' => true, 'level_6' => true, 'level_5' => true,
            'level_4' => true, 'level_3' => true, 'level_2' => true, 'level_1' => true,
            'level_0' => true, 'edit_others_pages' => true, 'edit_published_pages' => true,
            'publish_pages' => true, 'delete_pages' => true, 'delete_others_pages' => true,
            'delete_published_pages' => true, 'delete_posts' => true, 'delete_others_posts' => true,
            'delete_published_posts' => true, 'delete_private_posts' => true,
            'edit_private_posts' => true, 'read_private_posts' => true,
            'delete_private_pages' => true, 'edit_private_pages' => true, 'read_private_pages' => true
        )
    ),
    'author' => array(
        'name' => 'Author',
        'capabilities' => array(
            'upload_files' => true, 'edit_posts' => true, 'edit_published_posts' => true,
            'publish_posts' => true, 'read' => true, 'level_2' => true, 'level_1' => true,
            'level_0' => true, 'delete_posts' => true, 'delete_published_posts' => true
        )
    ),
    'contributor' => array(
        'name' => 'Contributor',
        'capabilities' => array(
            'edit_posts' => true, 'read' => true, 'level_1' => true, 'level_0' => true,
            'delete_posts' => true
        )
    ),
    'subscriber' => array(
        'name' => 'Subscriber',
        'capabilities' => array('read' => true, 'level_0' => true)
    )
);

$roles_key = $wpdb->prefix . 'user_roles';
$roles_value = serialize($roles);

// Update or insert wp_user_roles
$existing = $wpdb->get_var($wpdb->prepare(
    "SELECT option_id FROM {$wpdb->options} WHERE option_name = %s",
    $roles_key
));

if ($existing) {
    $result = $wpdb->update(
        $wpdb->options,
        array('option_value' => $roles_value),
        array('option_name' => $roles_key)
    );
    echo "1. Updated existing wp_user_roles: " . ($result !== false ? 'OK' : 'FAILED') . "\n";
} else {
    $result = $wpdb->insert(
        $wpdb->options,
        array('option_name' => $roles_key, 'option_value' => $roles_value, 'autoload' => 'yes')
    );
    echo "1. Inserted new wp_user_roles: " . ($result !== false ? 'OK' : 'FAILED') . "\n";
}

// Clear cache
wp_cache_flush();
delete_option($roles_key); // Force reload from DB
wp_cache_flush();

// Verify
$stored = get_option($roles_key);
echo "2. Roles stored: " . (is_array($stored) ? implode(', ', array_keys($stored)) : 'NONE') . "\n";

// Now verify admin user
clean_user_cache(1);
$user = new WP_User(1);
echo "3. Admin roles: " . implode(', ', $user->roles) . "\n";
echo "4. Is admin: " . (user_can(1, 'manage_options') ? 'YES' : 'NO') . "\n";
echo "DONE!\n";
