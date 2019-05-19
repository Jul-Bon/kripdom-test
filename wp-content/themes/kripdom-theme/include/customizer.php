<?php
/**
 * theme Theme Customizer
 *
 * @package theme
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function theme_customize_register($wp_customize)
{
    $wp_customize->get_setting('blogname')->transport = 'postMessage';
    $wp_customize->get_setting('blogdescription')->transport = 'postMessage';
    $wp_customize->get_setting('header_textcolor')->transport = 'postMessage';




//Add settings fo the header

    $wp_customize->add_section('header', array(
        'title' => __('Settings for Header Section ', 'kripdom-theme'),
        'priority' => 20,
    ));

//Add settings for the banner button
    $wp_customize->add_setting('header_text_button', array(
        'default' => __('Button text', 'kripdom-theme'),
        'transport' => 'refresh',
    ));

    $wp_customize->add_control('header_text_button', array(
        'label' => __('Button settings', 'kripdom-theme'),
        'section' => 'header',
        'settings' => 'header_text_button',
        'type' => 'text',
    ));

    $wp_customize->add_setting('header_url_button', array(
        'default' => __('Url button', 'kripdom-theme'),
        'transport' => 'refresh',
    ));

    $wp_customize->add_control('header_url_button', array(
        'label' => __('Button url', 'kripdom-theme'),
        'section' => 'header',
        'settings' => 'header_url_button',
        'type' => 'text',
    ));
//end settings fo the main Banner

//General site settings
    $wp_customize->add_section('general-settings', array(
        'title' => __('General site settings', 'kripdom-theme'),
        'priority' => 20,
    ));

//Add settings for the banner button
    $wp_customize->add_setting('button_view_all_text_title', array(
        'default' => __('Button text', 'kripdom-theme'),
        'transport' => 'refresh',
    ));

    $wp_customize->add_control('button_view_all_text_title', array(
        'label' => __('Button label (View All Text Button)', 'kripdom-theme'),
        'section' => 'general-settings',
        'settings' => 'button_view_all_text_title',
        'type' => 'text',
    ));

}

add_action('customize_register', 'theme_customize_register');

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function theme_customize_preview_js()
{
    wp_enqueue_script('theme_customizer', get_template_directory_uri() . '/assets/scripts/customizer.js', array('customize-preview'), false, true);
}

add_action('customize_preview_init', 'theme_customize_preview_js');

