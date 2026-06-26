<?php
// Direct DB check for page_title_height
define('ABSPATH', dirname(__FILE__) . '/');
define('WPINC', 'wp-includes');

// Load wp-config to get DB credentials
$config = file_get_contents(ABSPATH . 'wp-config.php');
preg_match("/define\(\s*'DB_HOST'\s*,\s*'([^']+)'\s*\)/", $config, $host);
preg_match("/define\(\s*'DB_NAME'\s*,\s*'([^']+)'\s*\)/", $config, $name);
preg_match("/define\(\s*'DB_USER'\s*,\s*'([^']+)'\s*\)/", $config, $user);
preg_match("/define\(\s*'DB_PASSWORD'\s*,\s*'([^']+)'\s*\)/", $config, $pass);
preg_match("/\\\$table_prefix\s*=\s*'([^']+)'/", $config, $prefix);

$db = new mysqli($host[1], $user[1], $pass[1], $name[1]);
$p = $prefix[1] ?? 'wp_';

$res = $db->query("SELECT option_value FROM {$p}options WHERE option_name='theme_mods_kadence' LIMIT 1");
$row = $res->fetch_assoc();
$raw = $row['option_value'];

// Find page_title_height in serialized string
$pos = strpos($raw, 'page_title_height');
if ($pos !== false) {
    echo "RAW serialized (around page_title_height):\n";
    echo substr($raw, $pos - 5, 200) . "\n\n";
}

// Unserialize and check
$mods = unserialize($raw);
$h = $mods['page_title_height'] ?? 'NOT FOUND';
echo "page_title_height after unserialize:\n";
var_dump($h);
echo "\nJSON: " . json_encode($h) . "\n";

if (is_array($h) && isset($h['size'])) {
    echo "\nsize keys: " . implode(', ', array_keys($h['size'])) . "\n";
    echo "size[desktop]: " . ($h['size']['desktop'] ?? 'NOT FOUND') . "\n";
    echo "size[0]: " . ($h['size'][0] ?? 'NOT FOUND') . "\n";
}
