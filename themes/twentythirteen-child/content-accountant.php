<?php
/**
 * The default template for displaying content
 *
 * Used for both single and index/archive/search.
 *
 * @package WordPress
 * @subpackage Twenty_Thirteen
 * @since Twenty Thirteen 1.0
 */
?>

<?php if ( is_single() ) : ?>


	<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
		<div class="content-press">
			<div class="col-md-8">

			<?php else : ?>

				<?php //--------------------------------------content--------------- ?>

				<div class="find-user">
					<div class="find-header">
						<p><?php the_field('last_name'); echo ', '; the_field('first_name'); ?></p>
					</div>
					<div class="find-img">
						<img src="<?php the_field('upload_picture'); ?>" />
					</div>
					<div class="find-details">
						<div class="find-details-name">
							<p><strong>Name: </strong> <?php the_field('last_name'); echo ', '; the_field('first_name'); ?></p>
							<p><strong>Gender: </strong><?php the_field('gender'); ?></p>
						</div>
						<div class="find-details-skills">
							<p><strong>Skills:</strong> </p>
							<p><?php the_field('skills_check') ?></p>
						</div>

						<div class="find-details-work-exp">
							<?php
							if( have_rows('work_experience') ):?>
							<p><strong>Work Experience:</strong></p>
							<table>
								<thead>
									<tr>
										<th>Company</th>
										<th>Years of Experience</th>
										<th>Position</th>
									</tr>
								</thead>
								<tbody>
								<?php
								while ( have_rows('work_experience') ) : the_row(); ?>
									<tr>
										<td><?php the_sub_field('company'); ?></td>
										<td><?php the_sub_field('years_of_experience'); ?></td>
										<td><?php the_sub_field('position'); ?></td>
									</tr>
							<?php
						endwhile;
						?></tbody></table><?php
					else :
					endif;
					?>
				</div>
				<div class="find-details-resume">
					<a href="<?php the_field('upload_resume'); ?>">Download Resume</a>
				</div>
			</div>
		</div>



		<?php 

		endif; ?>
		<div class="clear"></div>