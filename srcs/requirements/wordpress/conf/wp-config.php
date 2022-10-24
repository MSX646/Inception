<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */
define('DB_NAME', 'wordpress');
define('DB_USER', 'kezekiel');
define('DB_PASSWORD', 'strong');
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );
define('FS_METHOD','direct');
$table_prefix = 'wp_';
define( 'WP_DEBUG', true );
#if ( ! defined( 'ABSPATH' ) ) {
#define( 'ABSPATH', __DIR__ . '/' );}
#define( 'WP_REDIS_HOST', 'redis' );
#define( 'WP_REDIS_PORT', 6379 );
#define( 'WP_REDIS_TIMEOUT', 1 );
#define( 'WP_REDIS_READ_TIMEOUT', 1 );
#define( 'WP_REDIS_DATABASE', 0 );
require_once ABSPATH . 'wp-settings.php';
