<?php 
/**
 * Template Name: Accountant Form Application
 *
 * @package WordPress
 * @subpackage Twenty_Thirteen
 * @since Twenty Thirteen 1.0
 */
acf_form_head();
get_header(); ?>
<div id="primary" class="content-area application-form">
	<div id="content" class="site-content" role="main">
		<div class="form-content">
			<?php /* The loop */ ?>
				<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
					<header class="entry-header">
						<h1 class="entry-title title-border"><?php the_title(); ?></h1>
					</header><!-- .entry-header -->
					<?php
					acf_form(array(
						'post_id'  => 'new_post',
						'field_groups'  => array(
							'group_5a0d274e8bb90',
/*							'group_5a0d2e6b55a69',*/
						),
						'new_post'  => array(
							'post_type'  => 'accountant',
							'post_status' => 'publish',
						),
						'updated_message' => __("Submitted Successfully", 'acf'),
						'submit_value'  => __('Submit', 'acf'),
						'form_attributes' => array(
							'name' => 'accountant-form',
						),
					));
					?>
					<div class="entry-content">
						<?php the_content(); ?>
						<?php wp_link_pages( array( 'before' => '<div class="page-links"><span class="page-links-title">' . __( 'Pages:', 'twentythirteen' ) . '</span>', 'after' => '</div>', 'link_before' => '<span>', 'link_after' => '</span>' ) ); ?>
					</div><!-- .entry-content -->
				</article><!-- #post -->
				<?php comments_template(); ?>
			<div class="sidebar"><?php get_sidebar(); ?></div>
		</div>
	</div><!-- #content -->
</div><!-- #primary -->
<?php wp_footer(); ?>
<?php get_footer(); ?>
