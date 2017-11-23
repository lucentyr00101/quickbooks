<?php
function footer_menu_features() {
	register_nav_menu('features-menu',__( 'Features & Benefits' ));
}
add_action( 'init', 'footer_menu_features' );
function footer_menu_accountant() {
	register_nav_menu('accountant-menu',__( 'Accountant & Bookkeepers' ));
}
add_action( 'init', 'footer_menu_accountant' );
function footer_menu_support() {
	register_nav_menu('support-menu',__( 'Learn & Support' ));
}
add_action( 'init', 'footer_menu_support' );
function footer_menu_about() {
	register_nav_menu('about-menu',__( 'About the Company' ));
}
add_action( 'init', 'footer_menu_about' );
function footer_menu_account() {
	register_nav_menu('account-menu',__( 'My Account' ));
}
add_action( 'init', 'footer_menu_account' );
// employer page
// Change the columns for the edit CPT screen
function change_columns_employer( $cols ) {
	$cols_emp = array(
		'cb'       => '<input type="checkbox" />',
		'company_name' => __( 'Company Name'),
		'business_type' => __( 'Business Type'),
		'name' => __( 'Name'),
		'contact_number' => __( 'Contact Number'),
		'email_address' => __( 'Email Address'),
	);
	return $cols_emp;
}
add_filter( "manage_employer_posts_columns", "change_columns_employer" );
// accountant page
function change_columns_acc( $cols ) {
	$cols_acc = array(
		'cb'       => '<input type="checkbox" />',
		'last_name' => __( 'Last Name'),
		'first_name' => __( 'First Name'),
		'skills' => __( 'Skills'),
		'username' => __( 'Username'),
	);
	return $cols_acc;
}
add_filter( "manage_accountant_posts_columns", "change_columns_acc" );
//Give these new columns some content
function custom_columns_emp( $column, $post_id ) {
	switch ( $column ) {
		case "company_name":
		$company_name = get_post_meta( $post_id, 'company_name', true);
		echo $company_name;
		break;
		case "business_type":
		$business_type = get_post_meta( $post_id, 'business_type', true);
		echo $business_type;
		break;
		case "name":
		$name = get_post_meta( $post_id, 'name', true);
		echo $name;
		break;
		case "contact_number":
		$contact_number = get_post_meta( $post_id, 'contact_number', true);
		echo $contact_number;
		break;
		case "email_address":
		$email_address = get_post_meta( $post_id, 'email_address', true);
		echo $email_address;
		break;
	}
}
add_action( "manage_posts_custom_column", "custom_columns_emp", 10, 2 );


function custom_columns_acc( $column, $post_id ) {
	switch ( $column ) {
		case "last_name":
		$last_name= get_post_meta( $post_id, 'last_name', true);
		echo $last_name;
		break;
		case "first_name":
		$first_name= get_post_meta( $post_id, 'first_name', true);
		echo $first_name;
		break;
		case "skills":
		$skills_array = get_post_meta( $post_id, 'skills_check', true);
		$skills = implode(",", $skills_array);
		echo $skills;
		break;
		case "username":
		$username = get_post_meta( $post_id, 'username', true);
		echo $username;
		break;
	}
}
add_action( "manage_posts_custom_column", "custom_columns_acc", 10, 2 );

//Dupe fix when searching by title
add_filter( 'posts_groupby', 'my_post_limits' );
function my_post_limits($groupby) {
	global $pagenow, $wpdb;
	if ( is_admin() && $pagenow == 'edit.php' && $_GET['post_type']=='employer' && $_GET['s'] != '' ) {
		$groupby = "$wpdb->posts.ID";
	}
	return $groupby;
}

/*add_filter( 'posts_join', 'segnalazioni_search_join' );
function segnalazioni_search_join ( $join ) {
	global $pagenow, $wpdb;
    // I want the filter only when performing a search on edit page of Custom Post Type named "segnalazioni".
	if ( is_admin() && 'edit.php' === $pagenow && 'accountant' === $_GET['post_type'] || 'employer' === $_GET['post_type'] && ! empty( $_GET['s'] ) ) {    
		$join .= 'LEFT JOIN ' . $wpdb->postmeta . ' ON ' . $wpdb->posts . '.ID = ' . $wpdb->postmeta . '.post_id ';
	}
	return $join;
}
add_filter( 'posts_where', 'segnalazioni_search_where' );
function segnalazioni_search_where( $where ) {
	global $pagenow, $wpdb;
    // I want the filter only when performing a search on edit page of Custom Post Type named "segnalazioni".
	if ( is_admin() && 'edit.php' === $pagenow && 'accountant' === $_GET['post_type'] || 'employer' === $_GET['post_type'] && ! empty( $_GET['s'] ) ) {
		$where = preg_replace(
			"/\(\s*" . $wpdb->posts . ".post_title\s+LIKE\s*(\'[^\']+\')\s*\)/",
			"(" . $wpdb->posts . ".post_title LIKE $1) OR (" . $wpdb->postmeta . ".meta_value LIKE $1)", $where );
	}
	return $where;
}*/