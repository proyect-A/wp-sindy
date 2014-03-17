<?php
/** 
 * Configuración básica de WordPress.
 *
 * Este archivo contiene las siguientes configuraciones: ajustes de MySQL, prefijo de tablas,
 * claves secretas, idioma de WordPress y ABSPATH. Para obtener más información,
 * visita la página del Codex{@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} . Los ajustes de MySQL te los proporcionará tu proveedor de alojamiento web.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** Ajustes de MySQL. Solicita estos datos a tu proveedor de alojamiento web. ** //
/** El nombre de tu base de datos de WordPress */
define('DB_NAME', 'wordpress');

/** Tu nombre de usuario de MySQL */
define('DB_USER', 'root');

/** Tu contraseña de MySQL */
define('DB_PASSWORD', 'barracuda');

/** Host de MySQL (es muy probable que no necesites cambiarlo) */
define('DB_HOST', 'localhost');

/** Codificación de caracteres para la base de datos. */
define('DB_CHARSET', 'utf8');

/** Cotejamiento de la base de datos. No lo modifiques si tienes dudas. */
define('DB_COLLATE', '');

/**#@+
 * Claves únicas de autentificación.
 *
 * Define cada clave secreta con una frase aleatoria distinta.
 * Puedes generarlas usando el {@link https://api.wordpress.org/secret-key/1.1/salt/ servicio de claves secretas de WordPress}
 * Puedes cambiar las claves en cualquier momento para invalidar todas las cookies existentes. Esto forzará a todos los usuarios a volver a hacer login.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', 'BNN*&fTQ-H_)RJ@B^V!=W^Sf<Q:}4q_Prl-lr8g0=Kx2|<Qc)A-kbC)$3d-OZ@>2'); // Cambia esto por tu frase aleatoria.
define('SECURE_AUTH_KEY', 'fo@3Y?FO$2DJQb#uI2+4cQ>Y.+,Peb0Jh+eR/U6+Iw}MLsQlt8(z)h({12DjmKn{'); // Cambia esto por tu frase aleatoria.
define('LOGGED_IN_KEY', 'G}/i_e<&5.a/Iy5Bw|?7|p%g:C[z8V/-Kj3$+Ei|+d9E7fF__XvE1=0#e(/IC9+m'); // Cambia esto por tu frase aleatoria.
define('NONCE_KEY', '?2FFP]vFw(;S4p.EEn|A6<[8%ZMt%.Vri}/wo%.s|!##]&x%dt4[^`.K7sHaCU]p'); // Cambia esto por tu frase aleatoria.
define('AUTH_SALT', 'oM8>+iv:~SW4KqD|*mBN_&V{1ZtT4?v!+$l-E9Q/n).%%l*rx40Rb83[~ptc[k31'); // Cambia esto por tu frase aleatoria.
define('SECURE_AUTH_SALT', '-v.ExqE#8c-Metth,F%zxKWz^<TBbgEJfQ[6l(bzej&Q`Zlw$c*v0tHNX!P9X+l9'); // Cambia esto por tu frase aleatoria.
define('LOGGED_IN_SALT', 'd]58h0q[!gd={Me0/%f8+t`7S`|/a^po`)BZy2kK%fq@78x DM3p~}oxl*QRQ!A^'); // Cambia esto por tu frase aleatoria.
define('NONCE_SALT', '=5x[Jb&.$u=4kgB|R-:xq}A -]~Jt&)Vt|g<El?unp,a9#K!HS[83HPv;p:-;J>-'); // Cambia esto por tu frase aleatoria.

/**#@-*/

/**
 * Prefijo de la base de datos de WordPress.
 *
 * Cambia el prefijo si deseas instalar multiples blogs en una sola base de datos.
 * Emplea solo números, letras y guión bajo.
 */
$table_prefix  = 'wp_';

/**
 * Idioma de WordPress.
 *
 * Cambia lo siguiente para tener WordPress en tu idioma. El correspondiente archivo MO
 * del lenguaje elegido debe encontrarse en wp-content/languages.
 * Por ejemplo, instala ca_ES.mo copiándolo a wp-content/languages y define WPLANG como 'ca_ES'
 * para traducir WordPress al catalán.
 */
define('WPLANG', 'es_ES');

/**
 * Para desarrolladores: modo debug de WordPress.
 *
 * Cambia esto a true para activar la muestra de avisos durante el desarrollo.
 * Se recomienda encarecidamente a los desarrolladores de temas y plugins que usen WP_DEBUG
 * en sus entornos de desarrollo.
 */
define('WP_DEBUG', false);

/* ¡Eso es todo, deja de editar! Feliz blogging */

/** WordPress absolute path to the Wordpress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');


