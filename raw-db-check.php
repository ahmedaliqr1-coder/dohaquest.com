<?php
// Direct MySQL check - no WordPress cache involved
$db_host = getenv('DB_HOST') ?: getenv('WORDPRESS_DB_HOST') ?: 'localhost';
$db_user = getenv('DB_USER') ?: getenv('WORDPRESS_DB_USER') ?: 'root';
$db_pass = getenv('DB_PASSWORD') ?: getenv('WORDPRESS_DB_PASSWORD') ?: '';
$db_name = getenv('DB_NAME') ?: getenv('WORDPRESS_DB_NAME') ?: 'wordpress';

// Also try wp-config.php
if (file_exists(dirname(__FILE__) . '/wp-config.php')) {
    $config = file_get_contents(dirname(__FILE__) . '/wp-config.php');
    if (preg_match("/define\s*\(\s*'DB_HOST'\s*,\s*'([^']+)'/", $config, $m)) $db_host = $m[1];
    if (preg_match("/define\s*\(\s*'DB_USER'\s*,\s*'([^']+)'/", $config, $m)) $db_user = $m[1];
    if (preg_match("/define\s*\(\s*'DB_PASSWORD'\s*,\s*'([^']+)'/", $config, $m)) $db_pass = $m[1];
    if (preg_match("/define\s*\(\s*'DB_NAME'\s*,\s*'([^']+)'/", $config, $m)) $db_name = $m[1];
}

echo "DB: $db_host / $db_name\n\n";

$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error . "\n");
}

// Check theme_mods_kadence directly
$result = $conn->query("SELECT option_id, option_name, LENGTH(option_value) as len, option_value FROM wp_options WHERE option_name = 'theme_mods_kadence'");
if ($result && $row = $result->fetch_assoc()) {
    echo "Found theme_mods_kadence (ID: {$row['option_id']}, len: {$row['len']})\n\n";
    $unserialized = @unserialize($row['option_value']);
    if ($unserialized !== false && is_array($unserialized)) {
        echo "Keys (" . count($unserialized) . "): " . implode(', ', array_keys($unserialized)) . "\n\n";
        foreach ($unserialized as $k => $v) {
            if (is_array($v)) {
                echo "  $k: " . json_encode($v) . "\n";
            } else {
                echo "  $k: $v\n";
            }
        }
    } else {
        echo "Unserialize FAILED!\n";
        echo "Raw (first 500): " . substr($row['option_value'], 0, 500) . "\n";
    }
} else {
    echo "theme_mods_kadence NOT FOUND in wp_options!\n";
    // Check all kadence options
    $r2 = $conn->query("SELECT option_name, LENGTH(option_value) as len FROM wp_options WHERE option_name LIKE '%kadence%' OR option_name LIKE '%theme_mods%'");
    while ($row = $r2->fetch_assoc()) {
        echo "  {$row['option_name']} (len: {$row['len']})\n";
    }
}

// Check page meta
echo "\n\n=== PAGE META (ID 15) ===\n";
$r3 = $conn->query("SELECT meta_key, meta_value FROM wp_postmeta WHERE post_id = 15 AND meta_key LIKE '_kad_%' ORDER BY meta_key");
while ($row = $r3->fetch_assoc()) {
    echo "  {$row['meta_key']}: {$row['meta_value']}\n";
}

$conn->close();
