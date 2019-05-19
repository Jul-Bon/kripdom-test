<div class="news__item">
    <div class="news__item-image">
        <a href="<?php the_permalink() ?>" rel="bookmark">
            <?php the_post_thumbnail('news-home-page-size'); ?>
        </a>
    </div>
    <div class="news__meta-info">
        <span>
            <i class="far fa-calendar"></i>
                <?php echo get_the_date(); ?>
        </span>
        <span>
            <i class="far fa-comment"></i>
            <a href="<?php the_permalink() ?>">
                <?php comments_number('No Comments', '1 Comment', '% Comments'); ?>
            </a>
        </span>
    </div>
    <h3 class="news__item-title"><a href="<?php the_permalink() ?>" rel="bookmark"><?php the_title(); ?></a>
</div>