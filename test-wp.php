<?php
// Test WordPress loading step by step
echo "Step 1: PHP works\n";
flush();

define('ABSPATH', __DIR__ . '/');
define('WPINC', 'wp-includes');

echo "Step 2: Constants defined\n";
flush();

// Load wp-config but stop before wp-settings
define('SHORTINIT', true);
require_once ABSPATH . 'wp-load.php';

echo "Step 3: wp-load done\n";
flush();

global $wpdb;
echo "Step 4: DB connected\n";
flush();

$theme = get_option('template');
echo "Step 5: Active theme = " . $theme . "\n";
flush();

$active_plugins = get_option('active_plugins');
echo "Step 6: Active plugins:\n";
foreach ($active_plugins as $p) {
    echo "  - $p\n";
}
flush();
