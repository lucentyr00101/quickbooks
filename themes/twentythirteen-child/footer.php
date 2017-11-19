<?php
/**
 * The template for displaying the footer
 *
 * Contains footer content and the closing of the #main and #page div elements.
 *
 * @package WordPress
 * @subpackage Twenty_Thirteen
 * @since Twenty Thirteen 1.0
 */
?>
</div><!-- #main -->
<footer id="colophon" role="contentinfo">
	<section class="footer-1">
		<div class="footer-1-content">
			<div class="1-1">
				<p class="footer-head">Features & Benefits</p>
				<ul class="footer-sub">
					<?php wp_nav_menu( array( 'theme_location' => 'features-menu' ) ); ?>
				</ul>
			</div>
			<div class="1-2">
				<p class="footer-head">Accountant and Bookkeepers</p>
				<ul class="footer-sub">
					<?php wp_nav_menu( array( 'theme_location' => 'accountant-menu' ) ); ?>
				</ul>
			</div>
			<div class="1-3">
				<p class="footer-head">Learn & Support</p>
				<ul class="footer-sub">
					<?php wp_nav_menu( array( 'theme_location' => 'support-menu' ) ); ?>
				</ul>
			</div>
			<div class="1-4">
				<p class="footer-head">About the Company</p>
				<ul class="footer-sub">
					<?php wp_nav_menu( array( 'theme_location' => 'about-menu' ) ); ?>
				</ul>
			</div>
			<div class="1-5">
				<p class="footer-head">My Account</p>
				<ul class="footer-sub">
					<?php wp_nav_menu( array( 'theme_location' => 'account-menu' ) ); ?>
				</ul>
			</div>
		</div>	
	</section>
	<section class="footer-2">
		<div class="footer-2-content">
			<div class="footer-2-left">
				<p class="footer-head">Powered by</p>
				<img src="<?php echo get_stylesheet_directory_uri(); ?>/img/intuit.png" alt="" style='margin-bottom:1%;'>
				<p class="footer-sub-2">© 2017 Intuit Limited.</p>
				<p class="footer-sub-2 rights">All rights reserved. Terms and conditions, features, support, pricing, and service options subject to change without notice.</p>
			</div>
			<div class="footer-2-right">
				<a href="#">Terms of Use</a>
				<span> | </span>
				<a href="#">Legal</a>
				<span> | </span>
				<a href="#">Privacy</a>
				<span> | </span>
				<a href="#">Security</a>
			</div>
		</div>
	</section>
	<section class="footer-3">
		<div class="copyright">
			<p class="footer-sub cp">Hosting by <a class='footer-links' href="www.pinoywebhosting.com">Pinoy Web Hosting Philippines</a>. Web Design by <a href='www.websitepro.com' class='footer-links'>Websitepro</a> Powered by <a class='footer-links' href='www.mybusybee.net'>BUSYBEE</a></p>
		</div>
	</section>
</footer><!-- #colophon -->
</div><!-- #page -->
<?php wp_footer(); ?>
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<script src="http://www.franzduetes.com/wp-content/themes/franz/js/jquery.enllax.min.js"></script> 
<script>
	(function($){
            //Plugin activation
            $(window).enllax();
//            $('#some-id').enllax();
//            $('selector').enllax({
//                type: 'background', // 'foreground'
//                ratio: 0.5,
//                direction: 'vertical' // 'horizontal'
//            });
})(jQuery);
</script>
<script>
	$(window).on('load scroll', function() {
		var $e = $('.animated');
		console.log($e)
		$e.each(function(index){

			var $window = $(window);

			var docViewTop = $window.scrollTop();
			var docViewBottom = docViewTop + 20 + $window.height();
			var elemTop = $e.eq(index).offset().top;
			var elemBottom = elemTop + $e.eq(index).height();
			if (elemTop > docViewTop && elemBottom < docViewBottom){
				$e.eq(index).addClass("fadeIn").css('visibility', 'visible');
			}
		});
	});
</script>
</body>
</html>