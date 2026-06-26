<?php
require_once __DIR__ . '/wp-load.php';
global $wpdb;
echo "Table prefix: " . $wpdb->prefix . "\n";
$user = get_user_by('login', 'admin');
echo "User ID: " . ($user ? $user->ID : 'NOT FOUND') . "\n";
if ($user) {
    $caps_key = $wpdb->prefix . 'capabilities';
    $caps = get_user_meta($user->ID, $caps_key, true);
    echo "Caps key: $caps_key\n";
    echo "Caps value: " . print_r($caps, true) . "\n";
    echo "Is admin: " . (user_can($user->ID, 'manage_options') ? 'YES' : 'NO') . "\n";
    
    // Also check all usermeta
    $all_meta = $wpdb->get_results($wpdb->prepare(
        "SELECT meta_key, meta_value FROM {$wpdb->usermeta} WHERE user_id = %d",
        $user->ID
    ));
    echo "All meta:\n";
    foreach ($all_meta as $m) {
        echo "  {$m->meta_key}: {$m->meta_value}\n";
    }
}
