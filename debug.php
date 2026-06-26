<?php
// Debug file - shows PHP errors and WordPress status
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

echo "<h1>PHP Debug</h1>";
echo "<p>PHP Version: " . phpversion() . "</p>";
echo "<p>ABSPATH: " . __DIR__ . "/</p>";

// Test database connection
$db_host = getenv('WORDPRESS_DB_HOST') ?: (getenv('MYSQLHOST') . ':' . (getenv('MYSQLPORT') ?: '3306'));
$db_user = getenv('WORDPRESS_DB_USER') ?: getenv('MYSQLUSER') ?: 'root';
$db_pass = getenv('WORDPRESS_DB_PASSWORD') ?: getenv('MYSQLPASSWORD') ?: '';
$db_name = getenv('WORDPRESS_DB_NAME') ?: getenv('MYSQLDATABASE') ?: 'railway';

echo "<h2>DB Config</h2>";
echo "<p>Host: $db_host</p>";
echo "<p>User: $db_user</p>";
echo "<p>DB: $db_name</p>";

// Test MySQL connection
$parts = explode(':', $db_host);
$host = $parts[0];
$port = isset($parts[1]) ? (int)$parts[1] : 3306;

$conn = new mysqli($host, $db_user, $db_pass, $db_name, $port);
if ($conn->connect_error) {
    echo "<p style='color:red'>MySQL Error: " . $conn->connect_error . "</p>";
} else {
    echo "<p style='color:green'>MySQL Connected!</p>";
    
    // Check siteurl and home
    $result = $conn->query("SELECT option_name, option_value FROM wp_options WHERE option_name IN ('siteurl', 'home')");
    if ($result) {
        echo "<h2>WordPress URLs</h2>";
        while ($row = $result->fetch_assoc()) {
            echo "<p>" . $row['option_name'] . ": " . $row['option_value'] . "</p>";
        }
    }
    $conn->close();
}

// Try loading WordPress
echo "<h2>WordPress Load Test</h2>";
try {
    define('ABSPATH', __DIR__ . '/');
    define('WPINC', 'wp-includes');
    // Just check if wp-settings.php exists
    if (file_exists(ABSPATH . 'wp-settings.php')) {
        echo "<p style='color:green'>wp-settings.php found</p>";
    } else {
        echo "<p style='color:red'>wp-settings.php NOT found</p>";
    }
    if (file_exists(ABSPATH . 'wp-config.php')) {
        echo "<p style='color:green'>wp-config.php found</p>";
    } else {
        echo "<p style='color:red'>wp-config.php NOT found</p>";
    }
} catch (Exception $e) {
    echo "<p style='color:red'>Exception: " . $e->getMessage() . "</p>";
}

echo "<h2>Environment</h2>";
echo "<p>RAILWAY_PUBLIC_DOMAIN: " . (getenv('RAILWAY_PUBLIC_DOMAIN') ?: 'not set') . "</p>";
echo "<p>PORT: " . (getenv('PORT') ?: 'not set') . "</p>";
