<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //

define( 'DB_NAME', 'db_inception1' ); /** The name of the database for WordPress */
define( 'DB_USER', 'user' ); /** Database username */
define( 'DB_PASSWORD', 'pwd' ); /** Database password */
define( 'DB_HOST', 'mariadb'); /** Database hostname */
define( 'DB_CHARSET', 'utf8' ); /** Database charset to use in creating database tables. */
define( 'DB_COLLATE', '' ); /** The database collate type. Don't change this if in doubt. */

define( 'WP_ALLOW_REPAIR', true );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '*cD,vb*7C$jdg?H*w1jT1nxJ.$4|A-$@?jvb?eOsxn77OF1BAZg;lf*/.|ZGyfNB' );
define( 'SECURE_AUTH_KEY',  'Q*Sn7#>8-6[R_KZ7pgd$7Wd&jX8WG*H];|+m.,!n5+SdmqDbG.XX]vYzqZl?0xoZ' );
define( 'LOGGED_IN_KEY',    '#b}r-R.9t{m){ZvRZ5Ppd|2HPwjYq.1U)zMH;J{jvbof?*62/B<L6(p^D!a)4jZR' );
define( 'NONCE_KEY',        'CFofW#&|~5l-zr6pf)++Eb~~3ZG3tqal4y~,)RAEeE}:;rhg @,+E2x.P8+cUFcq' );
define( 'AUTH_SALT',        'w~F,}ZV;GADSI,%eS2q>LK|b#%Bt5|.L7ZD2:zzb=*H[)FKV(KaT[|!oE(NoSb>J' );
define( 'SECURE_AUTH_SALT', '+#@!0mkB~eC<.2x?LP{;8Y9P=k}L(A3:e,[x<Gv3Ay$*lt^x;EBLDKSc`[M^ajbs' );
define( 'LOGGED_IN_SALT',   'BiqRx`0u@FBttoM?Ge@6tjkZ1}5GQT{o~I8$>QHR?Dj}=x)aU8PQ~D,WNM|HAa(V' );
define( 'NONCE_SALT',       'c/!dg-Im0b|[Vu`&{QdY.1)AeN2.E+7BhGVGilu0(xJ4fT$3Ww~-q7sXufg*Mo#d' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';