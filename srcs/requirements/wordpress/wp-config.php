<?php
// ** MySQL settings ** //
define('DB_NAME', getenv('MYSQL_DATABASE'));
define('DB_USER', getenv('MYSQL_USER'));
define('DB_PASSWORD', getenv('MYSQL_PASSWORD'));
define('DB_HOST', getenv('WORDPRESS_DB_HOST'));

define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '6I/[qpt~I_~JXt8-+1dMY@uNAEM]O#q`It#,-T,+/I;)UMKz+#E~|)&MXyvfWkD~');
define('SECURE_AUTH_KEY',  'Kr1z2>`W+F(zCNba:QL(G|/to?$F3xrARUpeldeaPZ9DtllhxCzCnISyDx!*714[');
define('LOGGED_IN_KEY',    'gQHZn#5{ul&]A:9b>.P6&Bd0ot&HQ_j@ZofzYt9VU7r/vxhSlJEDdt->Co=&yM|)');
define('NONCE_KEY',        '# u s88+3$OWWQ= Y)poEUOj<iFP28*JEl;x+]>~UpL$r).)^>CoerH-&#U4|QHc');
define('AUTH_SALT',        ':eaA]TW3o<jVNyAHGc,2=r%Q4e+o.*RuC,$DGQ~kCS2S7Ll$4 vR>C$J$yb<i!IB');
define('SECURE_AUTH_SALT', '.Xotj-_%4uhk:q^;$mAw//_BE5cL!C4|3My|e{0FHc+R/{[8O2.!4coC>^*a9<ph');
define('LOGGED_IN_SALT',   '4/K7VzY$E-5v%bMaxW!w1$LB`Ok.NH238LVN-2M;m}AIVN=;!|*~2%<iFa lG<|?');
define('NONCE_SALT',       '!UYZ&Iu}jR3utM9E04e.JMzk(fRsQ<Xn]G.q} BW|9|D8&+3c0P!`=_Ri9+OA0m)');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
define('WP_DEBUG', true);

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
