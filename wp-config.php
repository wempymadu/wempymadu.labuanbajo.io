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

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'VB5p/*ZpK/)Q<rSDj836Cz5Apmc8GiZa3i|wM3uh70VI<0T}C7YSfX8$B7,9v^;|' );
define( 'SECURE_AUTH_KEY',  ';CrW6($usp&mf&WY;793_8]%fU+C#;0fc&Aw+ ;Q9_xL86uXPJcqA,myQZ^H+S.~' );
define( 'LOGGED_IN_KEY',    'hml3r8N!s-ob1f)gOs(:>-]io=[R7,h0Al~(@ eI4<.*c<]7$NA|[xCo/kRhT@&~' );
define( 'NONCE_KEY',        ');;>B9yLbivEx)`+5Ku}dG?ECu{o>.SVA+fEn3;xBlmyj1b&} ZB=Q^hF3f(0M@*' );
define( 'AUTH_SALT',        'B`>F?ybPW0q/^-B%gsGSV@|vo,[i*R/yAZ}o=xfX`+P$FC%>3m2J?XK(t5@fBvt9' );
define( 'SECURE_AUTH_SALT', 'M%>.x?b!KW@W!An|${{L d7ewsnXWA<uqpUsDA1cTw-B[iXu33m^,}vl`Hv^B)CL' );
define( 'LOGGED_IN_SALT',   'RMm(#)IE0:_vus)N?+qS7*gGEe5Phyi1$->]vxK}Px}h9+i*~ib@EV[ldx$ec)n7' );
define( 'NONCE_SALT',       'q]]tnAu?)p5*XNRVS/dG26DpieXXEtPx55<Yh-u82OK(w&+ObnSmfN=p3G$#.by>' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
