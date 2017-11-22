<?php /* Template Name: All Applicants Template */ ?>
<?php get_header(); ?>

<?php 

// First lets set some arguments for the query:
// Optionally, those could of course go directly into the query,
// especially, if you have no others but post type.
$args = array(
	'post_type' => 'accountant',
	'posts_per_page' => 5
    // Several more arguments could go here. Last one without a comma.
);

// Query the posts:
$accountant_query = new WP_Query($args);

// Loop through the obituaries:
while ($accountant_query->have_posts()) : $accountant_query->the_post();
    // Echo some markup
	echo '<p>';
    // As with regular posts, you can use all normal display functions, such as
	the_title();
    // Within the loop, you can access custom fields like so:
	echo get_post_meta($post->ID, 'username', true); 
    // Or like so:
	$username = get_post_custom_values('username');
	echo $username[0];
    echo '</p>'; // Markup closing tags.
endwhile;

// Reset Post Data
wp_reset_postdata();


?>


<?php wp_footer(); ?>
<?php get_footer(); ?>