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