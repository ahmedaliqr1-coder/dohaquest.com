<?php
/**
 * WordPress Configuration - DohaQuest Bookings
 * Railway Deployment
 */

// ** Database Settings ** //
define( 'DB_NAME',     getenv('MYSQL_DATABASE') ?: 'dohaquest_bookings' );
define( 'DB_USER',     getenv('MYSQL_USER')     ?: 'dohaquest_user' );
define( 'DB_PASSWORD', getenv('MYSQL_PASSWORD') ?: 'dohaquest_pass' );
define( 'DB_HOST',     getenv('MYSQL_HOST')     ?: 'mysql' );
define( 'DB_CHARSET',  'utf8mb4' );
define( 'DB_COLLATE',  '' );

// ** Authentication Keys and Salts ** //
define('AUTH_KEY',         'dohaquest-auth-key-2026-railway');
define('SECURE_AUTH_KEY',  'dohaquest-secure-auth-key-2026');
define('LOGGED_IN_KEY',    'dohaquest-logged-in-key-2026');
define('NONCE_KEY',        'dohaquest-nonce-key-2026-railway');
define('AUTH_SALT',        'dohaquest-auth-salt-2026-railway');
define('SECURE_AUTH_SALT', 'dohaquest-secure-auth-salt-2026');
define('LOGGED_IN_SALT',   'dohaquest-logged-in-salt-2026');
define('NONCE_SALT',       'dohaquest-nonce-salt-2026-railway');

$table_prefix = 'wp_';

// ** WordPress URLs ** //
$railway_url = getenv('RAILWAY_PUBLIC_DOMAIN') ? 'https://' . getenv('RAILWAY_PUBLIC_DOMAIN') : 'http://localhost';
define( 'WP_HOME',    $railway_url );
define( 'WP_SITEURL', $railway_url );

// ** Debug ** //
define( 'WP_DEBUG', false );
define( 'WP_DEBUG_LOG', false );

// ** Language ** //
define( 'WPLANG', '' );

// ** Memory ** //
define( 'WP_MEMORY_LIMIT', '256M' );

// ** HTTPS behind proxy ** //
if ( isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https' ) {
    $_SERVER['HTTPS'] = 'on';
}

// ** Absolute path ** //
if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
