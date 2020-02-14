<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings ** //
if (file_exists(dirname(__FILE__) . '/local.php')) {
	//local database settings
	define( 'DB_NAME', 'local' );
	define( 'DB_USER', 'root' );
	define( 'DB_PASSWORD', 'root' );
	define( 'DB_HOST', 'localhost' );
} else {
	//live database settings
	define( 'DB_NAME', 'cityhomedata' );
	define( 'DB_USER', 'JDawan469x' );
	define( 'DB_PASSWORD', 'REtaw46924x' );
	define( 'DB_HOST', 'localhost' );
}



/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
 define('AUTH_KEY',         '+@i#P8(.^40PoP1:409Jyea40:f#t+(wh|Laf%^xbA_7~cCOxBzJ]b9bSQSD]-=@');
 define('SECURE_AUTH_KEY',  '38b3uZckcP>bE:ELwb$R|aX:gt.|K& FeD+e^2b Ch(`-vU[O+NSa}]yS y)-2A1');
 define('LOGGED_IN_KEY',    'oJ_wpyS(f+<zc`&S=|l11gZdE/hw)x:_p-rOd6Wsxu^@1!=;K}3V*5Z|.OCaOw>.');
 define('NONCE_KEY',        'PtDnQ[<loJndW?&XnBTe_B&CS 8FO/Pyh+KsGi^V^Z.n[.N4~#K.4<PDrz&pxH0S');
 define('AUTH_SALT',        'EDIluVA.Z2ma#z#T#Hcj)vGLd&zLvc[F,,^?lj%tcJj$d6p=BBIJK-vn+vi:,b-Y');
 define('SECURE_AUTH_SALT', '`bUZGVQG&ES8M,u{jHI+Q|`1|C&ZnS/qBVm,[3]<?yhFMCBlGeM:/eXLZr3b,)0$');
 define('LOGGED_IN_SALT',   'Tzghj&2Qh#4,$T[H|-EK[<owtSw-s[vdWQ9bCsvq6M/PjmB4 x}~[*[_b}SxJWV,');
 define('NONCE_SALT',       'Y~XN,)L7Pg>2p)]M+ww7AN50L6w--G(!K.+Z-iypnKUxz=T&5!dY|5jODr.Q{Cf=');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) )
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
