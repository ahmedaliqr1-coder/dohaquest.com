<?php
// Simple debug - no MySQL, no WordPress loading
ini_set('display_errors', 1);
error_reporting(E_ALL);

header('Content-Type: text/plain');

echo "=== PHP Debug Info ===\n";
echo "PHP Version: " . phpversion() . "\n";
echo "Server: " . ($_SERVER['SERVER_SOFTWARE'] ?? 'unknown') . "\n";
echo "Document Root: " . ($_SERVER['DOCUMENT_ROOT'] ?? 'unknown') . "\n";
echo "Request URI: " . ($_SERVER['REQUEST_URI'] ?? 'unknown') . "\n";
echo "\n=== Environment Variables ===\n";
echo "PORT: " . (getenv('PORT') ?: 'not set') . "\n";
echo "RAILWAY_PUBLIC_DOMAIN: " . (getenv('RAILWAY_PUBLIC_DOMAIN') ?: 'not set') . "\n";
echo "MYSQLHOST: " . (getenv('MYSQLHOST') ?: 'not set') . "\n";
echo "MYSQLPORT: " . (getenv('MYSQLPORT') ?: 'not set') . "\n";
echo "MYSQLUSER: " . (getenv('MYSQLUSER') ?: 'not set') . "\n";
echo "MYSQLDATABASE: " . (getenv('MYSQLDATABASE') ?: 'not set') . "\n";
echo "\n=== File Checks ===\n";
$files = ['wp-config.php', 'wp-settings.php', 'index.php', '.htaccess', 'wp-blog-header.php'];
foreach ($files as $f) {
    echo "$f: " . (file_exists(__DIR__ . '/' . $f) ? 'EXISTS' : 'MISSING') . "\n";
}
echo "\n=== Done ===\n";
