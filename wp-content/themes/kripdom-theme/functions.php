<?php
/**
 * theme functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package theme
 */

if (!function_exists('theme_setup')) :
    /**
     * Sets up theme defaults and registers support for various WordPress features.
     *
     * Note that this function is hooked into the after_setup_theme hook, which
     * runs before the init hook. The init hook is too late for some features, such
     * as indicating support for post thumbnails.
     */
    function theme_setup()
    {
        /*
         * Let WordPress manage the document title.
         * By adding theme support, we declare that this theme does not use a
         * hard-coded <title> tag in the document head, and expect WordPress to
         * provide it for us.
         */
        add_theme_support('title-tag');

        /*
         * Enable support for Post Thumbnails on posts and pages.
         *
         * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
         */
        add_theme_support('post-thumbnails');

        // This theme uses wp_nav_menu() in one location.
        register_nav_menus(array(
            'menu-1' => esc_html__('Primary', 'theme'),
        ));


        /**
         * Add support for core custom logo.
         *
         * @link https://codex.wordpress.org/Theme_Logo
         */
        add_theme_support('custom-logo', array(
            'height' => 110,
            'width' => 24,
            'flex-width' => true,
            'flex-height' => true,
        ));

        /*
         * Switch default core markup for search form, comment form, and comments
         * to output valid HTML5.
         */
        add_theme_support('html5', array(
            'search-form',
            'comment-form',
            'comment-list',
            'gallery',
            'caption',
        ));

        // Add theme support for selective refresh for widgets.
        add_theme_support('customize-selective-refresh-widgets');
    }
endif;
add_action('after_setup_theme', 'theme_setup');

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function theme_widgets_init()
{
    register_sidebar(array(
        'name' => esc_html__('Sidebar', 'theme'),
        'id' => 'sidebar-1',
        'description' => esc_html__('Add widgets here.', 'theme'),
        'before_widget' => '<section id="%1$s" class="widget %2$s">',
        'after_widget' => '</section>',
        'before_title' => '<h2 class="widget-title">',
        'after_title' => '</h2>',
    ));
}

add_action('widgets_init', 'theme_widgets_init');

/**
 * Enqueue scripts and styles.
 */
function theme_scripts()
{
    // Styles
    //wp_enqueue_style( 'theme-style', get_stylesheet_uri() );
    wp_enqueue_style('normalize', get_template_directory_uri() . '/assets/css/normalize.css');
    wp_enqueue_style('theme-main-style', get_template_directory_uri() . '/assets/dist/main.css');
    wp_enqueue_style('theme-custom-style', get_template_directory_uri() . '/assets/css/custom.css');

    //fontawesome
    wp_enqueue_style('fontawesome', get_template_directory_uri() . '/assets/fonts/fontawesome/css/all.min.css');
    // Scripts
    wp_enqueue_script('theme-script', get_template_directory_uri() . '/assets/scripts/main.js', array('jquery'), false, true);

    //Animate styles
     wp_enqueue_style('animate-css', get_template_directory_uri() . '/assets/wow.js/css/libs/animate.css');
    //wow js
    wp_enqueue_script( 'wow-js', get_template_directory_uri() . '/assets/wow.js/dist/wow.js', array(), '', true );
}

add_action('wp_enqueue_scripts', 'theme_scripts');


/**
 * Customizer additions.
 */
require get_template_directory() . '/include/customizer.php';

/**
 * Create custom post types.
 */
require get_template_directory() . '/include/custom-post-type.php';


//Add new image
add_image_size('news-home-page-size', 600, 324, true);

//add theme options
if (function_exists('acf_add_options_page')) {

    acf_add_options_page(array(
        'page_title' => 'Theme General Settings',
        'menu_title' => 'Theme Settings',
        'menu_slug' => 'theme-general-settings',
        'capability' => 'edit_posts',
        'redirect' => false
    ));


}