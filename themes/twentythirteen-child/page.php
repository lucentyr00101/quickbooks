<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages and that other
 * 'pages' on your WordPress site will use a different template.
 *
 * @package WordPress
 * @subpackage Twenty_Thirteen
 * @since Twenty Thirteen 1.0
 */
get_header(); ?>
<div id="primary" class="content-area">
	<div id="content" class="site-content" role="main">
		<div class="top" data-enllax-ratio=".8">
			<div class="top-left">
				<p class='top-left-intro'>Quickbooks Online lets you see how your business is doing instantly.</p>
				<div class="sign-up-container">
					<p>Quickbook expert?</p>
					<input type="button" value="Sign up here" class="sign-up">
				</div>
				<div class="yes-btn-container">
					<p>I am looking for a Quickbook Expert</p>
					<input type="button" value="YES, take me there!" class="yes-btn">
				</div>
			</div>
			<div class="top-right">
				<img src="<?php echo get_stylesheet_directory_uri();?>/img/top2.png" alt=""><img src="" alt="">
			</div>
		</div>
		<div class="about">
			<div class="about-header">
				<span>ABOUT QUICKBOOKS</span>
			</div>
			<div class="tab">
				<img src="<?php echo get_stylesheet_directory_uri();?>/img/tab.png" alt="">
			</div>
			<div class="about-text">
				<p class='about-text-head'>QuickBooks makes it easy to work anywhere</p><br><br>
				<p>Access and manage your books from your computer, laptop, tablet, or smartphone anytime you choose.</p><br>
				<p>Create access privileges so that your colleague or accountant can login and work with your data online.</p><br>
				<p>Know exactly how much money you have and how much you owe at any moment - your data is synced and backed up automatically.</p>
			</div>
		</div>
		<div class="pricing">
			<div class="pricing-content">
				<div class="pricing-text">
					<span>"It gives me an overview of my business and lets me know how my business is doing."</span>
				</div>
				<div class="pricing-btn-container">
					<input type="button" value="PLANS & PRICING" class="pricing-btn">
				</div>
			</div>
		</div>
		<div class="features">
			<div class="features-text">
				<p class='features-text-head'>Send invoices on-the-go.</p><br><br>
				<p>Create and send custom online invoices from any device. The QuickBooks Online Mobile app automatically stores your data in the cloud and syncs across your devices, making it easy to manage your business on-the-go.</p><br>
				<div class="features-btn-container">
					<input type="button" value='SEE ALL FEATURES' class="features-btn">
				</div>
			</div>
			<div class="tab">
				<img src="<?php echo get_stylesheet_directory_uri();?>/img/pricing-img.png" alt="">
			</div>
		</div>
		<div class="expert">
			<div class="expert-text">
				<p class='expert-text-head'>Looking for Quickbook Expert?</p><br><br>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. </p><br>
				<div class="expert-btn-container">
					<input type="button" value='SIGN UP HERE' class="expert-btn">
				</div>
			</div>
		</div>
		<div class="who">
			<div class="who-text">
				<div class="who-head-content"><span class="who-head">ABOUT THE COMPANY</span><br><br></div>
				<p>MYBUSYBEE, INC., a VAS-licensed company under the National Telecommunications Commission, has developed and popularized the BUSYBEE brand in the SMS application and web design industry. BUSYBEE, a duly registered trademark under the Intellectual Property Office of the Philippines, describes our team working like a BEE to solve everyday problems. The company’s mission is to create high-quality and innovative applications that incorporate technology to unravel solutions for brands and companies. BUSYBEE designs and creates the dreams of our clients and codes them into reality.</p><br>
				<div class="who-btn-container">
					<input type="button" value='READ MORE' class="who-btn">
				</div>
			</div>
		</div>
	</div><!-- #content -->
</div><!-- #primary -->
<?php get_sidebar(); ?>
<?php get_footer(); ?>