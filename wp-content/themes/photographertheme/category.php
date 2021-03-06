<?php get_header(); ?>

        <?php if (have_posts()) : ?>

        <?php $post = $posts[0]; // Hack. Set $post so that the_date() works. ?>

        <?php $x = 0; ?>
        <?php while (have_posts()) : the_post(); ?>
      
          <?php if($x % 2 == 0) { ?>
              <div class="home_post_box left">
          <?php } else { ?>
              <div class="home_post_box right">
          <?php } ?>
              <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('featured-home'); ?></a>
              <!--<img src="<?php //bloginfo('stylesheet_directory'); ?>/images/home-big-image1.png" />-->
              <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
          </div><!--//home_post_box-->      
          
          <?php if($x % 2 == 1) { ?>
              <div class="clear"></div>
          <?php } ?>
      
      <?php $x++; ?>
        <?php endwhile; ?>
        
            <?php else :
    
                    if ( is_category() ) { // If this is a category archive
                            printf("<h2 class='center'>Sorry, but there aren't any posts in the %s category yet.</h2>", single_cat_title('',false));
                    } else if ( is_date() ) { // If this is a date archive
                            echo("<h2>Sorry, but there aren't any posts with this date.</h2>");
                    } else if ( is_author() ) { // If this is a category archive
                            $userdata = get_userdatabylogin(get_query_var('author_name'));
                            printf("<h2 class='center'>Sorry, but there aren't any posts by %s yet.</h2>", $userdata->display_name);
                    } else {
                            echo("<h2 class='center'>No posts found.</h2>");
                    }
                    get_search_form();
    
            endif;
    ?>
      
      <div class="navigation">
          <?php if(get_previous_posts_link()) { ?><div class="left"><?php previous_posts_link('&laquo; Previous') ?></div><?php } ?>
          <?php if(get_next_posts_link()) { ?><div class="right"><?php next_posts_link('Next &raquo;') ?></div><?php } ?>
          <div class="clear"></div>
      </div><!--//navigation-->      
      
      <?php wp_reset_query(); ?>      
    
<?php get_footer(); ?>    