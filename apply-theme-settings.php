<?php
/**
 * Apply Kadence Theme Settings from Original Site
 * Extracted from: bookings.dohaquest.com
 */

define('ABSPATH', dirname(__FILE__) . '/');
define('WPINC', 'wp-includes');

// Load WordPress
require_once(dirname(__FILE__) . '/wp-load.php');

echo "=== APPLYING KADENCE THEME SETTINGS ===\n";
echo "Site URL: " . get_option('siteurl') . "\n\n";

// ============================================================
// 1. KADENCE GLOBAL SETTINGS (palette colors, typography, etc.)
// ============================================================
$kadence_global = array(
    'palette' => array(
        array('color' => '#510c76', 'slug' => 'palette1', 'name' => 'Palette Color 1'),
        array('color' => '#215387', 'slug' => 'palette2', 'name' => 'Palette Color 2'),
        array('color' => '#1A202C', 'slug' => 'palette3', 'name' => 'Palette Color 3'),
        array('color' => '#2D3748', 'slug' => 'palette4', 'name' => 'Palette Color 4'),
        array('color' => '#4A5568', 'slug' => 'palette5', 'name' => 'Palette Color 5'),
        array('color' => '#718096', 'slug' => 'palette6', 'name' => 'Palette Color 6'),
        array('color' => '#EDF2F7', 'slug' => 'palette7', 'name' => 'Palette Color 7'),
        array('color' => '#F7FAFC', 'slug' => 'palette8', 'name' => 'Palette Color 8'),
        array('color' => '#ffffff', 'slug' => 'palette9', 'name' => 'Palette Color 9'),
    ),
);

// Add 'active' key required by Kadence palette_option()
$kadence_global['active'] = 'palette';
// Delete and re-insert kadence_global_palette (CORRECT option name)
$wpdb->query("DELETE FROM {$wpdb->options} WHERE option_name = 'kadence_global_palette'");
$result = $wpdb->insert($wpdb->options, array(
    'option_name' => 'kadence_global_palette',
    'option_value' => wp_json_encode($kadence_global),
    'autoload' => 'yes'
));
echo "1. kadence_global_palette: " . ($result !== false ? "OK" : "FAILED: " . $wpdb->last_error) . "\n";

// ============================================================
// 2. THEME MODS - Complete settings from original site
// ============================================================

// Get current theme mods (preserve custom_logo, nav_menu_locations, header_image)
$theme_mods = get_option('theme_mods_kadence', array());
if (!is_array($theme_mods)) $theme_mods = array();

// Apply all settings from original site CSS analysis
$new_mods = array(
    // Content width: normal (not fullwidth)
    'content_width' => 'normal',
    
    // Content style: boxed
    'content_style' => 'boxed',
    
    // Link style: no-underline
    'link_style' => 'no-underline',
    // Link color style (this is what Kadence uses for body class 'link-style-*')
    'link_color' => array(
        'highlight'      => 'palette1',
        'highlight-alt'  => 'palette2',
        'highlight-alt2' => 'palette9',
        'style'          => 'no-underline',
    ),
    
    // Page title settings
    'page_title' => true,
    'page_title_layout' => 'above',
    'page_title_inner_layout' => 'fullwidth',
    'page_title_height' => array(
        'size' => array('mobile' => '', 'tablet' => '', 'desktop' => 380),
        'unit' => array('mobile' => 'px', 'tablet' => 'px', 'desktop' => 'px'),
    ),
    'page_title_align' => 'center',
    'page_title_elements' => array('title'),
    
    // Page title color: white (palette9)
    'page_title_color' => array(
        'color' => '',
        'palette' => 'palette9',
    ),
    
    // Featured image: show, position behind
    'page_feature' => false,
    'page_feature_position' => 'behind',
    'page_feature_ratio' => 'inherit',
    
    // Global colors
    'palette_color_1' => '#510c76',
    'palette_color_2' => '#215387',
    'palette_color_3' => '#1A202C',
    'palette_color_4' => '#2D3748',
    'palette_color_5' => '#4A5568',
    'palette_color_6' => '#718096',
    'palette_color_7' => '#EDF2F7',
    'palette_color_8' => '#F7FAFC',
    'palette_color_9' => '#ffffff',
    
    // Header settings
    'header_main_height' => array(
        'size' => array(60, '', ''),
        'unit' => array('px', 'px', 'px'),
    ),
    
    // Transparent header (important for hero effect)
    'transparent_header_enable' => true,
    'transparent_header_page' => false,
    'transparent_header_device' => array('desktop' => true, 'mobile' => true),
    
    // Vertical padding
    'content_vertical_padding' => 'show',
    
    // Footer on bottom
    'footer_on_bottom' => true,
);

