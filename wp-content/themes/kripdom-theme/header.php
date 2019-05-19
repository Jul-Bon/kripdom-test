<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <?php get_template_part('template-parts/head'); ?>
</head>

<body <?php body_class("page-body"); ?>>

<header class="page-header">
    <div class="container">
        <div class="page-header__navigation-wrap">
            <div class="logo"><?php the_custom_logo(); ?></div>

            <nav class="main-nav" role="navigation">
                <button class="close-menu-btn"><i class="far fa-times-circle"></i></button>
                <?php wp_nav_menu(array('theme_location' => 'menu-1', 'menu_class' => 'main-nav__list', 'container' => false)); ?>

                <a href="<?php echo get_theme_mod('header_url_button'); ?>>" class="button client-button">
                    <?php echo get_theme_mod('header_text_button'); ?>
                </a>
            </nav>

            <button class="open-menu-btn"><i class="fas fa-bars"></i></button>
        </div>
    </div>
</header>
