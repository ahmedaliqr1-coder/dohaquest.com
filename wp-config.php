<?php
/**
 * WordPress Configuration - DohaQuest Bookings
 * Railway Deployment
 */

// ** Database Settings ** //
define( 'DB_NAME',     getenv('WORDPRESS_DB_NAME')     ?: getenv('MYSQLDATABASE') ?: 'railway' );
define( 'DB_USER',     getenv('WORDPRESS_DB_USER')     ?: getenv('MYSQLUSER')     ?: 'root' );
define( 'DB_PASSWORD', getenv('WORDPRESS_DB_PASSWORD') ?: getenv('MYSQLPASSWORD') ?: '' );
define( 'DB_HOST',     getenv('WORDPRESS_DB_HOST')     ?: getenv('MYSQLHOST') . ':' . (getenv('MYSQLPORT') ?: '3306') ?: 'mysql.railway.internal:3306' );
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

// ** WordPress URLs ** //
// Use http:// internally so Railway healthcheck (which connects via HTTP) gets 200 OK
// Railway's proxy handles HTTPS termination externally
$railway_domain = getenv('RAILWAY_PUBLIC_DOMAIN') ?: getenv('RAILWAY_SERVICE_DOHAQUEST_COM_URL') ?: '';
// Use http:// to avoid 301 redirect that breaks Railway healthcheck
$railway_url = $railway_domain ? 'http://' . $railway_domain : 'http://localhost';
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
// Railway terminates SSL at the proxy level and forwards as HTTP internally
// We tell WordPress it's HTTPS via the X-Forwarded-Proto header
if ( isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https' ) {
    $_SERVER['HTTPS'] = 'on';
}

// ** Absolute path ** //
if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