// Merge with existing mods (preserve custom_logo, nav_menu_locations, header_image)
foreach ($new_mods as $key => $value) {
    $theme_mods[$key] = $value;
}

// Force update by deleting and re-inserting
$wpdb->query("DELETE FROM {$wpdb->options} WHERE option_name = 'theme_mods_kadence'");
$result = $wpdb->insert($wpdb->options, array(
    'option_name' => 'theme_mods_kadence',
    'option_value' => serialize($theme_mods),
    'autoload' => 'yes'
));
echo "2. theme_mods_kadence: " . ($result !== false ? "OK (inserted fresh)" : "FAILED: " . $wpdb->last_error) . "\n";
echo "   Keys set: " . implode(', ', array_keys($new_mods)) . "\n";

// ============================================================
// 3. PAGE SETTINGS - Kadence page meta for front page
// ============================================================
$front_page_id = get_option('page_on_front');
if (!$front_page_id) {
    // Find the Tickets page
    $pages = get_posts(array('post_type' => 'page', 'post_status' => 'publish', 'numberposts' => -1));
    foreach ($pages as $page) {
        if ($page->post_title === 'Tickets' || $page->ID == 15) {
            $front_page_id = $page->ID;
            break;
        }
    }
}

if ($front_page_id) {
    echo "\n3. Front page ID: $front_page_id\n";
    
    // Set Kadence page meta
    update_post_meta($front_page_id, '_kad_post_title', 'show');
    update_post_meta($front_page_id, '_kad_post_layout', 'default');
    update_post_meta($front_page_id, '_kad_post_title_layout', 'above');
    update_post_meta($front_page_id, '_kad_post_title_inner_layout', 'fullwidth');
    update_post_meta($front_page_id, '_kad_post_title_height', json_encode(array('size' => array('mobile' => '', 'tablet' => '', 'desktop' => 380), 'unit' => array('desktop' => 'px', 'tablet' => 'px', 'mobile' => 'px'))));
    update_post_meta($front_page_id, '_kad_post_title_align', 'center');
    update_post_meta($front_page_id, '_kad_post_feature', 'hide');
    update_post_meta($front_page_id, '_kad_post_feature_position', 'behind');
    update_post_meta($front_page_id, '_kad_post_vertical_padding', 'show');
    update_post_meta($front_page_id, '_kad_post_transparent', 'enable');  // Force transparent header on this page
    
    // Verify featured image
    $thumbnail_id = get_post_thumbnail_id($front_page_id);
    echo "   Featured image ID: $thumbnail_id\n";
    
    if ($thumbnail_id) {
        $img_url = wp_get_attachment_url($thumbnail_id);
        echo "   Featured image URL: $img_url\n";
    }
    
    echo "   Kadence meta set: OK\n";
} else {
    echo "\n3. Front page not found!\n";
}

// ============================================================
// 4. NAVIGATION MENUS - Fix to match original
// ============================================================
echo "\n4. Navigation menus:\n";

// Check existing menus
$menus = wp_get_nav_menus();
foreach ($menus as $menu) {
    echo "   Menu: {$menu->name} (ID: {$menu->term_id})\n";
    $items = wp_get_nav_menu_items($menu->term_id);
    if ($items) {
        foreach ($items as $item) {
            echo "     - {$item->title} -> {$item->url}\n";
        }
    }
}

// ============================================================
// 5. Additional CSS - WPOS Plugin Styles + Font Awesome
// ============================================================
echo "\n5. Adding custom CSS for WPOS plugin...\n";

