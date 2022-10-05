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

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'shop' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

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
define( 'AUTH_KEY',         'Ct@)o B(F?{E5%1~-g ^YtSIB|KX0xJQ95<xY-&8Hu-5&lWS$(+e>fXA[kjo=AwL' );
define( 'SECURE_AUTH_KEY',  '.*%vsA|}kiCR}l1X|/),.iZ1VGzh;MlqkJWiv=x]8= d(^ &y)1fvR|h.to9edj.' );
define( 'LOGGED_IN_KEY',    'aDPkktZ1+l VI3k9:(6.3s@@Dj<ay,9l$ l(*oa*R=|vtz9vR3pBQ!DD>.HfN_9,' );
define( 'NONCE_KEY',        'CqMCpFm5Ypi{5^y:` O{uZUI9-[>mx9t] vGW9L~ITl 9=<9JRsx0BA^vxO`n*l+' );
define( 'AUTH_SALT',        'T.T@ {KRjQgHzYe7{[_83OvMhY~/Q]q cYGFr^M}?NbprKr{.41[9E|q|IZpxIee' );
define( 'SECURE_AUTH_SALT', '8c:dE.fWBt9Y^M(X3Av,>!MhupS[6kDIxjhTJ[N$:^b&wQy%pkYZ}~~>l+*H*(VW' );
define( 'LOGGED_IN_SALT',   '8Ot0OxGt_84=OVD@2_b15Cr9}XL-uv2nq1|XEe]4eWTi2m% T{S? QEif[0zS2Rs' );
define( 'NONCE_SALT',       'koVlfd2A6PCYlBSU/BdHC&}mR{,|+!qQHexuzJpNsBC9}{+P;AXLHD]zv@^SzG5o' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
