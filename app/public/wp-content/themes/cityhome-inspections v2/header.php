<?php
/**
 * Header for the Home page of my theme
 *
 * @package jameelmaterial
 */
?>

<!DOCTYPE html>
<html <?php language_attributes(); ?>>
  <head>
    <meta charset="<?php bloginfo('charset'); ?>">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="google-site-verification" content="itLClUYT7mc-qQ-z8NaX_KWF7iSLH-OJ2nkH9SBB3M0" />
		<link rel="profile" href="https://gmpg.org/xfn/11">
    <?php wp_head(); ?>
  </head>
  <body <?php body_class(); ?>>
    <header id="top" class="site-header">
      <div class="site-header_header-top">
        <div class="wrapper">
          <a class="site-header_header-top--site-info" href="<?php echo site_url(); ?>">
            <h1 class="site-header_header-top--logo">
              <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/city-home-inspections-logo.svg" alt="<?php echo get_bloginfo( 'name' ); ?>"> 
              <span class="site-header_header-top--logo__title"><?php get_bloginfo( 'name' ); ?></span>
            </h1>
            <div class="site-header_header-top--description">
              <span><?php echo get_bloginfo('description'); ?></span>
            </div>
          </a>

          <div class="site-header_header-top--contact">
            <div class="site-header_header-top--contact__detail">
              <i class="icon icon-clock"></i>
              <h3>Open Weekdays</h3>
              <p>8AM - 5:30PM</p>
            </div>
            <a href="tel:414-403-7913">
              <div class="site-header_header-top--contact__detail">
                <i class="icon icon-phone"></i>
                <h3>Call Us Now!</h3>
                <p>414-403-7913</p>
              </div>
            </a>
            <a href="mailto:cityhomeinspec9847@gmail.com">
              <div class="site-header_header-top--contact__detail">
                <i class="icon icon-envelope"></i>
                <h3>Email Us</h3>
                <p>Send Email</p>
              </div>
            </a>
          </div>
        </div>
      </div>

      <div class="site-header__menu">

          <div class="site-header__menu-icon">
              <div class="site-header__menu-icon__middle"></div>
          </div>

        <nav class="site-header__main-navigation">
          <ul class="wrapper site-header__main-navigation-content">
            <li <?php if (is_front_page()) echo 'class="current-menu-item"' ?>>
              <a  class="nav-link" href="<?php if(is_front_page()) {echo '#start-here';}else{echo site_url('/');} ?>">Start Here</a>
            </li>
            <li <?php if (is_page('whats-included')) echo 'class="current-menu-item"' ?>>
              <a  class="nav-link"  href="<?php if(is_front_page()) {echo '#whats-included';}else{echo site_url('/whats-included');} ?>">What's Included?</a>
            </li>
            <li <?php if (get_post_type() == 'post') echo 'class="current-menu-item"' ?>>
              <a  class="nav-link"  href="<?php if(is_front_page()) {echo '#resources';}else{echo site_url('/resources');} ?>">Resources</a>
            </li>
            <li <?php if (is_page('our-story')) echo 'class="current-menu-item"' ?>>
              <a  class="nav-link" href="<?php echo site_url('/our-story') ?>">Our Story</a>
            </li>
          </ul>

          <div class="site-header__main-navigation_nav-cta"><a class="btn btn--green-outline" href="<?php if(is_page('request-inspection')) {echo '#';}else{echo site_url('/request-inspection');} ?>">Request an Inspection</a></div>

        </nav>
      </div>
    </header>
