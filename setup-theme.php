<?php
// Setup theme: register media and set theme_mods - DELETE AFTER USE
require_once __DIR__ . '/wp-load.php';
global $wpdb;

echo "=== SETUP THEME ===\n";

$site_url = get_option('siteurl');
echo "Site URL: $site_url\n";

// 1. Register logo image as attachment
$logo_file = 'wp-content/uploads/2026/04/cropped-imgi_1_LgVJIXLoS2S3dwuLKOTsG4G2o9ZeLJmZU2VFiJVc.png';
$logo_url = $site_url . '/' . $logo_file;
$logo_path = ABSPATH . $logo_file;

$logo_id = 0;
if (file_exists($logo_path)) {
    // Check if already registered
    $existing = $wpdb->get_var($wpdb->prepare(
        "SELECT ID FROM {$wpdb->posts} WHERE guid = %s AND post_type = 'attachment'",
        $logo_url
    ));
    
    if ($existing) {
        $logo_id = $existing;
        echo "1. Logo already registered: ID=$logo_id\n";
    } else {
        $attachment = array(
            'post_mime_type' => 'image/png',
            'post_title'     => 'DohaQuest Logo',
            'post_content'   => '',
            'post_status'    => 'inherit',
            'guid'           => $logo_url,
        );
        $logo_id = wp_insert_attachment($attachment, $logo_path);
        echo "1. Logo registered: ID=$logo_id\n";
        
        // Generate attachment metadata
        require_once ABSPATH . 'wp-admin/includes/image.php';
        $metadata = wp_generate_attachment_metadata($logo_id, $logo_path);
        wp_update_attachment_metadata($logo_id, $metadata);
        echo "   Metadata generated\n";
    }
} else {
    echo "1. Logo file NOT FOUND at: $logo_path\n";
}

// 2. Register header/banner image
$banner_file = 'wp-content/uploads/2025/12/itKI76mfGrrkfrHVr7b1tBxLKsy0YjFX2IemQuEz.jpg';
$banner_url = $site_url . '/' . $banner_file;
$banner_path = ABSPATH . $banner_file;

$banner_id = 0;
if (file_exists($banner_path)) {
    $existing = $wpdb->get_var($wpdb->prepare(
        "SELECT ID FROM {$wpdb->posts} WHERE guid = %s AND post_type = 'attachment'",
        $banner_url
    ));
    
    if ($existing) {
        $banner_id = $existing;
        echo "2. Banner already registered: ID=$banner_id\n";
    } else {
        $attachment = array(
            'post_mime_type' => 'image/jpeg',
            'post_title'     => 'DohaQuest Header Banner',
            'post_content'   => '',
            'post_status'    => 'inherit',
            'guid'           => $banner_url,
        );
        $banner_id = wp_insert_attachment($attachment, $banner_path);
        echo "2. Banner registered: ID=$banner_id\n";
        
        require_once ABSPATH . 'wp-admin/includes/image.php';
        $metadata = wp_generate_attachment_metadata($banner_id, $banner_path);
        wp_update_attachment_metadata($banner_id, $metadata);
        echo "   Metadata generated\n";
    }
} else {
    echo "2. Banner file NOT FOUND at: $banner_path\n";
}

// 3. Register favicon
$favicon_file = 'wp-content/uploads/2025/12/cropped-favicon-32x32.png';
$favicon_url = $site_url . '/' . $favicon_file;
$favicon_path = ABSPATH . $favicon_file;
$favicon_id = 0;

if (file_exists($favicon_path)) {
    $existing = $wpdb->get_var($wpdb->prepare(
        "SELECT ID FROM {$wpdb->posts} WHERE guid = %s AND post_type = 'attachment'",
        $favicon_url
    ));
    if (!$existing) {
        $attachment = array(
            'post_mime_type' => 'image/png',
            'post_title'     => 'DohaQuest Favicon',
            'post_content'   => '',
            'post_status'    => 'inherit',
            'guid'           => $favicon_url,
        );
        $favicon_id = wp_insert_attachment($attachment, $favicon_path);
        echo "3. Favicon registered: ID=$favicon_id\n";
    } else {
        $favicon_id = $existing;
        echo "3. Favicon already registered: ID=$favicon_id\n";
    }
}

// 4. Set theme_mods for Kadence
if ($logo_id > 0) {
    // Set custom logo
    set_theme_mod('custom_logo', $logo_id);
    echo "4. Logo set as custom_logo: ID=$logo_id\n";
    
    // Also set via wp_options for site_icon
    update_option('site_icon', $favicon_id > 0 ? $favicon_id : $logo_id);
    echo "5. Site icon set\n";
}

// 5. Set Kadence header settings with logo
$kadence_settings = get_option('kadence_global_settings', array());
echo "6. Current kadence_global_settings keys: " . json_encode(array_keys((array)$kadence_settings)) . "\n";

// 6. Verify theme_mods
$theme_mods = get_option('theme_mods_kadence');
echo "\nFinal theme_mods_kadence keys: " . json_encode(array_keys((array)$theme_mods)) . "\n";
echo "custom_logo: " . get_theme_mod('custom_logo', 'NOT SET') . "\n";

// 7. List all attachments now
$attachments = $wpdb->get_results("SELECT ID, post_title, guid FROM {$wpdb->posts} WHERE post_type='attachment' ORDER BY ID");
echo "\nAll attachments (" . count($attachments) . "):\n";
foreach ($attachments as $att) {
    echo "  ID={$att->ID}: " . basename($att->guid) . "\n";
}

echo "\nDONE!\n";
