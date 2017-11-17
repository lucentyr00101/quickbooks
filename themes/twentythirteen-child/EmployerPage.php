<?php
/**
 * Template Name: Employer Form Application
 *
 * @package WordPress
 * @subpackage Twenty_Thirteen
 * @since Twenty Thirteen 1.0
 */
acf_form_head();
get_header(); ?>
<div id="primary" class="content-area application-form">
	<div id="content" class="site-content" role="main">
		<?php /* The loop */ ?>
		<?php while ( have_posts() ) : the_post(); ?>
			<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
				<header class="entry-header">
					<h1 class="entry-title title-border"><?php the_title(); ?></h1>
				</header><!-- .entry-header -->
				<?php
				acf_form(array(
					'post_id'  => 'new_post',
					'field_groups'  => array(
						'group_5a0d2ce18602f',
						'group_5a0d2e6b55a69',
					),
					'new_post'  => array(
						'post_type'  => 'page',
						'post_status' => 'pending',
					),
					'updated_message' => __("Book a Venue", 'acf'),
					'submit_value'  => __('Submit', 'acf'),
					'form_attributes' => array(
						'name' => 'booking-form',
					),
				));
				?>
				<div class="entry-content">
					<?php the_content(); ?>
					<?php wp_link_pages( array( 'before' => '<div class="page-links"><span class="page-links-title">' . __( 'Pages:', 'twentythirteen' ) . '</span>', 'after' => '</div>', 'link_before' => '<span>', 'link_after' => '</span>' ) ); ?>
				</div><!-- .entry-content -->
			</article><!-- #post -->
			<?php comments_template(); ?>
		<?php endwhile; ?>
	</div><!-- #content -->
</div><!-- #primary -->
<?php get_sidebar(); ?>
<?php get_footer(); ?>
