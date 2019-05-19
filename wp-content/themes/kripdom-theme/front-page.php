<?php
/**
 * Page - Home
 */


get_header(); ?>

    <div id="primary" class="content-area">
        <main id="main" class="site-main">

            <section class="news latest-news container">

                <div class="section-headline">
                    <h2 class="section-headline__title wow fadeInUp" data-wow-duration="0.5s" data-wow-delay="0.1s">
                        <?php the_field('section_title_latest_news'); ?>
                        <?php echo file_get_contents(get_template_directory_uri() . '/include/title-decoration.svg'); ?>
                    </h2>
                    <p class="section-headline__description wow fadeInUp" data-wow-duration="0.5s"
                       data-wow-delay="0.3s">
                        <?php the_field('section_description_latest_news'); ?>
                    </p>
                </div>

                <div class="news__list wow fadeInUp" data-wow-duration="0.5s" data-wow-delay="0.5s">

                    <?php $args = array(
                        'posts_per_page' => 3,
                        'orderby' => 'date',
                        'order' => 'DESC'
                    );

                    $query = new WP_Query($args);

                    while ($query->have_posts()) : $query->the_post(); ?>

                        <?php get_template_part('template-parts/content-blog-home-page', 'news-list'); ?>

                    <?php endwhile; ?>

                    <?php wp_reset_postdata(); ?>

                </div>

                <div class="news__button-wrap">
                    <a href="#"
                       class="button news__view-button"><?php echo get_theme_mod('button_view_all_text_title'); ?></a>
                </div>

            </section>

            <section class="news oldest-news container">

                <div class="section-headline">
                    <h2 class="section-headline__title wow fadeInUp" data-wow-duration="0.5s"
                        data-wow-delay="0.1s">
                        <?php the_field('section_title_oldest_news'); ?>
                        <?php echo file_get_contents(get_template_directory_uri() . '/include/title-decoration.svg'); ?>
                    </h2>
                    <p class="section-headline__description wow fadeInUp" data-wow-duration="0.5s"
                       data-wow-delay="0.3s">
                        <?php the_field('section_description_oldest_news'); ?>
                    </p>
                </div>

                <div class="news__list wow fadeInUp" data-wow-duration="0.5s" data-wow-delay="0.5s">

                    <?php $args = array(
                        'posts_per_page' => 3,
                        'orderby' => 'date',
                        'order' => 'ASC'
                    );

                    $query = new WP_Query($args);

                    while ($query->have_posts()) : $query->the_post(); ?>

                        <?php get_template_part('template-parts/content-blog-home-page', 'news-list'); ?>

                    <?php endwhile; ?>

                    <?php wp_reset_postdata(); ?>

                </div>

                <div class="news__button-wrap">
                    <a href="#" class="button news__view-button">
                        <?php echo get_theme_mod('button_view_all_text_title'); ?>
                    </a>
                </div>

            </section>

        </main><!-- #main -->
    </div><!-- #primary -->


<?php
get_footer();