// The WPOS plugin CSS is not loading in Railway because the plugin files
// may not be registered properly. We add it as WordPress additional_css.
$wpos_css = '
/* WPOS Plugin CSS Variables */
:root {
    --wpos-light-gray-color: #f2f2f2;
    --wpos-nine-color: #999999;
    --wpos-light-black-color: #525252;
    --wpos-light-bg-color: #eeebe4;
    --wpos-black-clr: #000000;
    --wpos-white-clr: #ffffff;
    --wpos-green-clr: #38aa4a;
    --wpos-blue-clr: #510c76;
    --wpos-violet-clr: #520B75;
    --wpos-violet-hvr-clr: #6e1798;
    --wpos-yellow-clr: #ffc107;
    --wpos-light-sky: #e5e6f5;
}
/* WPOS Breadcrumb (Category Filter) CSS */
.wpos-wc-bw-bkn-wrap ul {display: flex; list-style: none; gap: 20px; padding: 0; margin: 0; flex-wrap: wrap;}
.wpos-wc-bw-bkn-wrap .active a, .wpos-wc-bw-bkn-wrap ul li a:hover{border-bottom: 2px solid; padding-bottom: 6px;}
.wpos-wc-bw-bkn-wrap .wpos-wc-bw-icon-left{margin: 0px 6px 0 0; display: inline-block; position: relative;}
.wpos-wc-bw-bkn-wrap .wpos-wc-bw-icon-right{margin:0 0 0 6px; display: inline-block; position: relative; top: 1px;}
.wpos-wc-bw-bkn a{color: var(--wpos-nine-color);}
.wpos-wc-bw-bkn.active a, .wpos-wc-bw-bkn a:hover{color: var(--wpos-blue-clr);}
.wpos-wc-bw-bkn .fa-bars{top: 1px;}
.wpos-wc-bw-bkn a{cursor: default; font-family: Montserrat, sans-serif;}
.wpos-wc-bw-bkn-link a{cursor: pointer;}
.wpos-wc-bw-bkn-wrap {width: 100%;}
/* WPOS Product Category Card CSS */
.wpos-wc-bw-product-cat.wpos-wc-bw-product-pcat{position: relative; margin-bottom: 30px; box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1); transition: background 0.3s, border 0.3s, border-radius 0.3s, box-shadow 0.3s; border-radius: 15px 15px 15px 15px;}
.wpos-wc-bw-product-pcat .wpos-wc-bw-product-cat-list{display: flex; align-items: center;}
.wpos-wc-bw-product-pcat .wpos-wc-bw-cat-img-wrp{flex-basis: 35%;}
.wpos-wc-bw-cat-cnt-wrp{flex-basis: 65%;}
.wpos-wc-bw-cat-img-inr{position: relative;}
.wpos-wc-bw-cat-img{position: relative; max-width: 100%; object-fit: cover; z-index: 2; min-height: 240px;}
.wpos-wc-bw-product-pcat .wpos-wc-bw-cat-img{border-radius: 12px 0px 0px 12px;}
.wpos-wc-bw-cat-cnt-wrp{padding: 10px 30px;}
.wpos-wc-bw-product-pcat .wpos-wc-bw-has-cat-img .wpos-wc-bw-cat-cnt-wrp{flex-basis: 65%;}
.wpos-wc-bw-cat-ttl, .wpos-wc-bw-cat-ttl a{font-family: Roboto Condensed, sans-serif; color: var(--wpos-blue-clr); font-size: 28px; line-height: 40px;}
.wpos-wc-bw-product-pcat .wpos-wc-bw-cat-ttl{margin-bottom: 15px;}
.wpos-wc-bw-product-cat:last-child {margin-bottom: 0;}
.mwbook-book-btn{display: inline-block; background-color: var(--wpos-violet-clr); font-family: Montserrat, sans-serif; font-size: 16px; color: #FFFFFF !important; border-style: solid; border-width: 1px 1px 1px 1px; border-color: var(--wpos-violet-clr); border-radius: 10px; padding: 15px 20px; line-height: normal;}
.mwbook-book-btn:hover{background-color: var(--wpos-violet-hvr-clr); border-color: var(--wpos-violet-hvr-clr);}
/* Step timer wrapper */
.wpos-wc-bw-step-timer-wrp{margin: 0 0 30px 0;}
';

// Save as WordPress additional_css (used by wp_add_inline_style)
$existing_css = get_option('wp_css', '');
// Check if already added
if (strpos($existing_css, 'wpos-wc-bw-bkn-wrap') === false) {
    $new_css = $existing_css . "\n" . $wpos_css;
    update_option('wp_css', $new_css);
    echo "   Custom CSS added: OK\n";
} else {
    // Update existing
    update_option('wp_css', $wpos_css);
    echo "   Custom CSS updated: OK\n";
}

// Also add Font Awesome via wp_head hook - we'll do this via a mu-plugin
// Create mu-plugin to load Font Awesome
$mu_plugin_dir = WP_CONTENT_DIR . '/mu-plugins';
if (!is_dir($mu_plugin_dir)) {
    mkdir($mu_plugin_dir, 0755, true);
}
$fa_plugin = $mu_plugin_dir . '/load-fontawesome.php';
$fa_content = '<?php
/**
 * Load Font Awesome for WPOS plugin icons
 */
add_action("wp_enqueue_scripts", function() {
    wp_enqueue_style(
        "font-awesome-6",
        "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css",
        array(),
        "6.5.0"
    );
    // Also enqueue WPOS plugin CSS if plugin exists
    $wpos_css = WP_CONTENT_DIR . "/plugins/wpos-booking-and-wallet/assets/css/wpos-wc-bw-public.css";
    if (file_exists($wpos_css)) {
        wp_enqueue_style(
            "wpos-wc-bw-public",
            plugins_url("wpos-booking-and-wallet/assets/css/wpos-wc-bw-public.css"),
            array(),
            "1.0.2"
        );
    }
});
';
file_put_contents($fa_plugin, $fa_content);
echo "   Font Awesome mu-plugin created: OK\n";

// ============================================================
// 6. Clear all caches
// ============================================================
echo "\n6. Clearing caches...\n";
wp_cache_flush();
if (function_exists('kadence_get_option')) {
    // Clear Kadence cache
    delete_transient('kadence_global_css');
    delete_transient('kadence_dynamic_css');
}
// Clear all transients
$wpdb->query("DELETE FROM {$wpdb->options} WHERE option_name LIKE '_transient_%'");
$wpdb->query("DELETE FROM {$wpdb->options} WHERE option_name LIKE '_site_transient_%'");
echo "   Caches cleared: OK\n";

// ============================================================
// 6. Verify final state
// ============================================================
echo "\n6. VERIFICATION:\n";
$mods = get_option('theme_mods_kadence', array());
echo "   content_width: " . ($mods['content_width'] ?? 'not set') . "\n";
echo "   page_title_height: " . json_encode($mods['page_title_height'] ?? 'not set') . "\n";
echo "   page_title_featured_image: " . ($mods['page_title_featured_image'] ?? 'not set') . "\n";
echo "   page_title: " . (isset($mods['page_title']) ? ($mods['page_title'] ? 'true' : 'false') : 'not set') . "\n";
echo "   page_title_layout: " . ($mods['page_title_layout'] ?? 'not set') . "\n";
echo "   page_feature: " . (isset($mods['page_feature']) ? ($mods['page_feature'] ? 'true' : 'false') : 'not set') . "\n";
echo "   page_feature_position: " . ($mods['page_feature_position'] ?? 'not set') . "\n";
echo "   link_style: " . ($mods['link_style'] ?? 'not set') . "\n";
echo "   header_transparent: " . (isset($mods['header_transparent']) ? ($mods['header_transparent'] ? 'true' : 'false') : 'not set') . "\n";
echo "   palette_color_1: " . ($mods['palette_color_1'] ?? 'not set') . "\n";
echo "   custom_logo: " . ($mods['custom_logo'] ?? 'not set') . "\n";
echo "   nav_menu_locations: " . json_encode($mods['nav_menu_locations'] ?? null) . "\n";
echo "   header_image: " . ($mods['header_image'] ?? 'not set') . "\n";

echo "\n=== DONE! ===\n";
echo "Visit the site to check: " . get_option('siteurl') . "\n";
