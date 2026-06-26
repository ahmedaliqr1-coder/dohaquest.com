<?php
/**
 * WordPress Configuration - DohaQuest Bookings
 * Railway Deployment
 */

// ** Database Settings ** //
// Build DB_HOST correctly - handle host:port format
$_db_host = getenv('WORDPRESS_DB_HOST') ?: '';
if ( empty($_db_host) ) {
    $_mysql_host = getenv('MYSQLHOST') ?: 'mysql.railway.internal';
    $_mysql_port = getenv('MYSQLPORT') ?: '3306';
    $_db_host = $_mysql_host . ':' . $_mysql_port;
}

define( 'DB_NAME',     getenv('WORDPRESS_DB_NAME')     ?: getenv('MYSQLDATABASE') ?: 'railway' );
define( 'DB_USER',     getenv('WORDPRESS_DB_USER')     ?: getenv('MYSQLUSER')     ?: 'root' );
define( 'DB_PASSWORD', getenv('WORDPRESS_DB_PASSWORD') ?: getenv('MYSQLPASSWORD') ?: '' );
define( 'DB_HOST',     $_db_host );
define( 'DB_CHARSET',  'utf8mb4' );
define( 'DB_COLLATE',  '' );

// ** Authentication Keys and Salts ** //
define('AUTH_KEY',         'dohaquest-auth-key-2026-railway-xK9mP2');
define('SECURE_AUTH_KEY',  'dohaquest-secure-auth-key-2026-nL7qR4');
define('LOGGED_IN_KEY',    'dohaquest-logged-in-key-2026-vB3wS8');
define('NONCE_KEY',        'dohaquest-nonce-key-2026-railway-jH5tY1');
define('AUTH_SALT',        'dohaquest-auth-salt-2026-railway-cF6uZ0');
define('SECURE_AUTH_SALT', 'dohaquest-secure-auth-salt-2026-dG4iX3');
define('LOGGED_IN_SALT',   'dohaquest-logged-in-salt-2026-eA2oW7');
define('NONCE_SALT',       'dohaquest-nonce-salt-2026-railway-fM1pV9');

$table_prefix = 'wp_';

// ** HTTPS behind Railway proxy ** //
// Railway terminates SSL at proxy level - detect and force HTTPS
if ( isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https' ) {
    $_SERVER['HTTPS'] = 'on';
}

// ** WordPress URLs ** //
// Use https:// since Railway proxy handles SSL termination
$_railway_domain = getenv('RAILWAY_PUBLIC_DOMAIN') ?: '';
if ( !empty($_railway_domain) ) {
    $_railway_url = 'https://' . $_railway_domain;
} else {
    $_railway_url = 'http://localhost';
}
define( 'WP_HOME',    $_railway_url );
define( 'WP_SITEURL', $_railway_url );

// ** Debug - disabled in production ** //
define( 'WP_DEBUG', false );
define( 'WP_DEBUG_LOG', false );
define( 'WP_DEBUG_DISPLAY', false );
@ini_set( 'display_errors', 0 );

// ** Language ** //
define( 'WPLANG', '' );

// ** Memory ** //
define( 'WP_MEMORY_LIMIT', '256M' );

// ** Performance ** //
define( 'WP_CACHE', false );
define( 'CONCATENATE_SCRIPTS', false );

// ** Absolute path ** //
if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
