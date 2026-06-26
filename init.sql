-- DohaQuest Bookings WordPress Database
-- Generated: 2026-06-26 03:46:54
-- Source: bookings.dohaquest.com

SET SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO';
SET time_zone = '+00:00';

-- ============================================================
-- wp_options
-- ============================================================

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('siteurl', 'SITE_URL_PLACEHOLDER', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('blogname', 'DohaQuest Tickets', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('blogdescription', '', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('admin_email', 'admin@dohaquest.com', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('blogpublic', '1', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('default_role', 'subscriber', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('permalink_structure', '/%postname%/', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('template', 'kadence', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('stylesheet', 'kadence', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('active_plugins', 'a:8:{i:0;s:59:"advanced-dynamic-pricing-for-woocommerce/advanced-dynamic-pricing-for-woocommerce.php";i:1;s:29:"elementor/elementor.php";i:2;s:43:"elementskit-lite/elementskit-lite.php";i:3;s:29:"forminator/forminator.php";i:4;s:73:"header-footer-builder-for-elementor/header-footer-builder-for-elementor.php";i:5;s:39:"page-scroll-to-id/page-scroll-to-id.php";i:6;s:27:"woocommerce/woocommerce.php";i:7;s:53:"wpos-booking-and-wallet/wpos-booking-and-wallet.php";}', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_currency', 'QAR', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_currency_pos', 'left', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_price_thousand_sep', ',', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_price_decimal_sep', '.', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_price_num_decimals', '2', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_default_country', 'QA', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_weight_unit', 'kg', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_dimension_unit', 'cm', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_calc_taxes', 'no', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_enable_guest_checkout', 'yes', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_enable_checkout_login_reminder', 'yes', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_enable_signup_and_login_from_checkout', 'yes', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_cart_page_id', '77', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_checkout_page_id', '78', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_myaccount_page_id', '79', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_shop_page_id', '76', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_terms_page_id', '186', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_store_address', 'Doha Oasis, Al Khaleej Street', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_store_city', 'Doha', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_default_country', 'QA', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_store_postcode', '', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('show_on_front', 'page', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('page_on_front', '15', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('page_for_posts', '0', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('posts_per_page', '10', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('date_format', 'F j, Y', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('time_format', 'g:i a', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('start_of_week', '0', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('upload_path', '', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('upload_url_path', '', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('thumbnail_size_w', '150', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('thumbnail_size_h', '150', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('medium_size_w', '300', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('medium_size_h', '300', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('large_size_w', '1024', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('large_size_h', '1024', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('db_version', '57155', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('initial_db_version', '57155', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('finished_splitting_shared_terms', '1', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('site_logo', '0', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_single_image_width', '600', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_thumbnail_image_width', '300', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_thumbnail_cropping', '1:1', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_checkout_privacy_policy_text', '', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_registration_privacy_policy_text', '', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_allowed_countries', 'all', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_ship_to_countries', '', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_enable_coupons', 'yes', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_calc_discounts_sequentially', 'no', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_email_from_name', 'DohaQuest Tickets', 'yes');
INSERT IGNORE INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES ('woocommerce_email_from_address', 'noreply@dohaquest.com', 'yes');

-- ============================================================
-- wp_users
-- ============================================================

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT IGNORE INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BDohaQuest2026AdminPass123456789', 'admin', 'admin@dohaquest.com', '', '2025-12-01 00:00:00', 0, 'DohaQuest Admin');


CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT IGNORE INTO `wp_usermeta` (`user_id`, `meta_key`, `meta_value`) VALUES (1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}');
INSERT IGNORE INTO `wp_usermeta` (`user_id`, `meta_key`, `meta_value`) VALUES (1, 'wp_user_level', '10');

-- ============================================================
-- wp_posts
-- ============================================================

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1414, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '		<div data-elementor-type="wp-page" data-elementor-id="1414" class="elementor elementor-1414">
				<div class="elementor-element elementor-element-367dc94e e-con-full e-flex e-con e-parent" data-id="367dc94e" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-4cdfbc8e elementor-widget__width-inherit elementor-arrows-position-inside elementor-widget elementor-widget-image-carousel" data-id="4cdfbc8e" data-element_type="widget" data-e-type="widget" data-settings="{&quot;slides_to_show&quot;:&quot;1&quot;,&quot;navigation&quot;:&quot;arrows&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;pause_on_hover&quot;:&quot;yes&quot;,&quot;pause_on_interaction&quot;:&quot;yes&quot;,&quot;autoplay_speed&quot;:5000,&quot;infinite&quot;:&quot;yes&quot;,&quot;effect&quot;:&quot;slide&quot;,&quot;speed&quot;:500}" data-widget_type="image-carousel.default">
							<div class="elementor-image-carousel-wrapper swiper" role="region" aria-roledescription="carousel" aria-label="Image Carousel" dir="ltr">
			<div class="elementor-image-carousel swiper-wrapper swiper-image-stretch" aria-live="off">
								<div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="1 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_51_jf9rFAYdTn7FO9Tqi8THih1JXUAYagRBpWY3cz9i-rmbu0jkjiwjai5t3xch3sgauaulmw90f5zz89v68cg.webp" alt="Hop aboard a caravan of off-road vehicles and race around the rocky lands of Oryxville on a pleasantly thrilling roller coaster adventure for the whole family." /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="2 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_31_nmSTXcQ6tLLL14hFc9Y6lFVYpZqJoyyNarKqaggG-rmbu0gr0yeffjbx7dt982z0giozj95p85m0ru1aev4.png" alt="Tumble and spin on a spectacular clockwork mechanism, marking the crossroads of past, present, and future. This thrilling centrepiece of the City of Imagination features rider-controlled inversions, allowing you to set the intensity to your preference as you roll along an undulating track." /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="3 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_29_8Ey8s7x74zd61BTQIB9SL66JVgyIBc1fe2vscBBt-rmbu0ft6rke57pykjaulih8zxb461glhthdacrbt1c.png" alt="Tumble and spin on a spectacular clockwork mechanism, marking the crossroads of past, present, and future. This thrilling centrepiece of the City of Imagination features rider-controlled inversions, allowing you to set the intensity to your preference as you roll along an undulating track." /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="4 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_33_HINZcFMetwVJrEakpCKr5NSvHjaD4fJwwdVj7kbl-rmbu0me23en5gzp0gvozhxl8307qjcbm6dxopp21ts.png" alt="Experience the world’s tallest indoor roller coaster at Doha Quest! Strap in for the ride of your life on EpiQ Coaster- the revolutionary solar-powered vessel endorsed by Spike the space-hedgehog. Experience thrilling speeds of 91 km/hr as you hurtle around Gravity Station. With exhilarating drops, twists and turns, this roller coaster in Qatar is not for the faint-hearted." /></figure></div>			</div>
												<div class="elementor-swiper-button elementor-swiper-button-prev" role="button" tabindex="0">
						<svg aria-hidden="true" class="e-font-icon-svg e-eicon-chevron-left" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg"><path d="M646 125C629 125 613 133 604 142L308 442C296 454 292 471 292 487 292 504 296 521 308 533L604 854C617 867 629 875 646 875 663 875 679 871 692 858 704 846 713 829 713 812 713 796 708 779 692 767L438 487 692 225C700 217 708 204 708 187 708 171 704 154 692 142 675 129 663 125 646 125Z"></path></svg>					</div>
					<div class="elementor-swiper-button elementor-swiper-button-next" role="button" tabindex="0">
						<svg aria-hidden="true" class="e-font-icon-svg e-eicon-chevron-right" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg"><path d="M696 533C708 521 713 504 713 487 713 471 708 454 696 446L400 146C388 133 375 125 354 125 338 125 325 129 313 142 300 154 292 171 292 187 292 204 296 221 308 233L563 492 304 771C292 783 288 800 288 817 288 833 296 850 308 863 321 871 338 875 354 875 371 875 388 867 400 854L696 533Z"></path></svg>					</div>
				
									</div>
						</div>
				</div>
		<div class="elementor-element elementor-element-7210d97 e-flex e-con-boxed e-con e-parent" data-id="7210d97" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-1075455 e-flex e-con-boxed e-con e-child" data-id="1075455" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-6a9937b e-con-full e-flex e-con e-child" data-id="6a9937b" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-0b290b3 elementor-widget elementor-widget-image" data-id="0b290b3" data-element_type="widget" data-e-type="widget" data-widget_type="image.default">
															<img fetchpriority="high" decoding="async" width="1024" height="684" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/PDiDfGB37ZaINbnIQ9POrB7hcvfT0egM1QBe0xIg-1024x684.jpg" class="attachment-large size-large wp-image-1431" alt="" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/05/PDiDfGB37ZaINbnIQ9POrB7hcvfT0egM1QBe0xIg-1024x684.jpg 1024w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/PDiDfGB37ZaINbnIQ9POrB7hcvfT0egM1QBe0xIg-300x200.jpg 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/PDiDfGB37ZaINbnIQ9POrB7hcvfT0egM1QBe0xIg-768x513.jpg 768w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/PDiDfGB37ZaINbnIQ9POrB7hcvfT0egM1QBe0xIg-600x401.jpg 600w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/PDiDfGB37ZaINbnIQ9POrB7hcvfT0egM1QBe0xIg.jpg 1150w" sizes="(max-width: 1024px) 100vw, 1024px" />															</div>
				</div>
		<div class="elementor-element elementor-element-397b23f e-con-full e-flex e-con e-child" data-id="397b23f" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-32aa5f5 elementor-widget elementor-widget-heading" data-id="32aa5f5" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h2 class="elementor-heading-title elementor-size-default">TEAMWORK MAKES THE DREAM WORK</h2>				</div>
								<p class="e-72f826d-c98d4ca e-paragraph-base" data-interaction-id="72f826d"  >
								Make your corporate events and team building in Qatar memorable with fun-filled, quality moments. We tailor each experience to your goals, group size, and budget, whether it’s a small team outing or a large-scale celebration. Let’s start creating your team’s next big adventure today.
					</p>
				</div>
					</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-e78c378 e-flex e-con-boxed e-con e-parent" data-id="e78c378" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-071abe9 e-flex e-con-boxed e-con e-child" data-id="071abe9" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-9a833ea e-con-full e-flex e-con e-child" data-id="9a833ea" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-115e535 elementor-widget elementor-widget-heading" data-id="115e535" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h2 class="elementor-heading-title elementor-size-default">BOOK YOUR EVENT</h2>				</div>
								<p class="e-218f706-00f8b7a e-paragraph-base" data-interaction-id="218f706"  >
								Enjoy the best rates for corporate party events and group activities in Qatar. Get in touch with the Quest Sales Team now!
					</p>
		<div class="elementor-element elementor-element-576f17a e-con-full e-flex e-con e-child" data-id="576f17a" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-ae6d3b5 elementor-widget elementor-widget-button" data-id="ae6d3b5" data-element_type="widget" data-e-type="widget" data-widget_type="button.default">
										<a class="elementor-button elementor-button-link elementor-size-sm" href="tel:44103444">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-icon">
				<svg aria-hidden="true" class="e-font-icon-svg e-fas-phone" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M493.4 24.6l-104-24c-11.3-2.6-22.9 3.3-27.5 13.9l-48 112c-4.2 9.8-1.4 21.3 6.9 28l60.6 49.6c-36 76.7-98.9 140.5-177.2 177.2l-49.6-60.6c-6.8-8.3-18.2-11.1-28-6.9l-112 48C3.9 366.5-2 378.1.6 389.4l24 104C27.1 504.2 36.7 512 48 512c256.1 0 464-207.5 464-464 0-11.2-7.7-20.9-18.6-23.4z"></path></svg>			</span>
									<span class="elementor-button-text">44103444</span>
					</span>
					</a>
								</div>
				<div class="elementor-element elementor-element-f7ae2e2 elementor-widget elementor-widget-button" data-id="f7ae2e2" data-element_type="widget" data-e-type="widget" data-widget_type="button.default">
										<a class="elementor-button elementor-button-link elementor-size-sm" href="mailto:sales@dohaquest.com">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-icon">
				<svg aria-hidden="true" class="e-font-icon-svg e-fas-at" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M256 8C118.941 8 8 118.919 8 256c0 137.059 110.919 248 248 248 48.154 0 95.342-14.14 135.408-40.223 12.005-7.815 14.625-24.288 5.552-35.372l-10.177-12.433c-7.671-9.371-21.179-11.667-31.373-5.129C325.92 429.757 291.314 440 256 440c-101.458 0-184-82.542-184-184S154.542 72 256 72c100.139 0 184 57.619 184 160 0 38.786-21.093 79.742-58.17 83.693-17.349-.454-16.91-12.857-13.476-30.024l23.433-121.11C394.653 149.75 383.308 136 368.225 136h-44.981a13.518 13.518 0 0 0-13.432 11.993l-.01.092c-14.697-17.901-40.448-21.775-59.971-21.775-74.58 0-137.831 62.234-137.831 151.46 0 65.303 36.785 105.87 96 105.87 26.984 0 57.369-15.637 74.991-38.333 9.522 34.104 40.613 34.103 70.71 34.103C462.609 379.41 504 307.798 504 232 504 95.653 394.023 8 256 8zm-21.68 304.43c-22.249 0-36.07-15.623-36.07-40.771 0-44.993 30.779-72.729 58.63-72.729 22.292 0 35.601 15.241 35.601 40.77 0 45.061-33.875 72.73-58.161 72.73z"></path></svg>			</span>
									<span class="elementor-button-text">sales@dohaquest.com</span>
					</span>
					</a>
								</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-186cd5f e-con-full e-flex e-con e-child" data-id="186cd5f" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-56b554d elementor-widget elementor-widget-image" data-id="56b554d" data-element_type="widget" data-e-type="widget" data-widget_type="image.default">
															<img decoding="async" width="1004" height="669" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/Pgw4mbP8SFPaQw09MtA7PfKbMRMjjsR00Iw3ahGs.jpg" class="attachment-large size-large wp-image-1435" alt="" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/05/Pgw4mbP8SFPaQw09MtA7PfKbMRMjjsR00Iw3ahGs.jpg 1004w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/Pgw4mbP8SFPaQw09MtA7PfKbMRMjjsR00Iw3ahGs-300x200.jpg 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/Pgw4mbP8SFPaQw09MtA7PfKbMRMjjsR00Iw3ahGs-768x512.jpg 768w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/Pgw4mbP8SFPaQw09MtA7PfKbMRMjjsR00Iw3ahGs-600x400.jpg 600w" sizes="(max-width: 1004px) 100vw, 1004px" />															</div>
				</div>
					</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-0072061 e-flex e-con-boxed e-con e-parent" data-id="0072061" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-ea37295 elementor-widget elementor-widget-heading" data-id="ea37295" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h3 class="elementor-heading-title elementor-size-default">Make your team day out extra memorable!</h3>				</div>
				<div class="elementor-element elementor-element-11d7213 elementor-widget elementor-widget-text-editor" data-id="11d7213" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Make your corporate event seamless. Check <a href="https://dohaquest.com/en/visit">Plan Your Visit</a> for everything you need to know in advance, use the <a href="https://dohaquest.com/en/park">Park Map</a> to chart the best route for your team, and <a href="https://dohaquest.com/en/contact">contact us</a> to get tailored advice!</p>								</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-ca2cdbc e-flex e-con-boxed e-con e-parent" data-id="ca2cdbc" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-53f597f elementor-widget elementor-widget-spacer" data-id="53f597f" data-element_type="widget" data-e-type="widget" data-widget_type="spacer.default">
							<div class="elementor-spacer">
			<div class="elementor-spacer-inner"></div>
		</div>
						</div>
					</div>
				</div>
				</div>
		', 'Corporate / MICE Booking', '', 'publish', 'closed', 'closed', '', 'corporate-mice-booking', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?page_id=1414', 0, 'page', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1412, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '		<div data-elementor-type="wp-page" data-elementor-id="1412" class="elementor elementor-1412">
				<div class="elementor-element elementor-element-4f93a22 e-con-full e-flex e-con e-parent" data-id="4f93a22" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-cbe1c55 elementor-widget__width-inherit elementor-arrows-position-inside elementor-widget elementor-widget-image-carousel" data-id="cbe1c55" data-element_type="widget" data-e-type="widget" data-settings="{&quot;slides_to_show&quot;:&quot;1&quot;,&quot;navigation&quot;:&quot;arrows&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;pause_on_hover&quot;:&quot;yes&quot;,&quot;pause_on_interaction&quot;:&quot;yes&quot;,&quot;autoplay_speed&quot;:5000,&quot;infinite&quot;:&quot;yes&quot;,&quot;effect&quot;:&quot;slide&quot;,&quot;speed&quot;:500}" data-widget_type="image-carousel.default">
							<div class="elementor-image-carousel-wrapper swiper" role="region" aria-roledescription="carousel" aria-label="Image Carousel" dir="ltr">
			<div class="elementor-image-carousel swiper-wrapper swiper-image-stretch" aria-live="off">
								<div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="1 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_51_jf9rFAYdTn7FO9Tqi8THih1JXUAYagRBpWY3cz9i-rmbu0jkjiwjai5t3xch3sgauaulmw90f5zz89v68cg.webp" alt="Hop aboard a caravan of off-road vehicles and race around the rocky lands of Oryxville on a pleasantly thrilling roller coaster adventure for the whole family." /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="2 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_31_nmSTXcQ6tLLL14hFc9Y6lFVYpZqJoyyNarKqaggG-rmbu0gr0yeffjbx7dt982z0giozj95p85m0ru1aev4.png" alt="Tumble and spin on a spectacular clockwork mechanism, marking the crossroads of past, present, and future. This thrilling centrepiece of the City of Imagination features rider-controlled inversions, allowing you to set the intensity to your preference as you roll along an undulating track." /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="3 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_29_8Ey8s7x74zd61BTQIB9SL66JVgyIBc1fe2vscBBt-rmbu0ft6rke57pykjaulih8zxb461glhthdacrbt1c.png" alt="Tumble and spin on a spectacular clockwork mechanism, marking the crossroads of past, present, and future. This thrilling centrepiece of the City of Imagination features rider-controlled inversions, allowing you to set the intensity to your preference as you roll along an undulating track." /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="4 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_33_HINZcFMetwVJrEakpCKr5NSvHjaD4fJwwdVj7kbl-rmbu0me23en5gzp0gvozhxl8307qjcbm6dxopp21ts.png" alt="Experience the world’s tallest indoor roller coaster at Doha Quest! Strap in for the ride of your life on EpiQ Coaster- the revolutionary solar-powered vessel endorsed by Spike the space-hedgehog. Experience thrilling speeds of 91 km/hr as you hurtle around Gravity Station. With exhilarating drops, twists and turns, this roller coaster in Qatar is not for the faint-hearted." /></figure></div>			</div>
												<div class="elementor-swiper-button elementor-swiper-button-prev" role="button" tabindex="0">
						<svg aria-hidden="true" class="e-font-icon-svg e-eicon-chevron-left" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg"><path d="M646 125C629 125 613 133 604 142L308 442C296 454 292 471 292 487 292 504 296 521 308 533L604 854C617 867 629 875 646 875 663 875 679 871 692 858 704 846 713 829 713 812 713 796 708 779 692 767L438 487 692 225C700 217 708 204 708 187 708 171 704 154 692 142 675 129 663 125 646 125Z"></path></svg>					</div>
					<div class="elementor-swiper-button elementor-swiper-button-next" role="button" tabindex="0">
						<svg aria-hidden="true" class="e-font-icon-svg e-eicon-chevron-right" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg"><path d="M696 533C708 521 713 504 713 487 713 471 708 454 696 446L400 146C388 133 375 125 354 125 338 125 325 129 313 142 300 154 292 171 292 187 292 204 296 221 308 233L563 492 304 771C292 783 288 800 288 817 288 833 296 850 308 863 321 871 338 875 354 875 371 875 388 867 400 854L696 533Z"></path></svg>					</div>
				
									</div>
						</div>
				</div>
		<div class="elementor-element elementor-element-19c5e2b e-flex e-con-boxed e-con e-parent" data-id="19c5e2b" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-fde260f e-con-full e-flex e-con e-child" data-id="fde260f" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-3685fd1 elementor-widget elementor-widget-text-editor" data-id="3685fd1" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Experience record-breaking thrills at Doha Quest with EpiQ Coaster (roller coaster!) and other unique rides such as the Magma Blast (drop tower)! Doha Quest brings you an exciting world of indoor adventure with the best games and rides in Qatar. Whether you’re craving adrenaline or raring for a full day of playing with friends and family, you will love our variety of indoor activities in Qatar. Join the quest today!</p>								</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-760d2a40 e-flex e-con-boxed e-con e-parent" data-id="760d2a40" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-4b67bef4 elementor-widget elementor-widget-heading" data-id="4b67bef4" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h3 class="elementor-heading-title elementor-size-default">30+ Rides and Attractions Under One Roof</h3>				</div>
				<div class="elementor-element elementor-element-712cfbd9 elementor-widget elementor-widget-text-editor" data-id="712cfbd9" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Get ready for thrill rides that get your heart pumping and adventure zones that pull you into another world. It’s an experience unlike any other theme park in Qatar!</p>								</div>
				<div class="elementor-element elementor-element-7c462dd7 elementor-arrows-position-inside elementor-pagination-position-outside elementor-widget elementor-widget-image-carousel" data-id="7c462dd7" data-element_type="widget" data-e-type="widget" data-settings="{&quot;slides_to_show&quot;:&quot;3&quot;,&quot;navigation&quot;:&quot;both&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;pause_on_hover&quot;:&quot;yes&quot;,&quot;pause_on_interaction&quot;:&quot;yes&quot;,&quot;autoplay_speed&quot;:5000,&quot;infinite&quot;:&quot;yes&quot;,&quot;speed&quot;:500}" data-widget_type="image-carousel.default">
							<div class="elementor-image-carousel-wrapper swiper" role="region" aria-roledescription="carousel" aria-label="Image Carousel" dir="ltr">
			<div class="elementor-image-carousel swiper-wrapper swiper-image-stretch" aria-live="off">
								<div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="1 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_jtDzoeyKTx5xiOq5px4bbzOTZJBUERjnbxlFunIq-2-300x300.png" alt="FOR JUNIORS" /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="2 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_33_HINZcFMetwVJrEakpCKr5NSvHjaD4fJwwdVj7kbl-300x300.png" alt="Experience the world’s tallest indoor roller coaster at Doha Quest! Strap in for the ride of your life on EpiQ Coaster- the revolutionary solar-powered vessel endorsed by Spike the space-hedgehog. Experience thrilling speeds of 91 km/hr as you hurtle around Gravity Station. With exhilarating drops, twists and turns, this roller coaster in Qatar is not for the faint-hearted." /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="3 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_32_mlGuudfobcTRGVX7oYWDsEgFxkz9bPlozPNSwoyz-300x300.jpg" alt="No theme park experience is complete without a Carousel. This classic attraction offers timeless fun for the entire family to enjoy!" /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="4 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_46_Nv9GOagdAaG2V1MHhEunsUidaD8uAMEEJ2ZRE8D7-300x300.webp" alt="We don&#039;t call it the City of Imagination for nothing, it&#039;s everything you want to imagine yourself experiencing." /></figure></div>			</div>
												<div class="elementor-swiper-button elementor-swiper-button-prev" role="button" tabindex="0">
						<svg aria-hidden="true" class="e-font-icon-svg e-eicon-chevron-left" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg"><path d="M646 125C629 125 613 133 604 142L308 442C296 454 292 471 292 487 292 504 296 521 308 533L604 854C617 867 629 875 646 875 663 875 679 871 692 858 704 846 713 829 713 812 713 796 708 779 692 767L438 487 692 225C700 217 708 204 708 187 708 171 704 154 692 142 675 129 663 125 646 125Z"></path></svg>					</div>
					<div class="elementor-swiper-button elementor-swiper-button-next" role="button" tabindex="0">
						<svg aria-hidden="true" class="e-font-icon-svg e-eicon-chevron-right" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg"><path d="M696 533C708 521 713 504 713 487 713 471 708 454 696 446L400 146C388 133 375 125 354 125 338 125 325 129 313 142 300 154 292 171 292 187 292 204 296 221 308 233L563 492 304 771C292 783 288 800 288 817 288 833 296 850 308 863 321 871 338 875 354 875 371 875 388 867 400 854L696 533Z"></path></svg>					</div>
				
									<div class="swiper-pagination"></div>
									</div>
						</div>
				<div class="elementor-element elementor-element-331cbc30 elementor-button-info elementor-align-center elementor-widget elementor-widget-button" data-id="331cbc30" data-element_type="widget" data-e-type="widget" data-widget_type="button.default">
										<a class="elementor-button elementor-button-link elementor-size-sm" href="https://dohaquest.com/en/rides" target="_blank" rel="nofollow">
						<span class="elementor-button-content-wrapper">
									<span class="elementor-button-text">Explore Our Rides</span>
					</span>
					</a>
								</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-65a1007 e-flex e-con-boxed e-con e-parent" data-id="65a1007" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-ae889f0 elementor-widget elementor-widget-elementskit-tablepress" data-id="ae889f0" data-element_type="widget" data-e-type="widget" data-widget_type="elementskit-tablepress.default">
				<div class="elementor-widget-container">
					<div class="elemenetskit-tablepress ekit-wid-con" id="ekit_tablepress_ae889f0"><h2 id="tablepress-2-name" class="tablepress-table-name tablepress-table-name-id-2">List of Rides</h2>

<table id="tablepress-2" class="tablepress tablepress-id-2" aria-labelledby="tablepress-2-name">
<tbody class="row-striping row-hover">
<tr class="row-1">
	<td class="column-1">Magma Blast</td><td class="column-2">EpiQ Coaster</td><td class="column-3">iFly Quest</td>
</tr>
<tr class="row-2">
	<td class="column-1">Quest for Speed</td><td class="column-2">Gravity Swing</td><td class="column-3">Aero Flip</td>
</tr>
<tr class="row-3">
	<td class="column-1">Time Tumbler</td><td class="column-2">Robomania</td><td class="column-3">Laser Oasis</td>
</tr>
<tr class="row-4">
	<td class="column-1">Time Travel</td><td class="column-2">Gravity Wheel</td><td class="column-3">Oryx Express</td>
</tr>
<tr class="row-5">
	<td class="column-1">VR Fun Station</td><td class="column-2">Spike\'s Astro Tower</td><td class="column-3">Fly with Flap</td>
</tr>
<tr class="row-6">
	<td class="column-1">Glide with Firnas</td><td class="column-2">Magis\' Wonder Zone</td><td class="column-3">Carousel</td>
</tr>
<tr class="row-7">
	<td class="column-1">Wings of Destiny</td><td class="column-2">Legend of the Golden Oryx</td><td class="column-3">Dune Bashers</td>
</tr>
<tr class="row-8">
	<td class="column-1">Roll-A-Ball</td><td class="column-2">Balloon Bust</td><td class="column-3">Hot Shot Basketball</td>
</tr>
<tr class="row-9">
	<td class="column-1">Hammer Blast</td><td class="column-2">Playground</td><td class="column-3">Reef Jump</td>
</tr>
<tr class="row-10">
	<td class="column-1">Pirate Ship</td><td class="column-2">Mini Ferris Wheel</td><td class="column-3">Magic Bike</td>
</tr>
<tr class="row-11">
	<td class="column-1">Jumpin\' Star</td><td class="column-2">Sky Spin</td><td class="column-3">Space Twister</td>
</tr>
<tr class="row-12">
	<td class="column-1">Breakdance</td><td class="column-2"></td><td class="column-3"></td>
</tr>
</tbody>
</table>
<!-- #tablepress-2 from cache --></div>				</div>
				</div>
				<div class="elementor-element elementor-element-6ff19e8 elementor-widget elementor-widget-spacer" data-id="6ff19e8" data-element_type="widget" data-e-type="widget" data-widget_type="spacer.default">
							<div class="elementor-spacer">
			<div class="elementor-spacer-inner"></div>
		</div>
						</div>
					</div>
				</div>
				</div>
		', 'Rides &#038; Attractions', '', 'publish', 'closed', 'closed', '', 'rides-and-attractions', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?page_id=1412', 0, 'page', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1410, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '		<div data-elementor-type="wp-page" data-elementor-id="1410" class="elementor elementor-1410">
				<div class="elementor-element elementor-element-20960632 e-con-full e-flex e-con e-parent" data-id="20960632" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-706d8906 elementor-widget elementor-widget-shortcode" data-id="706d8906" data-element_type="widget" data-e-type="widget" data-widget_type="shortcode.default">
							<div class="elementor-shortcode">		<div id="image_gallery_1195" class="row all-images">
			<div class="slider-pro" id="my-slider-1195">
				<div class="sp-slides">
					Sorry! No media slider found				</div>
							</div>
		</div>
		<style>
	.title-css {
		font-size: 18px;
		font-weight: bolder;
		text-transform: uppercase;
	}

	.desc-css {
		font-size: 16px;
	}

	.caption-css {
		font-size: 16px;
		font-weight: bolder;
		text-transform: uppercase;
	}

	a.sp-video:after {
		box-sizing: unset;
	}

	</style>
<script type="application/javascript">
	jQuery(document).ready(function (jQuery) {
		jQuery("#my-slider-1195").sliderPro({
			width: 960,
			height: 540,
			//Slide
			centerImage: true,
			allowScaleUp: true,
			autoSlideSize: false,
			autoHeight: true,
			shuffle: false,
			loop: true,
			visibleSize: \'auto\',
			waitForLayers: false,
			autoScaleLayers: true,
			//Auto
			autoplay: true,
			autoplayDelay: 5000,
			autoplayOnHover: \'pause\',
			//Navigation
			arrows: true,
			fadeArrows: false,
			buttons: false,
			keyboard: false,
			fullScreen: false,
			fadeFullScreen: false,
			//Video
			playVideoAction: \'stopAutoplay\',
			pauseVideoAction: \'none\',
			//Thumbnails
			thumbnailWidth: 200,
			thumbnailHeight: 100,
			thumbnailsPosition: \'top\',
			thumbnailArrows: true,
			fadeThumbnailArrows: false,
			thumbnailTouchSwipe: true		});
	});
</script></div>
						</div>
				</div>
		<div class="elementor-element elementor-element-885e2c2 e-flex e-con-boxed e-con e-parent" data-id="885e2c2" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-7e86943 elementor-widget elementor-widget-heading" data-id="7e86943" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h2 class="elementor-heading-title elementor-size-default">Doha Quest Theme Park</h2>				</div>
				<div class="elementor-element elementor-element-c0bf6af elementor-widget elementor-widget-text-editor" data-id="c0bf6af" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Dare to try the world’s tallest indoor roller coaster and take the plunge on the world’s tallest indoor drop tower ride. Then enter our immersive Time Realms, where ancient lands, futuristic cities and intergalactic stations come to life. With over 30 rides and attractions, Quest theme park in Doha is the ultimate indoor, immersive experience all year round. Your Quest for adventure starts here!</p>								</div>
				<div class="elementor-element elementor-element-f451834 elementor-widget elementor-widget-image" data-id="f451834" data-element_type="widget" data-e-type="widget" data-widget_type="image.default">
															<img decoding="async" width="300" height="300" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-300x300.png" class="attachment-medium size-medium wp-image-899" alt="" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-300x300.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-150x150.png 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-768x769.png 768w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-600x601.png 600w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-100x100.png 100w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1.png 960w" sizes="(max-width: 300px) 100vw, 300px" />															</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-1dcbb968 e-flex e-con-boxed e-con e-parent" data-id="1dcbb968" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-459b4783 elementor-widget elementor-widget-heading" data-id="459b4783" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h3 class="elementor-heading-title elementor-size-default">Non-Stop Fun at Doha Oasis</h3>				</div>
				<div class="elementor-element elementor-element-5b872c79 elementor-widget elementor-widget-text-editor" data-id="5b872c79" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>The top choice for magic, excitement, and unforgettable memories in Qatar</p>								</div>
		<div class="elementor-element elementor-element-7d32a7b3 e-grid e-con-full e-con e-child" data-id="7d32a7b3" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-77006f59 elementor-view-default elementor-position-block-start elementor-mobile-position-block-start elementor-widget elementor-widget-icon-box" data-id="77006f59" data-element_type="widget" data-e-type="widget" data-widget_type="icon-box.default">
							<div class="elementor-icon-box-wrapper">

						<div class="elementor-icon-box-icon">
				<span  class="elementor-icon">
				<svg aria-hidden="true" class="e-font-icon-svg e-far-snowflake" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M440.1 355.2l-39.2-23 34.1-9.3c8.4-2.3 13.4-11.1 11.1-19.6l-4.1-15.5c-2.2-8.5-10.9-13.6-19.3-11.3L343 298.2 271.2 256l71.9-42.2 79.7 21.7c8.4 2.3 17-2.8 19.3-11.3l4.1-15.5c2.2-8.5-2.7-17.3-11.1-19.6l-34.1-9.3 39.2-23c7.5-4.4 10.1-14.2 5.8-21.9l-7.9-13.9c-4.3-7.7-14-10.3-21.5-5.9l-39.2 23 9.1-34.7c2.2-8.5-2.7-17.3-11.1-19.6l-15.2-4.1c-8.4-2.3-17 2.8-19.3 11.3l-21.3 81-71.9 42.2v-84.5L306 70.4c6.1-6.2 6.1-16.4 0-22.6l-11.1-11.3c-6.1-6.2-16.1-6.2-22.2 0l-24.9 25.4V16c0-8.8-7-16-15.7-16h-15.7c-8.7 0-15.7 7.2-15.7 16v46.1l-24.9-25.4c-6.1-6.2-16.1-6.2-22.2 0L142.1 48c-6.1 6.2-6.1 16.4 0 22.6l58.3 59.3v84.5l-71.9-42.2-21.3-81c-2.2-8.5-10.9-13.6-19.3-11.3L72.7 84c-8.4 2.3-13.4 11.1-11.1 19.6l9.1 34.7-39.2-23c-7.5-4.4-17.1-1.8-21.5 5.9l-7.9 13.9c-4.3 7.7-1.8 17.4 5.8 21.9l39.2 23-34.1 9.1c-8.4 2.3-13.4 11.1-11.1 19.6L6 224.2c2.2 8.5 10.9 13.6 19.3 11.3l79.7-21.7 71.9 42.2-71.9 42.2-79.7-21.7c-8.4-2.3-17 2.8-19.3 11.3l-4.1 15.5c-2.2 8.5 2.7 17.3 11.1 19.6l34.1 9.3-39.2 23c-7.5 4.4-10.1 14.2-5.8 21.9L10 391c4.3 7.7 14 10.3 21.5 5.9l39.2-23-9.1 34.7c-2.2 8.5 2.7 17.3 11.1 19.6l15.2 4.1c8.4 2.3 17-2.8 19.3-11.3l21.3-81 71.9-42.2v84.5l-58.3 59.3c-6.1 6.2-6.1 16.4 0 22.6l11.1 11.3c6.1 6.2 16.1 6.2 22.2 0l24.9-25.4V496c0 8.8 7 16 15.7 16h15.7c8.7 0 15.7-7.2 15.7-16v-46.1l24.9 25.4c6.1 6.2 16.1 6.2 22.2 0l11.1-11.3c6.1-6.2 6.1-16.4 0-22.6l-58.3-59.3v-84.5l71.9 42.2 21.3 81c2.2 8.5 10.9 13.6 19.3 11.3L375 428c8.4-2.3 13.4-11.1 11.1-19.6l-9.1-34.7 39.2 23c7.5 4.4 17.1 1.8 21.5-5.9l7.9-13.9c4.6-7.5 2.1-17.3-5.5-21.7z"></path></svg>				</span>
			</div>
			
						<div class="elementor-icon-box-content">

									<h3 class="elementor-icon-box-title">
						<span  >
							Climate Controlled						</span>
					</h3>
				
									<p class="elementor-icon-box-description">
						All-weather comfort and fun					</p>
				
			</div>
			
		</div>
						</div>
				<div class="elementor-element elementor-element-1457409a elementor-view-default elementor-position-block-start elementor-mobile-position-block-start elementor-widget elementor-widget-icon-box" data-id="1457409a" data-element_type="widget" data-e-type="widget" data-widget_type="icon-box.default">
							<div class="elementor-icon-box-wrapper">

						<div class="elementor-icon-box-icon">
				<span  class="elementor-icon">
				<svg aria-hidden="true" class="e-font-icon-svg e-fas-ticket-alt" viewBox="0 0 576 512" xmlns="http://www.w3.org/2000/svg"><path d="M128 160h320v192H128V160zm400 96c0 26.51 21.49 48 48 48v96c0 26.51-21.49 48-48 48H48c-26.51 0-48-21.49-48-48v-96c26.51 0 48-21.49 48-48s-21.49-48-48-48v-96c0-26.51 21.49-48 48-48h480c26.51 0 48 21.49 48 48v96c-26.51 0-48 21.49-48 48zm-48-104c0-13.255-10.745-24-24-24H120c-13.255 0-24 10.745-24 24v208c0 13.255 10.745 24 24 24h336c13.255 0 24-10.745 24-24V152z"></path></svg>				</span>
			</div>
			
						<div class="elementor-icon-box-content">

									<h3 class="elementor-icon-box-title">
						<span  >
							All-Access Tickets						</span>
					</h3>
				
									<p class="elementor-icon-box-description">
						Ride everything with one pass					</p>
				
			</div>
			
		</div>
						</div>
				<div class="elementor-element elementor-element-5990be7d elementor-view-default elementor-position-block-start elementor-mobile-position-block-start elementor-widget elementor-widget-icon-box" data-id="5990be7d" data-element_type="widget" data-e-type="widget" data-widget_type="icon-box.default">
							<div class="elementor-icon-box-wrapper">

						<div class="elementor-icon-box-icon">
				<span  class="elementor-icon">
				<svg aria-hidden="true" class="e-font-icon-svg e-fas-certificate" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M458.622 255.92l45.985-45.005c13.708-12.977 7.316-36.039-10.664-40.339l-62.65-15.99 17.661-62.015c4.991-17.838-11.829-34.663-29.661-29.671l-61.994 17.667-15.984-62.671C337.085.197 313.765-6.276 300.99 7.228L256 53.57 211.011 7.229c-12.63-13.351-36.047-7.234-40.325 10.668l-15.984 62.671-61.995-17.667C74.87 57.907 58.056 74.738 63.046 92.572l17.661 62.015-62.65 15.99C.069 174.878-6.31 197.944 7.392 210.915l45.985 45.005-45.985 45.004c-13.708 12.977-7.316 36.039 10.664 40.339l62.65 15.99-17.661 62.015c-4.991 17.838 11.829 34.663 29.661 29.671l61.994-17.667 15.984 62.671c4.439 18.575 27.696 24.018 40.325 10.668L256 458.61l44.989 46.001c12.5 13.488 35.987 7.486 40.325-10.668l15.984-62.671 61.994 17.667c17.836 4.994 34.651-11.837 29.661-29.671l-17.661-62.015 62.65-15.99c17.987-4.302 24.366-27.367 10.664-40.339l-45.984-45.004z"></path></svg>				</span>
			</div>
			
						<div class="elementor-icon-box-content">

									<h3 class="elementor-icon-box-title">
						<span  >
							Guinness Record Thrills						</span>
					</h3>
				
									<p class="elementor-icon-box-description">
						EpiQ Coaster &amp; Magma Blast – the tallest indoor rides in the world, officially certified by Guinness					</p>
				
			</div>
			
		</div>
						</div>
				<div class="elementor-element elementor-element-c580cc3 elementor-view-default elementor-position-block-start elementor-mobile-position-block-start elementor-widget elementor-widget-icon-box" data-id="c580cc3" data-element_type="widget" data-e-type="widget" data-widget_type="icon-box.default">
							<div class="elementor-icon-box-wrapper">

						<div class="elementor-icon-box-icon">
				<span  class="elementor-icon">
				<svg aria-hidden="true" class="e-font-icon-svg e-fab-connectdevelop" viewBox="0 0 576 512" xmlns="http://www.w3.org/2000/svg"><path d="M550.5 241l-50.089-86.786c1.071-2.142 1.875-4.553 1.875-7.232 0-8.036-6.696-14.733-14.732-15.001l-55.447-95.893c.536-1.607 1.071-3.214 1.071-4.821 0-8.571-6.964-15.268-15.268-15.268-4.821 0-8.839 2.143-11.786 5.625H299.518C296.839 18.143 292.821 16 288 16s-8.839 2.143-11.518 5.625H170.411C167.464 18.143 163.447 16 158.625 16c-8.303 0-15.268 6.696-15.268 15.268 0 1.607.536 3.482 1.072 4.821l-55.983 97.233c-5.356 2.41-9.107 7.5-9.107 13.661 0 .535.268 1.071.268 1.607l-53.304 92.143c-7.232 1.339-12.59 7.5-12.59 15 0 7.232 5.089 13.393 12.054 15l55.179 95.358c-.536 1.607-.804 2.946-.804 4.821 0 7.232 5.089 13.393 12.054 14.732l51.697 89.732c-.536 1.607-1.071 3.482-1.071 5.357 0 8.571 6.964 15.268 15.268 15.268 4.821 0 8.839-2.143 11.518-5.357h106.875C279.161 493.857 283.447 496 288 496s8.839-2.143 11.518-5.357h107.143c2.678 2.946 6.696 4.821 10.982 4.821 8.571 0 15.268-6.964 15.268-15.268 0-1.607-.267-2.946-.803-4.285l51.697-90.268c6.964-1.339 12.054-7.5 12.054-14.732 0-1.607-.268-3.214-.804-4.821l54.911-95.358c6.964-1.339 12.322-7.5 12.322-15-.002-7.232-5.092-13.393-11.788-14.732zM153.535 450.732l-43.66-75.803h43.66v75.803zm0-83.839h-43.66c-.268-1.071-.804-2.142-1.339-3.214l44.999-47.41v50.624zm0-62.411l-50.357 53.304c-1.339-.536-2.679-1.34-4.018-1.607L43.447 259.75c.535-1.339.535-2.679.535-4.018s0-2.41-.268-3.482l51.965-90c2.679-.268 5.357-1.072 7.768-2.679l50.089 51.965v92.946zm0-102.322l-45.803-47.41c1.339-2.143 2.143-4.821 2.143-7.767 0-.268-.268-.804-.268-1.072l43.928-15.804v72.053zm0-80.625l-43.66 15.804 43.66-75.536v59.732zm326.519 39.108l.804 1.339L445.5 329.125l-63.75-67.232 98.036-101.518.268.268zM291.75 355.107l11.518 11.786H280.5l11.25-11.786zm-.268-11.25l-83.303-85.446 79.553-84.375 83.036 87.589-79.286 82.232zm5.357 5.893l79.286-82.232 67.5 71.25-5.892 28.125H313.714l-16.875-17.143zM410.411 44.393c1.071.536 2.142 1.072 3.482 1.34l57.857 100.714v.536c0 2.946.803 5.624 2.143 7.767L376.393 256l-83.035-87.589L410.411 44.393zm-9.107-2.143L287.732 162.518l-57.054-60.268 166.339-60h4.287zm-123.483 0c2.678 2.678 6.16 4.285 10.179 4.285s7.5-1.607 10.179-4.285h75L224.786 95.821 173.893 42.25h103.928zm-116.249 5.625l1.071-2.142a33.834 33.834 0 0 0 2.679-.804l51.161 53.84-54.911 19.821V47.875zm0 79.286l60.803-21.964 59.732 63.214-79.553 84.107-40.982-42.053v-83.304zm0 92.678L198 257.607l-36.428 38.304v-76.072zm0 87.858l42.053-44.464 82.768 85.982-17.143 17.678H161.572v-59.196zm6.964 162.053c-1.607-1.607-3.482-2.678-5.893-3.482l-1.071-1.607v-89.732h99.91l-91.607 94.821h-1.339zm129.911 0c-2.679-2.41-6.428-4.285-10.447-4.285s-7.767 1.875-10.447 4.285h-96.429l91.607-94.821h38.304l91.607 94.821H298.447zm120-11.786l-4.286 7.5c-1.339.268-2.41.803-3.482 1.339l-89.196-91.875h114.376l-17.412 83.036zm12.856-22.232l12.858-60.803h21.964l-34.822 60.803zm34.822-68.839h-20.357l4.553-21.16 17.143 18.214c-.535.803-1.071 1.874-1.339 2.946zm66.161-107.411l-55.447 96.697c-1.339.535-2.679 1.071-4.018 1.874l-20.625-21.964 34.554-163.928 45.803 79.286c-.267 1.339-.803 2.678-.803 4.285 0 1.339.268 2.411.536 3.75z"></path></svg>				</span>
			</div>
			
						<div class="elementor-icon-box-content">

									<h3 class="elementor-icon-box-title">
						<span  >
							Exclusive Rides						</span>
					</h3>
				
									<p class="elementor-icon-box-description">
						Rides exclusive to Doha Quest					</p>
				
			</div>
			
		</div>
						</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-1d3d78a6 e-flex e-con-boxed e-con e-parent" data-id="1d3d78a6" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-5a2376b elementor-widget elementor-widget-heading" data-id="5a2376b" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h3 class="elementor-heading-title elementor-size-default">Plan Your Visit</h3>				</div>
				<div class="elementor-element elementor-element-4ae4401e elementor-widget elementor-widget-text-editor" data-id="4ae4401e" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Make the most of your day at the most well-loved amusement park in Qatar!</p>								</div>
				<div class="elementor-element elementor-element-7b4ade7f elementor-widget elementor-widget-heading" data-id="7b4ade7f" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h3 class="elementor-heading-title elementor-size-default">Operating Hours</h3>				</div>
		<div class="elementor-element elementor-element-391f1fbf e-con-full e-flex e-con e-child" data-id="391f1fbf" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-20aeb66a elementor-widget elementor-widget-tablepress-table" data-id="20aeb66a" data-element_type="widget" data-e-type="widget" data-widget_type="tablepress-table.default">
					
<table id="tablepress-1" class="tablepress tablepress-id-1 tbody-has-connected-cells">
<thead>
<tr class="row-1">
	<th class="column-1">Operation Day</th><th class="column-2">Opening Time</th><th class="column-3">Closing Time</th>
</tr>
</thead>
<tbody class="row-striping row-hover">
<tr class="row-2">
	<td class="column-1">Sunday</td><td colspan="2" class="column-2">Park is closed every Sunday</td>
</tr>
<tr class="row-3">
	<td class="column-1">Monday</td><td class="column-2">2:00PM</td><td class="column-3">10:00PM</td>
</tr>
<tr class="row-4">
	<td class="column-1">Tuesday</td><td class="column-2">2:00PM</td><td class="column-3">10:00PM</td>
</tr>
<tr class="row-5">
	<td class="column-1">Wednesday</td><td class="column-2">2:00PM</td><td class="column-3">10:00PM</td>
</tr>
<tr class="row-6">
	<td class="column-1">Thursday</td><td class="column-2">2:00PM</td><td class="column-3">10:00PM</td>
</tr>
<tr class="row-7">
	<td class="column-1">Friday</td><td class="column-2">2:00PM</td><td class="column-3">10:00PM</td>
</tr>
<tr class="row-8">
	<td class="column-1">Saturday</td><td class="column-2">2:00PM</td><td class="column-3">10:00PM</td>
</tr>
</tbody>
</table>
<!-- #tablepress-1 from cache -->				</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-614b31ce e-flex e-con-boxed e-con e-parent" data-id="614b31ce" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-2eb976a7 e-con-full e-flex e-con e-child" data-id="2eb976a7" data-element_type="container" data-e-type="container">
		<div class="elementor-element elementor-element-6c6e46cf e-con-full e-flex e-con e-child" data-id="6c6e46cf" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-5c29266e elementor-view-default elementor-widget elementor-widget-icon" data-id="5c29266e" data-element_type="widget" data-e-type="widget" data-widget_type="icon.default">
							<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg aria-hidden="true" class="e-font-icon-svg e-fas-location-arrow" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M444.52 3.52L28.74 195.42c-47.97 22.39-31.98 92.75 19.19 92.75h175.91v175.91c0 51.17 70.36 67.17 92.75 19.19l191.9-415.78c15.99-38.39-25.59-79.97-63.97-63.97z"></path></svg>			</div>
		</div>
						</div>
				<div class="elementor-element elementor-element-480f84d8 e-con e-atomic-element e-div-block-base" data-id="480f84d8" data-element_type="e-div-block" data-e-type="e-div-block" data-interaction-id="480f84d8">
				<div class="elementor-element elementor-element-3a135509 elementor-widget elementor-widget-heading" data-id="3a135509" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h2 class="elementor-heading-title elementor-size-default">Drop a visit</h2>				</div>
								<p class="e-73b1eb21-1e5927b e-paragraph-base" data-interaction-id="73b1eb21"  >
								Al Khaleej Street, Doha Oasis Gate 2, Msheireb
					</p>
				</div>
				</div>
		<div class="elementor-element elementor-element-7a9a5560 e-con-full e-flex e-con e-child" data-id="7a9a5560" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-11462fb7 elementor-view-default elementor-widget elementor-widget-icon" data-id="11462fb7" data-element_type="widget" data-e-type="widget" data-widget_type="icon.default">
							<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg class="ekit-svg-icon icon-mail" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><path d="M31.977 13.216c-0-0.384-0.151-0.745-0.423-1.016s-0.632-0.42-1.015-0.42c-0.001 0-0.001 0-0.002 0l-29.101 0.040c-0.384 0.001-0.745 0.151-1.016 0.423s-0.42 0.633-0.42 1.017l0.023 16.445c0.001 0.792 0.646 1.436 1.438 1.436 0.001 0 0.001 0 0.002 0l29.101-0.040c0.384-0 0.745-0.151 1.016-0.423s0.42-0.633 0.42-1.017l-0.023-16.445zM28.959 13.22l-12.957 9.008-12.983-8.972 25.941-0.036zM21.403 23.671l7.728 5.994-26.284 0.036 7.774-6.030c0.314-0.243 0.371-0.695 0.127-1.009s-0.695-0.371-1.009-0.127l-8.28 6.423-0.021-15.045 14.155 9.782c0.123 0.085 0.266 0.128 0.409 0.128s0.287-0.043 0.41-0.129l14.127-9.821 0.022 15.082-8.277-6.42c-0.314-0.243-0.765-0.186-1.009 0.128s-0.186 0.765 0.127 1.009zM19.407 4.298l-2.616-2.337c-0.451-0.403-1.131-0.403-1.582 0l-2.616 2.337c-0.296 0.265-0.322 0.719-0.057 1.015s0.719 0.322 1.015 0.057l1.73-1.545v5.542c0 0.397 0.322 0.719 0.719 0.719s0.719-0.322 0.719-0.719v-5.542l1.73 1.545c0.137 0.122 0.308 0.183 0.479 0.183 0.198 0 0.395-0.081 0.537-0.24 0.265-0.296 0.239-0.751-0.057-1.015z"></path></svg>			</div>
		</div>
						</div>
				<div class="elementor-element elementor-element-365dcc3d e-con e-atomic-element e-div-block-base" data-id="365dcc3d" data-element_type="e-div-block" data-e-type="e-div-block" data-interaction-id="365dcc3d">
				<div class="elementor-element elementor-element-3609a6cb elementor-widget elementor-widget-heading" data-id="3609a6cb" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h2 class="elementor-heading-title elementor-size-default">Email us</h2>				</div>
								<p class="e-702f9e5-2b695c0 e-paragraph-base" data-interaction-id="702f9e5"  >
								<a target="_blank" href="mailto:sales@dohaquest.com">sales@dohaquest.com</a>
					</p>
				</div>
				</div>
		<div class="elementor-element elementor-element-349763f5 e-con-full e-flex e-con e-child" data-id="349763f5" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-20d44d08 elementor-view-default elementor-widget elementor-widget-icon" data-id="20d44d08" data-element_type="widget" data-e-type="widget" data-widget_type="icon.default">
							<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg aria-hidden="true" class="e-font-icon-svg e-fas-phone" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M493.4 24.6l-104-24c-11.3-2.6-22.9 3.3-27.5 13.9l-48 112c-4.2 9.8-1.4 21.3 6.9 28l60.6 49.6c-36 76.7-98.9 140.5-177.2 177.2l-49.6-60.6c-6.8-8.3-18.2-11.1-28-6.9l-112 48C3.9 366.5-2 378.1.6 389.4l24 104C27.1 504.2 36.7 512 48 512c256.1 0 464-207.5 464-464 0-11.2-7.7-20.9-18.6-23.4z"></path></svg>			</div>
		</div>
						</div>
				<div class="elementor-element elementor-element-42a3dbc5 e-con e-atomic-element e-div-block-base" data-id="42a3dbc5" data-element_type="e-div-block" data-e-type="e-div-block" data-interaction-id="42a3dbc5">
				<div class="elementor-element elementor-element-44bb791b elementor-widget elementor-widget-heading" data-id="44bb791b" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h2 class="elementor-heading-title elementor-size-default">Reach us on</h2>				</div>
								<p class="e-49444edf-e7c346e e-paragraph-base" data-interaction-id="49444edf"  >
								WhatsApp or Mobile: +974 5096 1834
					</p>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-15d5f663 e-con-full e-flex e-con e-child" data-id="15d5f663" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-1b7bcf3a elementor-widget elementor-widget-google_maps" data-id="1b7bcf3a" data-element_type="widget" data-e-type="widget" data-widget_type="google_maps.default">
							<div class="elementor-custom-embed">
			<iframe loading="lazy"
					src="https://maps.google.com/maps?q=Doha%20Quest&#038;t=m&#038;z=16&#038;output=embed&#038;iwloc=near"
					title="Doha Quest"
					aria-label="Doha Quest"
			></iframe>
		</div>
						</div>
				</div>
					</div>
				</div>
				</div>
		', 'Overview1', '', 'publish', 'closed', 'closed', '', 'overview-1', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?page_id=1410', 0, 'page', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1406, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '		<div data-elementor-type="wp-page" data-elementor-id="1406" class="elementor elementor-1406">
				<div class="elementor-element elementor-element-1cbcd9ab e-con-full e-flex e-con e-parent" data-id="1cbcd9ab" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-4e9e452e elementor-widget__width-inherit elementor-arrows-position-inside elementor-widget elementor-widget-image-carousel" data-id="4e9e452e" data-element_type="widget" data-e-type="widget" data-settings="{&quot;slides_to_show&quot;:&quot;1&quot;,&quot;navigation&quot;:&quot;arrows&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;pause_on_hover&quot;:&quot;yes&quot;,&quot;pause_on_interaction&quot;:&quot;yes&quot;,&quot;autoplay_speed&quot;:5000,&quot;infinite&quot;:&quot;yes&quot;,&quot;effect&quot;:&quot;slide&quot;,&quot;speed&quot;:500}" data-widget_type="image-carousel.default">
							<div class="elementor-image-carousel-wrapper swiper" role="region" aria-roledescription="carousel" aria-label="Image Carousel" dir="ltr">
			<div class="elementor-image-carousel swiper-wrapper swiper-image-stretch" aria-live="off">
								<div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="1 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_51_jf9rFAYdTn7FO9Tqi8THih1JXUAYagRBpWY3cz9i-rmbu0jkjiwjai5t3xch3sgauaulmw90f5zz89v68cg.webp" alt="Hop aboard a caravan of off-road vehicles and race around the rocky lands of Oryxville on a pleasantly thrilling roller coaster adventure for the whole family." /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="2 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_31_nmSTXcQ6tLLL14hFc9Y6lFVYpZqJoyyNarKqaggG-rmbu0gr0yeffjbx7dt982z0giozj95p85m0ru1aev4.png" alt="Tumble and spin on a spectacular clockwork mechanism, marking the crossroads of past, present, and future. This thrilling centrepiece of the City of Imagination features rider-controlled inversions, allowing you to set the intensity to your preference as you roll along an undulating track." /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="3 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_29_8Ey8s7x74zd61BTQIB9SL66JVgyIBc1fe2vscBBt-rmbu0ft6rke57pykjaulih8zxb461glhthdacrbt1c.png" alt="Tumble and spin on a spectacular clockwork mechanism, marking the crossroads of past, present, and future. This thrilling centrepiece of the City of Imagination features rider-controlled inversions, allowing you to set the intensity to your preference as you roll along an undulating track." /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="4 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_33_HINZcFMetwVJrEakpCKr5NSvHjaD4fJwwdVj7kbl-rmbu0me23en5gzp0gvozhxl8307qjcbm6dxopp21ts.png" alt="Experience the world’s tallest indoor roller coaster at Doha Quest! Strap in for the ride of your life on EpiQ Coaster- the revolutionary solar-powered vessel endorsed by Spike the space-hedgehog. Experience thrilling speeds of 91 km/hr as you hurtle around Gravity Station. With exhilarating drops, twists and turns, this roller coaster in Qatar is not for the faint-hearted." /></figure></div>			</div>
												<div class="elementor-swiper-button elementor-swiper-button-prev" role="button" tabindex="0">
						<svg aria-hidden="true" class="e-font-icon-svg e-eicon-chevron-left" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg"><path d="M646 125C629 125 613 133 604 142L308 442C296 454 292 471 292 487 292 504 296 521 308 533L604 854C617 867 629 875 646 875 663 875 679 871 692 858 704 846 713 829 713 812 713 796 708 779 692 767L438 487 692 225C700 217 708 204 708 187 708 171 704 154 692 142 675 129 663 125 646 125Z"></path></svg>					</div>
					<div class="elementor-swiper-button elementor-swiper-button-next" role="button" tabindex="0">
						<svg aria-hidden="true" class="e-font-icon-svg e-eicon-chevron-right" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg"><path d="M696 533C708 521 713 504 713 487 713 471 708 454 696 446L400 146C388 133 375 125 354 125 338 125 325 129 313 142 300 154 292 171 292 187 292 204 296 221 308 233L563 492 304 771C292 783 288 800 288 817 288 833 296 850 308 863 321 871 338 875 354 875 371 875 388 867 400 854L696 533Z"></path></svg>					</div>
				
									</div>
						</div>
				</div>
		<div class="elementor-element elementor-element-ccaaeac e-flex e-con-boxed e-con e-parent" data-id="ccaaeac" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-2b3c4c0 elementor-widget elementor-widget-image-gallery" data-id="2b3c4c0" data-element_type="widget" data-e-type="widget" data-widget_type="image-gallery.default">
							<div class="elementor-image-gallery">
			<div id=\'gallery-1\' class=\'gallery galleryid-1406 gallery-columns-3 gallery-size-woocommerce_thumbnail\'><figure class=\'gallery-item\'>
			<div class=\'gallery-icon landscape\'>
				<a data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="2b3c4c0" data-elementor-lightbox-title="gravity-swing" data-e-action-hash="#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6MTUxNiwidXJsIjoiaHR0cHM6XC9cL2Jvb2tpbmdzLmRvaGFxdWVzdC5jb21cL3dwLWNvbnRlbnRcL3VwbG9hZHNcLzIwMjZcLzA1XC9ncmF2aXR5LXN3aW5nLnBuZyIsInNsaWRlc2hvdyI6IjJiM2M0YzAifQ%3D%3D" href=\'https://bookings.dohaquest.com/wp-content/uploads/2026/05/gravity-swing.png\'><img loading="lazy" decoding="async" width="300" height="300" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/gravity-swing-300x300.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" aria-describedby="gallery-1-1516" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/05/gravity-swing-300x300.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/gravity-swing-150x150.png 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/gravity-swing-100x100.png 100w" sizes="(max-width: 300px) 100vw, 300px" /></a>
			</div>
				<figcaption class=\'wp-caption-text gallery-caption\' id=\'gallery-1-1516\'>
				Gravity Swing
				</figcaption></figure><figure class=\'gallery-item\'>
			<div class=\'gallery-icon landscape\'>
				<a data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="2b3c4c0" data-elementor-lightbox-title="epiq-coaster-2" data-e-action-hash="#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6MTUxNywidXJsIjoiaHR0cHM6XC9cL2Jvb2tpbmdzLmRvaGFxdWVzdC5jb21cL3dwLWNvbnRlbnRcL3VwbG9hZHNcLzIwMjZcLzA1XC9lcGlxLWNvYXN0ZXItMi5wbmciLCJzbGlkZXNob3ciOiIyYjNjNGMwIn0%3D" href=\'https://bookings.dohaquest.com/wp-content/uploads/2026/05/epiq-coaster-2.png\'><img loading="lazy" decoding="async" width="300" height="300" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/epiq-coaster-2-300x300.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" aria-describedby="gallery-1-1517" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/05/epiq-coaster-2-300x300.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/epiq-coaster-2-150x150.png 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/epiq-coaster-2-100x100.png 100w" sizes="(max-width: 300px) 100vw, 300px" /></a>
			</div>
				<figcaption class=\'wp-caption-text gallery-caption\' id=\'gallery-1-1517\'>
				EpiQ Coaster
				</figcaption></figure><figure class=\'gallery-item\'>
			<div class=\'gallery-icon landscape\'>
				<a data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="2b3c4c0" data-elementor-lightbox-title="carousel" data-e-action-hash="#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6MTUxOCwidXJsIjoiaHR0cHM6XC9cL2Jvb2tpbmdzLmRvaGFxdWVzdC5jb21cL3dwLWNvbnRlbnRcL3VwbG9hZHNcLzIwMjZcLzA1XC9jYXJvdXNlbC1zY2FsZWQuanBnIiwic2xpZGVzaG93IjoiMmIzYzRjMCJ9" href=\'https://bookings.dohaquest.com/wp-content/uploads/2026/05/carousel-scaled.jpg\'><img loading="lazy" decoding="async" width="300" height="300" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/carousel-300x300.jpg" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" aria-describedby="gallery-1-1518" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/05/carousel-300x300.jpg 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/carousel-150x150.jpg 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/carousel-100x100.jpg 100w" sizes="(max-width: 300px) 100vw, 300px" /></a>
			</div>
				<figcaption class=\'wp-caption-text gallery-caption\' id=\'gallery-1-1518\'>
				Carousel
				</figcaption></figure><figure class=\'gallery-item\'>
			<div class=\'gallery-icon landscape\'>
				<a data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="2b3c4c0" data-elementor-lightbox-title="time-tumbler-2" data-e-action-hash="#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6MTUxOSwidXJsIjoiaHR0cHM6XC9cL2Jvb2tpbmdzLmRvaGFxdWVzdC5jb21cL3dwLWNvbnRlbnRcL3VwbG9hZHNcLzIwMjZcLzA1XC90aW1lLXR1bWJsZXItMi5wbmciLCJzbGlkZXNob3ciOiIyYjNjNGMwIn0%3D" href=\'https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-tumbler-2.png\'><img loading="lazy" decoding="async" width="300" height="300" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-tumbler-2-300x300.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" aria-describedby="gallery-1-1519" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-tumbler-2-300x300.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-tumbler-2-150x150.png 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-tumbler-2-100x100.png 100w" sizes="(max-width: 300px) 100vw, 300px" /></a>
			</div>
				<figcaption class=\'wp-caption-text gallery-caption\' id=\'gallery-1-1519\'>
				Time Tumbler
				</figcaption></figure><figure class=\'gallery-item\'>
			<div class=\'gallery-icon landscape\'>
				<a data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="2b3c4c0" data-elementor-lightbox-title="wings-of-destiny" data-e-action-hash="#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6MTUyMCwidXJsIjoiaHR0cHM6XC9cL2Jvb2tpbmdzLmRvaGFxdWVzdC5jb21cL3dwLWNvbnRlbnRcL3VwbG9hZHNcLzIwMjZcLzA1XC93aW5ncy1vZi1kZXN0aW55LnBuZyIsInNsaWRlc2hvdyI6IjJiM2M0YzAifQ%3D%3D" href=\'https://bookings.dohaquest.com/wp-content/uploads/2026/05/wings-of-destiny.png\'><img loading="lazy" decoding="async" width="300" height="300" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/wings-of-destiny-300x300.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" aria-describedby="gallery-1-1520" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/05/wings-of-destiny-300x300.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/wings-of-destiny-150x150.png 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/wings-of-destiny-100x100.png 100w" sizes="(max-width: 300px) 100vw, 300px" /></a>
			</div>
				<figcaption class=\'wp-caption-text gallery-caption\' id=\'gallery-1-1520\'>
				Wings of Destiny
				</figcaption></figure><figure class=\'gallery-item\'>
			<div class=\'gallery-icon landscape\'>
				<a data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="2b3c4c0" data-elementor-lightbox-title="time-tumbler" data-e-action-hash="#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6MTUyMSwidXJsIjoiaHR0cHM6XC9cL2Jvb2tpbmdzLmRvaGFxdWVzdC5jb21cL3dwLWNvbnRlbnRcL3VwbG9hZHNcLzIwMjZcLzA1XC90aW1lLXR1bWJsZXIucG5nIiwic2xpZGVzaG93IjoiMmIzYzRjMCJ9" href=\'https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-tumbler.png\'><img loading="lazy" decoding="async" width="300" height="300" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-tumbler-300x300.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" aria-describedby="gallery-1-1521" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-tumbler-300x300.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-tumbler-150x150.png 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-tumbler-100x100.png 100w" sizes="(max-width: 300px) 100vw, 300px" /></a>
			</div>
				<figcaption class=\'wp-caption-text gallery-caption\' id=\'gallery-1-1521\'>
				Time Tumbler
				</figcaption></figure><figure class=\'gallery-item\'>
			<div class=\'gallery-icon landscape\'>
				<a data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="2b3c4c0" data-elementor-lightbox-title="dune-bashers" data-e-action-hash="#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6MTUyMiwidXJsIjoiaHR0cHM6XC9cL2Jvb2tpbmdzLmRvaGFxdWVzdC5jb21cL3dwLWNvbnRlbnRcL3VwbG9hZHNcLzIwMjZcLzA1XC9kdW5lLWJhc2hlcnMucG5nIiwic2xpZGVzaG93IjoiMmIzYzRjMCJ9" href=\'https://bookings.dohaquest.com/wp-content/uploads/2026/05/dune-bashers.png\'><img loading="lazy" decoding="async" width="300" height="300" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/dune-bashers-300x300.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" aria-describedby="gallery-1-1522" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/05/dune-bashers-300x300.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/dune-bashers-150x150.png 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/dune-bashers-100x100.png 100w" sizes="(max-width: 300px) 100vw, 300px" /></a>
			</div>
				<figcaption class=\'wp-caption-text gallery-caption\' id=\'gallery-1-1522\'>
				Dune Bashers
				</figcaption></figure><figure class=\'gallery-item\'>
			<div class=\'gallery-icon landscape\'>
				<a data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="2b3c4c0" data-elementor-lightbox-title="oryx-express" data-e-action-hash="#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6MTUyMywidXJsIjoiaHR0cHM6XC9cL2Jvb2tpbmdzLmRvaGFxdWVzdC5jb21cL3dwLWNvbnRlbnRcL3VwbG9hZHNcLzIwMjZcLzA1XC9vcnl4LWV4cHJlc3MucG5nIiwic2xpZGVzaG93IjoiMmIzYzRjMCJ9" href=\'https://bookings.dohaquest.com/wp-content/uploads/2026/05/oryx-express.png\'><img loading="lazy" decoding="async" width="300" height="300" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/oryx-express-300x300.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" aria-describedby="gallery-1-1523" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/05/oryx-express-300x300.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/oryx-express-150x150.png 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/oryx-express-100x100.png 100w" sizes="(max-width: 300px) 100vw, 300px" /></a>
			</div>
				<figcaption class=\'wp-caption-text gallery-caption\' id=\'gallery-1-1523\'>
				Oryx Express
				</figcaption></figure><figure class=\'gallery-item\'>
			<div class=\'gallery-icon landscape\'>
				<a data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="2b3c4c0" data-elementor-lightbox-title="time-travel" data-e-action-hash="#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6MTUyNCwidXJsIjoiaHR0cHM6XC9cL2Jvb2tpbmdzLmRvaGFxdWVzdC5jb21cL3dwLWNvbnRlbnRcL3VwbG9hZHNcLzIwMjZcLzA1XC90aW1lLXRyYXZlbC5wbmciLCJzbGlkZXNob3ciOiIyYjNjNGMwIn0%3D" href=\'https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-travel.png\'><img loading="lazy" decoding="async" width="300" height="300" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-travel-300x300.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" aria-describedby="gallery-1-1524" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-travel-300x300.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-travel-150x150.png 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/time-travel-100x100.png 100w" sizes="(max-width: 300px) 100vw, 300px" /></a>
			</div>
				<figcaption class=\'wp-caption-text gallery-caption\' id=\'gallery-1-1524\'>
				Time Travel
				</figcaption></figure><figure class=\'gallery-item\'>
			<div class=\'gallery-icon portrait\'>
				<a data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="2b3c4c0" data-elementor-lightbox-title="spike-astro-tower-2" data-e-action-hash="#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6MTUyNSwidXJsIjoiaHR0cHM6XC9cL2Jvb2tpbmdzLmRvaGFxdWVzdC5jb21cL3dwLWNvbnRlbnRcL3VwbG9hZHNcLzIwMjZcLzA1XC9zcGlrZS1hc3Ryby10b3dlci0yLnBuZyIsInNsaWRlc2hvdyI6IjJiM2M0YzAifQ%3D%3D" href=\'https://bookings.dohaquest.com/wp-content/uploads/2026/05/spike-astro-tower-2.png\'><img loading="lazy" decoding="async" width="300" height="300" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/spike-astro-tower-2-300x300.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" aria-describedby="gallery-1-1525" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/05/spike-astro-tower-2-300x300.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/spike-astro-tower-2-150x150.png 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/spike-astro-tower-2-100x100.png 100w" sizes="(max-width: 300px) 100vw, 300px" /></a>
			</div>
				<figcaption class=\'wp-caption-text gallery-caption\' id=\'gallery-1-1525\'>
				Spike Astro Tower
				</figcaption></figure><figure class=\'gallery-item\'>
			<div class=\'gallery-icon portrait\'>
				<a data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="2b3c4c0" data-elementor-lightbox-title="epiq-coaster" data-e-action-hash="#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6MTUyNiwidXJsIjoiaHR0cHM6XC9cL2Jvb2tpbmdzLmRvaGFxdWVzdC5jb21cL3dwLWNvbnRlbnRcL3VwbG9hZHNcLzIwMjZcLzA1XC9lcGlxLWNvYXN0ZXIucG5nIiwic2xpZGVzaG93IjoiMmIzYzRjMCJ9" href=\'https://bookings.dohaquest.com/wp-content/uploads/2026/05/epiq-coaster.png\'><img loading="lazy" decoding="async" width="300" height="300" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/epiq-coaster-300x300.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" aria-describedby="gallery-1-1526" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/05/epiq-coaster-300x300.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/epiq-coaster-150x150.png 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/epiq-coaster-100x100.png 100w" sizes="(max-width: 300px) 100vw, 300px" /></a>
			</div>
				<figcaption class=\'wp-caption-text gallery-caption\' id=\'gallery-1-1526\'>
				EpiQ Coaster
				</figcaption></figure><figure class=\'gallery-item\'>
			<div class=\'gallery-icon landscape\'>
				<a data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="2b3c4c0" data-elementor-lightbox-title="spike-astro-tower" data-e-action-hash="#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6MTUyNywidXJsIjoiaHR0cHM6XC9cL2Jvb2tpbmdzLmRvaGFxdWVzdC5jb21cL3dwLWNvbnRlbnRcL3VwbG9hZHNcLzIwMjZcLzA1XC9zcGlrZS1hc3Ryby10b3dlci5wbmciLCJzbGlkZXNob3ciOiIyYjNjNGMwIn0%3D" href=\'https://bookings.dohaquest.com/wp-content/uploads/2026/05/spike-astro-tower.png\'><img loading="lazy" decoding="async" width="300" height="300" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/spike-astro-tower-300x300.png" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" aria-describedby="gallery-1-1527" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/05/spike-astro-tower-300x300.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/spike-astro-tower-150x150.png 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/05/spike-astro-tower-100x100.png 100w" sizes="(max-width: 300px) 100vw, 300px" /></a>
			</div>
				<figcaption class=\'wp-caption-text gallery-caption\' id=\'gallery-1-1527\'>
				Spike Astro Tower
				</figcaption></figure>
		</div>
		</div>
						</div>
					</div>
				</div>
				</div>
		', 'Media Bank', '', 'publish', 'closed', 'closed', '', 'media-bank', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?page_id=1406', 0, 'page', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1193, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '		<div data-elementor-type="wp-page" data-elementor-id="1193" class="elementor elementor-1193">
				<div class="elementor-element elementor-element-1a6e29ae e-con-full e-flex e-con e-parent" data-id="1a6e29ae" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-7db8fb20 elementor-widget__width-inherit elementor-arrows-position-inside elementor-widget elementor-widget-image-carousel" data-id="7db8fb20" data-element_type="widget" data-e-type="widget" data-settings="{&quot;slides_to_show&quot;:&quot;1&quot;,&quot;navigation&quot;:&quot;arrows&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;pause_on_hover&quot;:&quot;yes&quot;,&quot;pause_on_interaction&quot;:&quot;yes&quot;,&quot;autoplay_speed&quot;:5000,&quot;infinite&quot;:&quot;yes&quot;,&quot;effect&quot;:&quot;slide&quot;,&quot;speed&quot;:500}" data-widget_type="image-carousel.default">
							<div class="elementor-image-carousel-wrapper swiper" role="region" aria-roledescription="carousel" aria-label="Image Carousel" dir="ltr">
			<div class="elementor-image-carousel swiper-wrapper swiper-image-stretch" aria-live="off">
								<div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="1 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_51_jf9rFAYdTn7FO9Tqi8THih1JXUAYagRBpWY3cz9i-rmbu0jkjiwjai5t3xch3sgauaulmw90f5zz89v68cg.webp" alt="Hop aboard a caravan of off-road vehicles and race around the rocky lands of Oryxville on a pleasantly thrilling roller coaster adventure for the whole family." /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="2 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_31_nmSTXcQ6tLLL14hFc9Y6lFVYpZqJoyyNarKqaggG-rmbu0gr0yeffjbx7dt982z0giozj95p85m0ru1aev4.png" alt="Tumble and spin on a spectacular clockwork mechanism, marking the crossroads of past, present, and future. This thrilling centrepiece of the City of Imagination features rider-controlled inversions, allowing you to set the intensity to your preference as you roll along an undulating track." /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="3 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_29_8Ey8s7x74zd61BTQIB9SL66JVgyIBc1fe2vscBBt-rmbu0ft6rke57pykjaulih8zxb461glhthdacrbt1c.png" alt="Tumble and spin on a spectacular clockwork mechanism, marking the crossroads of past, present, and future. This thrilling centrepiece of the City of Imagination features rider-controlled inversions, allowing you to set the intensity to your preference as you roll along an undulating track." /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="4 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/elementor/thumbs/imgi_33_HINZcFMetwVJrEakpCKr5NSvHjaD4fJwwdVj7kbl-rmbu0me23en5gzp0gvozhxl8307qjcbm6dxopp21ts.png" alt="Experience the world’s tallest indoor roller coaster at Doha Quest! Strap in for the ride of your life on EpiQ Coaster- the revolutionary solar-powered vessel endorsed by Spike the space-hedgehog. Experience thrilling speeds of 91 km/hr as you hurtle around Gravity Station. With exhilarating drops, twists and turns, this roller coaster in Qatar is not for the faint-hearted." /></figure></div>			</div>
												<div class="elementor-swiper-button elementor-swiper-button-prev" role="button" tabindex="0">
						<svg aria-hidden="true" class="e-font-icon-svg e-eicon-chevron-left" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg"><path d="M646 125C629 125 613 133 604 142L308 442C296 454 292 471 292 487 292 504 296 521 308 533L604 854C617 867 629 875 646 875 663 875 679 871 692 858 704 846 713 829 713 812 713 796 708 779 692 767L438 487 692 225C700 217 708 204 708 187 708 171 704 154 692 142 675 129 663 125 646 125Z"></path></svg>					</div>
					<div class="elementor-swiper-button elementor-swiper-button-next" role="button" tabindex="0">
						<svg aria-hidden="true" class="e-font-icon-svg e-eicon-chevron-right" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg"><path d="M696 533C708 521 713 504 713 487 713 471 708 454 696 446L400 146C388 133 375 125 354 125 338 125 325 129 313 142 300 154 292 171 292 187 292 204 296 221 308 233L563 492 304 771C292 783 288 800 288 817 288 833 296 850 308 863 321 871 338 875 354 875 371 875 388 867 400 854L696 533Z"></path></svg>					</div>
				
									</div>
						</div>
				</div>
		<div class="elementor-element elementor-element-1ea124f8 e-flex e-con-boxed e-con e-parent" data-id="1ea124f8" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-cfcb6b2 elementor-widget elementor-widget-shortcode" data-id="cfcb6b2" data-element_type="widget" data-e-type="widget" data-widget_type="shortcode.default">
							<div class="elementor-shortcode"><style type="text/css">.wpos-wcb-datepicker td.wpos-wc-bw-h-close span{background-color: #f67c10; color: #ffffff;}.wpos-wcb-datepicker td.wpos-wc-bw-eg-close span{background-color: #c42a2a; color: #ffffff;}.wpos-wcb-booking-status-closed .wpos-wcb-booking-status-mark{background-color: #c42a2a;}.wpos-wcb-booking-status-holiday .wpos-wcb-booking-status-mark{background-color: #f67c10;}</style>
	<div class="wpos-wc-bw-step-timer-wrp">
		<div class="wpos-wc-bw-bkn-wrap">
				<ul><li class="wpos-wc-bw-bkn  wpos-wc-bw-bkn-link">
					<a href="https://bookings.dohaquest.com/"><i class="fa-solid fa-bars wpos-wc-bw-icon-left"></i> <span>Category</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li><li class="wpos-wc-bw-bkn  wpos-wc-bw-bkn-link">
					<a href="https://bookings.dohaquest.com/?cid=20"><i class="fa-solid fa-ticket wpos-wc-bw-icon-left"></i> <span>Tickets</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li><li class="wpos-wc-bw-bkn ">
					<a href="javascript:void(0);"><i class="fa-solid fa-cart-plus wpos-wc-bw-icon-left"></i> <span>Cart</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li><li class="wpos-wc-bw-bkn ">
					<a href="javascript:void(0);"><i class="fa-solid fa-credit-card wpos-wc-bw-icon-left"></i> <span>Checkout</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li><li class="wpos-wc-bw-bkn ">
					<a href="javascript:void(0);"><i class="fa-solid fa-lock wpos-wc-bw-icon-left"></i> <span>Confirmation</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li></ul>
			</div>	</div>
			<div class="wpos-wc-bw-product-cat-wrap">
			<div class="wpos-wc-bw-product-cat-inr">
				
<div class="wpos-wc-bw-product-pcat wpos-wc-bw-product-cat wpos-wc-bw-cat-20 wpos-wc-bw-has-cat-img" id="wpos-wc-bw-cat-20">
	<div class="wpos-wc-bw-product-cat-list">
					<div class="wpos-wc-bw-cat-img-wrp">
				<a href="https://bookings.dohaquest.com/?cid=20">
					<div class="wpos-wc-bw-cat-img-inr">
						<img decoding="async" src="https://bookings.dohaquest.com/wp-content/uploads/2025/12/cat-1.png" class="wpos-wc-bw-cat-img" alt="Admission Tickets" />
					</div>
				</a>
			</div>
				
		<div class="wpos-wc-bw-cat-cnt-wrp">
			<div class="wpos-wc-bw-cat-ttl"><a href="https://bookings.dohaquest.com/?cid=20">Admission Tickets</a></div>
			
			<a href="https://bookings.dohaquest.com/?cid=20" class="mwbook-book-btn">Book Now <i class="fa fa-arrow-right"></i></a>
		</div>
	</div>
</div>			</div>
		</div>
		</div>
						</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-553bba3 e-flex e-con-boxed e-con e-parent" data-id="553bba3" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-a376b80 elementor-widget elementor-widget-heading" data-id="a376b80" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h2 class="elementor-heading-title elementor-size-default">Doha Quest Theme Park</h2>				</div>
				<div class="elementor-element elementor-element-a03bb47 elementor-widget elementor-widget-text-editor" data-id="a03bb47" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Dare to try the world’s tallest indoor roller coaster and take the plunge on the world’s tallest indoor drop tower ride. Then enter our immersive Time Realms, where ancient lands, futuristic cities and intergalactic stations come to life. With over 30 rides and attractions, Quest theme park in Doha is the ultimate indoor, immersive experience all year round. Your Quest for adventure starts here!</p>								</div>
				<div class="elementor-element elementor-element-bff697c elementor-widget elementor-widget-image" data-id="bff697c" data-element_type="widget" data-e-type="widget" data-widget_type="image.default">
															<img decoding="async" width="300" height="300" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-300x300.png" class="attachment-medium size-medium wp-image-899" alt="" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-300x300.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-150x150.png 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-768x769.png 768w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-600x601.png 600w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-100x100.png 100w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1.png 960w" sizes="(max-width: 300px) 100vw, 300px" />															</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-5f73c46 e-flex e-con-boxed e-con e-parent" data-id="5f73c46" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-8a586c8 elementor-widget elementor-widget-heading" data-id="8a586c8" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h3 class="elementor-heading-title elementor-size-default">Plan Your Visit</h3>				</div>
				<div class="elementor-element elementor-element-36f780f elementor-widget elementor-widget-text-editor" data-id="36f780f" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Make the most of your day at the most well-loved amusement park in Qatar!</p>								</div>
				<div class="elementor-element elementor-element-7b4cf2b elementor-widget elementor-widget-heading" data-id="7b4cf2b" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h3 class="elementor-heading-title elementor-size-default">Operating Hours</h3>				</div>
		<div class="elementor-element elementor-element-0b1e0f9 e-con-full e-flex e-con e-child" data-id="0b1e0f9" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-ff2a91a elementor-widget elementor-widget-tablepress-table" data-id="ff2a91a" data-element_type="widget" data-e-type="widget" data-widget_type="tablepress-table.default">
					
<table id="tablepress-1-no-2" class="tablepress tablepress-id-1 tbody-has-connected-cells">
<thead>
<tr class="row-1">
	<th class="column-1">Operation Day</th><th class="column-2">Opening Time</th><th class="column-3">Closing Time</th>
</tr>
</thead>
<tbody class="row-striping row-hover">
<tr class="row-2">
	<td class="column-1">Sunday</td><td colspan="2" class="column-2">Park is closed every Sunday</td>
</tr>
<tr class="row-3">
	<td class="column-1">Monday</td><td class="column-2">2:00PM</td><td class="column-3">10:00PM</td>
</tr>
<tr class="row-4">
	<td class="column-1">Tuesday</td><td class="column-2">2:00PM</td><td class="column-3">10:00PM</td>
</tr>
<tr class="row-5">
	<td class="column-1">Wednesday</td><td class="column-2">2:00PM</td><td class="column-3">10:00PM</td>
</tr>
<tr class="row-6">
	<td class="column-1">Thursday</td><td class="column-2">2:00PM</td><td class="column-3">10:00PM</td>
</tr>
<tr class="row-7">
	<td class="column-1">Friday</td><td class="column-2">2:00PM</td><td class="column-3">10:00PM</td>
</tr>
<tr class="row-8">
	<td class="column-1">Saturday</td><td class="column-2">2:00PM</td><td class="column-3">10:00PM</td>
</tr>
</tbody>
</table>
<!-- #tablepress-1-no-2 from cache -->				</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-25ee7aa e-flex e-con-boxed e-con e-parent" data-id="25ee7aa" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-285f35f elementor-widget elementor-widget-heading" data-id="285f35f" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h3 class="elementor-heading-title elementor-size-default">30+ Rides and Attractions Under One Roof</h3>				</div>
				<div class="elementor-element elementor-element-f26d9c2 elementor-widget elementor-widget-text-editor" data-id="f26d9c2" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Get ready for thrill rides that get your heart pumping and adventure zones that pull you into another world. It’s an experience unlike any other theme park in Qatar!</p>								</div>
				<div class="elementor-element elementor-element-20919de elementor-arrows-position-inside elementor-pagination-position-outside elementor-widget elementor-widget-image-carousel" data-id="20919de" data-element_type="widget" data-e-type="widget" data-settings="{&quot;slides_to_show&quot;:&quot;3&quot;,&quot;navigation&quot;:&quot;both&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;pause_on_hover&quot;:&quot;yes&quot;,&quot;pause_on_interaction&quot;:&quot;yes&quot;,&quot;autoplay_speed&quot;:5000,&quot;infinite&quot;:&quot;yes&quot;,&quot;speed&quot;:500}" data-widget_type="image-carousel.default">
							<div class="elementor-image-carousel-wrapper swiper" role="region" aria-roledescription="carousel" aria-label="Image Carousel" dir="ltr">
			<div class="elementor-image-carousel swiper-wrapper swiper-image-stretch" aria-live="off">
								<div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="1 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_jtDzoeyKTx5xiOq5px4bbzOTZJBUERjnbxlFunIq-2-300x300.png" alt="FOR JUNIORS" /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="2 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_33_HINZcFMetwVJrEakpCKr5NSvHjaD4fJwwdVj7kbl-300x300.png" alt="Experience the world’s tallest indoor roller coaster at Doha Quest! Strap in for the ride of your life on EpiQ Coaster- the revolutionary solar-powered vessel endorsed by Spike the space-hedgehog. Experience thrilling speeds of 91 km/hr as you hurtle around Gravity Station. With exhilarating drops, twists and turns, this roller coaster in Qatar is not for the faint-hearted." /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="3 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_32_mlGuudfobcTRGVX7oYWDsEgFxkz9bPlozPNSwoyz-300x300.jpg" alt="No theme park experience is complete without a Carousel. This classic attraction offers timeless fun for the entire family to enjoy!" /></figure></div><div class="swiper-slide" role="group" aria-roledescription="slide" aria-label="4 of 4"><figure class="swiper-slide-inner"><img decoding="async" class="swiper-slide-image" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_46_Nv9GOagdAaG2V1MHhEunsUidaD8uAMEEJ2ZRE8D7-300x300.webp" alt="We don&#039;t call it the City of Imagination for nothing, it&#039;s everything you want to imagine yourself experiencing." /></figure></div>			</div>
												<div class="elementor-swiper-button elementor-swiper-button-prev" role="button" tabindex="0">
						<svg aria-hidden="true" class="e-font-icon-svg e-eicon-chevron-left" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg"><path d="M646 125C629 125 613 133 604 142L308 442C296 454 292 471 292 487 292 504 296 521 308 533L604 854C617 867 629 875 646 875 663 875 679 871 692 858 704 846 713 829 713 812 713 796 708 779 692 767L438 487 692 225C700 217 708 204 708 187 708 171 704 154 692 142 675 129 663 125 646 125Z"></path></svg>					</div>
					<div class="elementor-swiper-button elementor-swiper-button-next" role="button" tabindex="0">
						<svg aria-hidden="true" class="e-font-icon-svg e-eicon-chevron-right" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg"><path d="M696 533C708 521 713 504 713 487 713 471 708 454 696 446L400 146C388 133 375 125 354 125 338 125 325 129 313 142 300 154 292 171 292 187 292 204 296 221 308 233L563 492 304 771C292 783 288 800 288 817 288 833 296 850 308 863 321 871 338 875 354 875 371 875 388 867 400 854L696 533Z"></path></svg>					</div>
				
									<div class="swiper-pagination"></div>
									</div>
						</div>
				<div class="elementor-element elementor-element-1db2bc3 elementor-button-info elementor-align-center elementor-widget elementor-widget-button" data-id="1db2bc3" data-element_type="widget" data-e-type="widget" data-widget_type="button.default">
										<a class="elementor-button elementor-button-link elementor-size-sm" href="https://dohaquest.com/en/rides" target="_blank" rel="nofollow">
						<span class="elementor-button-content-wrapper">
									<span class="elementor-button-text">Explore Our Rides</span>
					</span>
					</a>
								</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-1b2f931 e-flex e-con-boxed e-con e-parent" data-id="1b2f931" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-84010ff elementor-widget elementor-widget-heading" data-id="84010ff" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h3 class="elementor-heading-title elementor-size-default">Non-Stop Fun at Doha Oasis</h3>				</div>
				<div class="elementor-element elementor-element-a659d13 elementor-widget elementor-widget-text-editor" data-id="a659d13" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>The top choice for magic, excitement, and unforgettable memories in Qatar</p>								</div>
		<div class="elementor-element elementor-element-bfa0508 e-grid e-con-full e-con e-child" data-id="bfa0508" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-f2552b8 elementor-view-default elementor-position-block-start elementor-mobile-position-block-start elementor-widget elementor-widget-icon-box" data-id="f2552b8" data-element_type="widget" data-e-type="widget" data-widget_type="icon-box.default">
							<div class="elementor-icon-box-wrapper">

						<div class="elementor-icon-box-icon">
				<span  class="elementor-icon">
				<svg aria-hidden="true" class="e-font-icon-svg e-far-snowflake" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M440.1 355.2l-39.2-23 34.1-9.3c8.4-2.3 13.4-11.1 11.1-19.6l-4.1-15.5c-2.2-8.5-10.9-13.6-19.3-11.3L343 298.2 271.2 256l71.9-42.2 79.7 21.7c8.4 2.3 17-2.8 19.3-11.3l4.1-15.5c2.2-8.5-2.7-17.3-11.1-19.6l-34.1-9.3 39.2-23c7.5-4.4 10.1-14.2 5.8-21.9l-7.9-13.9c-4.3-7.7-14-10.3-21.5-5.9l-39.2 23 9.1-34.7c2.2-8.5-2.7-17.3-11.1-19.6l-15.2-4.1c-8.4-2.3-17 2.8-19.3 11.3l-21.3 81-71.9 42.2v-84.5L306 70.4c6.1-6.2 6.1-16.4 0-22.6l-11.1-11.3c-6.1-6.2-16.1-6.2-22.2 0l-24.9 25.4V16c0-8.8-7-16-15.7-16h-15.7c-8.7 0-15.7 7.2-15.7 16v46.1l-24.9-25.4c-6.1-6.2-16.1-6.2-22.2 0L142.1 48c-6.1 6.2-6.1 16.4 0 22.6l58.3 59.3v84.5l-71.9-42.2-21.3-81c-2.2-8.5-10.9-13.6-19.3-11.3L72.7 84c-8.4 2.3-13.4 11.1-11.1 19.6l9.1 34.7-39.2-23c-7.5-4.4-17.1-1.8-21.5 5.9l-7.9 13.9c-4.3 7.7-1.8 17.4 5.8 21.9l39.2 23-34.1 9.1c-8.4 2.3-13.4 11.1-11.1 19.6L6 224.2c2.2 8.5 10.9 13.6 19.3 11.3l79.7-21.7 71.9 42.2-71.9 42.2-79.7-21.7c-8.4-2.3-17 2.8-19.3 11.3l-4.1 15.5c-2.2 8.5 2.7 17.3 11.1 19.6l34.1 9.3-39.2 23c-7.5 4.4-10.1 14.2-5.8 21.9L10 391c4.3 7.7 14 10.3 21.5 5.9l39.2-23-9.1 34.7c-2.2 8.5 2.7 17.3 11.1 19.6l15.2 4.1c8.4 2.3 17-2.8 19.3-11.3l21.3-81 71.9-42.2v84.5l-58.3 59.3c-6.1 6.2-6.1 16.4 0 22.6l11.1 11.3c6.1 6.2 16.1 6.2 22.2 0l24.9-25.4V496c0 8.8 7 16 15.7 16h15.7c8.7 0 15.7-7.2 15.7-16v-46.1l24.9 25.4c6.1 6.2 16.1 6.2 22.2 0l11.1-11.3c6.1-6.2 6.1-16.4 0-22.6l-58.3-59.3v-84.5l71.9 42.2 21.3 81c2.2 8.5 10.9 13.6 19.3 11.3L375 428c8.4-2.3 13.4-11.1 11.1-19.6l-9.1-34.7 39.2 23c7.5 4.4 17.1 1.8 21.5-5.9l7.9-13.9c4.6-7.5 2.1-17.3-5.5-21.7z"></path></svg>				</span>
			</div>
			
						<div class="elementor-icon-box-content">

									<h3 class="elementor-icon-box-title">
						<span  >
							Climate Controlled						</span>
					</h3>
				
									<p class="elementor-icon-box-description">
						All-weather comfort and fun					</p>
				
			</div>
			
		</div>
						</div>
				<div class="elementor-element elementor-element-cbd2b95 elementor-view-default elementor-position-block-start elementor-mobile-position-block-start elementor-widget elementor-widget-icon-box" data-id="cbd2b95" data-element_type="widget" data-e-type="widget" data-widget_type="icon-box.default">
							<div class="elementor-icon-box-wrapper">

						<div class="elementor-icon-box-icon">
				<span  class="elementor-icon">
				<svg aria-hidden="true" class="e-font-icon-svg e-fas-ticket-alt" viewBox="0 0 576 512" xmlns="http://www.w3.org/2000/svg"><path d="M128 160h320v192H128V160zm400 96c0 26.51 21.49 48 48 48v96c0 26.51-21.49 48-48 48H48c-26.51 0-48-21.49-48-48v-96c26.51 0 48-21.49 48-48s-21.49-48-48-48v-96c0-26.51 21.49-48 48-48h480c26.51 0 48 21.49 48 48v96c-26.51 0-48 21.49-48 48zm-48-104c0-13.255-10.745-24-24-24H120c-13.255 0-24 10.745-24 24v208c0 13.255 10.745 24 24 24h336c13.255 0 24-10.745 24-24V152z"></path></svg>				</span>
			</div>
			
						<div class="elementor-icon-box-content">

									<h3 class="elementor-icon-box-title">
						<span  >
							All-Access Tickets						</span>
					</h3>
				
									<p class="elementor-icon-box-description">
						Ride everything with one pass					</p>
				
			</div>
			
		</div>
						</div>
				<div class="elementor-element elementor-element-f13fa35 elementor-view-default elementor-position-block-start elementor-mobile-position-block-start elementor-widget elementor-widget-icon-box" data-id="f13fa35" data-element_type="widget" data-e-type="widget" data-widget_type="icon-box.default">
							<div class="elementor-icon-box-wrapper">

						<div class="elementor-icon-box-icon">
				<span  class="elementor-icon">
				<svg aria-hidden="true" class="e-font-icon-svg e-fas-certificate" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M458.622 255.92l45.985-45.005c13.708-12.977 7.316-36.039-10.664-40.339l-62.65-15.99 17.661-62.015c4.991-17.838-11.829-34.663-29.661-29.671l-61.994 17.667-15.984-62.671C337.085.197 313.765-6.276 300.99 7.228L256 53.57 211.011 7.229c-12.63-13.351-36.047-7.234-40.325 10.668l-15.984 62.671-61.995-17.667C74.87 57.907 58.056 74.738 63.046 92.572l17.661 62.015-62.65 15.99C.069 174.878-6.31 197.944 7.392 210.915l45.985 45.005-45.985 45.004c-13.708 12.977-7.316 36.039 10.664 40.339l62.65 15.99-17.661 62.015c-4.991 17.838 11.829 34.663 29.661 29.671l61.994-17.667 15.984 62.671c4.439 18.575 27.696 24.018 40.325 10.668L256 458.61l44.989 46.001c12.5 13.488 35.987 7.486 40.325-10.668l15.984-62.671 61.994 17.667c17.836 4.994 34.651-11.837 29.661-29.671l-17.661-62.015 62.65-15.99c17.987-4.302 24.366-27.367 10.664-40.339l-45.984-45.004z"></path></svg>				</span>
			</div>
			
						<div class="elementor-icon-box-content">

									<h3 class="elementor-icon-box-title">
						<span  >
							Guinness Record Thrills						</span>
					</h3>
				
									<p class="elementor-icon-box-description">
						EpiQ Coaster &amp; Magma Blast – the tallest indoor rides in the world, officially certified by Guinness					</p>
				
			</div>
			
		</div>
						</div>
				<div class="elementor-element elementor-element-ec0910a elementor-view-default elementor-position-block-start elementor-mobile-position-block-start elementor-widget elementor-widget-icon-box" data-id="ec0910a" data-element_type="widget" data-e-type="widget" data-widget_type="icon-box.default">
							<div class="elementor-icon-box-wrapper">

						<div class="elementor-icon-box-icon">
				<span  class="elementor-icon">
				<svg aria-hidden="true" class="e-font-icon-svg e-fab-connectdevelop" viewBox="0 0 576 512" xmlns="http://www.w3.org/2000/svg"><path d="M550.5 241l-50.089-86.786c1.071-2.142 1.875-4.553 1.875-7.232 0-8.036-6.696-14.733-14.732-15.001l-55.447-95.893c.536-1.607 1.071-3.214 1.071-4.821 0-8.571-6.964-15.268-15.268-15.268-4.821 0-8.839 2.143-11.786 5.625H299.518C296.839 18.143 292.821 16 288 16s-8.839 2.143-11.518 5.625H170.411C167.464 18.143 163.447 16 158.625 16c-8.303 0-15.268 6.696-15.268 15.268 0 1.607.536 3.482 1.072 4.821l-55.983 97.233c-5.356 2.41-9.107 7.5-9.107 13.661 0 .535.268 1.071.268 1.607l-53.304 92.143c-7.232 1.339-12.59 7.5-12.59 15 0 7.232 5.089 13.393 12.054 15l55.179 95.358c-.536 1.607-.804 2.946-.804 4.821 0 7.232 5.089 13.393 12.054 14.732l51.697 89.732c-.536 1.607-1.071 3.482-1.071 5.357 0 8.571 6.964 15.268 15.268 15.268 4.821 0 8.839-2.143 11.518-5.357h106.875C279.161 493.857 283.447 496 288 496s8.839-2.143 11.518-5.357h107.143c2.678 2.946 6.696 4.821 10.982 4.821 8.571 0 15.268-6.964 15.268-15.268 0-1.607-.267-2.946-.803-4.285l51.697-90.268c6.964-1.339 12.054-7.5 12.054-14.732 0-1.607-.268-3.214-.804-4.821l54.911-95.358c6.964-1.339 12.322-7.5 12.322-15-.002-7.232-5.092-13.393-11.788-14.732zM153.535 450.732l-43.66-75.803h43.66v75.803zm0-83.839h-43.66c-.268-1.071-.804-2.142-1.339-3.214l44.999-47.41v50.624zm0-62.411l-50.357 53.304c-1.339-.536-2.679-1.34-4.018-1.607L43.447 259.75c.535-1.339.535-2.679.535-4.018s0-2.41-.268-3.482l51.965-90c2.679-.268 5.357-1.072 7.768-2.679l50.089 51.965v92.946zm0-102.322l-45.803-47.41c1.339-2.143 2.143-4.821 2.143-7.767 0-.268-.268-.804-.268-1.072l43.928-15.804v72.053zm0-80.625l-43.66 15.804 43.66-75.536v59.732zm326.519 39.108l.804 1.339L445.5 329.125l-63.75-67.232 98.036-101.518.268.268zM291.75 355.107l11.518 11.786H280.5l11.25-11.786zm-.268-11.25l-83.303-85.446 79.553-84.375 83.036 87.589-79.286 82.232zm5.357 5.893l79.286-82.232 67.5 71.25-5.892 28.125H313.714l-16.875-17.143zM410.411 44.393c1.071.536 2.142 1.072 3.482 1.34l57.857 100.714v.536c0 2.946.803 5.624 2.143 7.767L376.393 256l-83.035-87.589L410.411 44.393zm-9.107-2.143L287.732 162.518l-57.054-60.268 166.339-60h4.287zm-123.483 0c2.678 2.678 6.16 4.285 10.179 4.285s7.5-1.607 10.179-4.285h75L224.786 95.821 173.893 42.25h103.928zm-116.249 5.625l1.071-2.142a33.834 33.834 0 0 0 2.679-.804l51.161 53.84-54.911 19.821V47.875zm0 79.286l60.803-21.964 59.732 63.214-79.553 84.107-40.982-42.053v-83.304zm0 92.678L198 257.607l-36.428 38.304v-76.072zm0 87.858l42.053-44.464 82.768 85.982-17.143 17.678H161.572v-59.196zm6.964 162.053c-1.607-1.607-3.482-2.678-5.893-3.482l-1.071-1.607v-89.732h99.91l-91.607 94.821h-1.339zm129.911 0c-2.679-2.41-6.428-4.285-10.447-4.285s-7.767 1.875-10.447 4.285h-96.429l91.607-94.821h38.304l91.607 94.821H298.447zm120-11.786l-4.286 7.5c-1.339.268-2.41.803-3.482 1.339l-89.196-91.875h114.376l-17.412 83.036zm12.856-22.232l12.858-60.803h21.964l-34.822 60.803zm34.822-68.839h-20.357l4.553-21.16 17.143 18.214c-.535.803-1.071 1.874-1.339 2.946zm66.161-107.411l-55.447 96.697c-1.339.535-2.679 1.071-4.018 1.874l-20.625-21.964 34.554-163.928 45.803 79.286c-.267 1.339-.803 2.678-.803 4.285 0 1.339.268 2.411.536 3.75z"></path></svg>				</span>
			</div>
			
						<div class="elementor-icon-box-content">

									<h3 class="elementor-icon-box-title">
						<span  >
							Exclusive Rides						</span>
					</h3>
				
									<p class="elementor-icon-box-description">
						Rides exclusive to Doha Quest					</p>
				
			</div>
			
		</div>
						</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-6ff919f e-flex e-con-boxed e-con e-parent" data-id="6ff919f" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-1a1bcef e-con-full e-flex e-con e-child" data-id="1a1bcef" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-a07a743 elementor-widget elementor-widget-heading" data-id="a07a743" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h3 class="elementor-heading-title elementor-size-default">Ready to begin your Quest?</h3>				</div>
				<div class="elementor-element elementor-element-86809df elementor-widget elementor-widget-text-editor" data-id="86809df" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p class="has-text-align-center">Book now and step into the most thrilling indoor adventure in Doha or Plan a Group Visit <a href="https://dohaquest.com/en/school-bookings">for schools</a> &amp; <a href="https://dohaquest.com/en/corporate-bookings">corporate groups </a></p>								</div>
		<div class="elementor-element elementor-element-2449c1f e-con-full e-grid e-con e-child" data-id="2449c1f" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-22eb9e8 elementor-align-center elementor-widget elementor-widget-button" data-id="22eb9e8" data-element_type="widget" data-e-type="widget" data-widget_type="button.default">
										<a class="elementor-button elementor-button-link elementor-size-sm" href="">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-icon">
				<svg aria-hidden="true" class="e-font-icon-svg e-fas-phone-alt" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M497.39 361.8l-112-48a24 24 0 0 0-28 6.9l-49.6 60.6A370.66 370.66 0 0 1 130.6 204.11l60.6-49.6a23.94 23.94 0 0 0 6.9-28l-48-112A24.16 24.16 0 0 0 122.6.61l-104 24A24 24 0 0 0 0 48c0 256.5 207.9 464 464 464a24 24 0 0 0 23.4-18.6l24-104a24.29 24.29 0 0 0-14.01-27.6z"></path></svg>			</span>
									<span class="elementor-button-text">+97450961834</span>
					</span>
					</a>
								</div>
				<div class="elementor-element elementor-element-9528c08 elementor-align-center elementor-widget elementor-widget-button" data-id="9528c08" data-element_type="widget" data-e-type="widget" data-widget_type="button.default">
										<a class="elementor-button elementor-button-link elementor-size-sm" href="mailto:sales@dohaquest.com">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-icon">
				<svg class="ekit-svg-icon icon-mail" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><path d="M31.977 13.216c-0-0.384-0.151-0.745-0.423-1.016s-0.632-0.42-1.015-0.42c-0.001 0-0.001 0-0.002 0l-29.101 0.040c-0.384 0.001-0.745 0.151-1.016 0.423s-0.42 0.633-0.42 1.017l0.023 16.445c0.001 0.792 0.646 1.436 1.438 1.436 0.001 0 0.001 0 0.002 0l29.101-0.040c0.384-0 0.745-0.151 1.016-0.423s0.42-0.633 0.42-1.017l-0.023-16.445zM28.959 13.22l-12.957 9.008-12.983-8.972 25.941-0.036zM21.403 23.671l7.728 5.994-26.284 0.036 7.774-6.030c0.314-0.243 0.371-0.695 0.127-1.009s-0.695-0.371-1.009-0.127l-8.28 6.423-0.021-15.045 14.155 9.782c0.123 0.085 0.266 0.128 0.409 0.128s0.287-0.043 0.41-0.129l14.127-9.821 0.022 15.082-8.277-6.42c-0.314-0.243-0.765-0.186-1.009 0.128s-0.186 0.765 0.127 1.009zM19.407 4.298l-2.616-2.337c-0.451-0.403-1.131-0.403-1.582 0l-2.616 2.337c-0.296 0.265-0.322 0.719-0.057 1.015s0.719 0.322 1.015 0.057l1.73-1.545v5.542c0 0.397 0.322 0.719 0.719 0.719s0.719-0.322 0.719-0.719v-5.542l1.73 1.545c0.137 0.122 0.308 0.183 0.479 0.183 0.198 0 0.395-0.081 0.537-0.24 0.265-0.296 0.239-0.751-0.057-1.015z"></path></svg>			</span>
									<span class="elementor-button-text">sales@dohaquest.com/</span>
					</span>
					</a>
								</div>
				</div>
				<div class="elementor-element elementor-element-cfd7f11 elementor-widget elementor-widget-image" data-id="cfd7f11" data-element_type="widget" data-e-type="widget" data-widget_type="image.default">
															<img loading="lazy" decoding="async" width="1024" height="576" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_114_1702559769198-1024x576.png" class="attachment-large size-large wp-image-868" alt="" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_114_1702559769198-1024x576.png 1024w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_114_1702559769198-300x169.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_114_1702559769198-768x432.png 768w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_114_1702559769198-600x338.png 600w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_114_1702559769198.png 1280w" sizes="(max-width: 1024px) 100vw, 1024px" />															</div>
				</div>
		<div class="elementor-element elementor-element-e5eca8a e-con-full e-flex e-con e-child" data-id="e5eca8a" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-e4f58e8 e-flex e-con-boxed e-con e-parent" data-id="e4f58e8" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-5d695f2 e-con-full e-flex e-con e-child" data-id="5d695f2" data-element_type="container" data-e-type="container">
		<div class="elementor-element elementor-element-0b28251 e-con-full e-flex e-con e-child" data-id="0b28251" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-d5d3408 elementor-view-default elementor-widget elementor-widget-icon" data-id="d5d3408" data-element_type="widget" data-e-type="widget" data-widget_type="icon.default">
							<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg aria-hidden="true" class="e-font-icon-svg e-fas-location-arrow" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M444.52 3.52L28.74 195.42c-47.97 22.39-31.98 92.75 19.19 92.75h175.91v175.91c0 51.17 70.36 67.17 92.75 19.19l191.9-415.78c15.99-38.39-25.59-79.97-63.97-63.97z"></path></svg>			</div>
		</div>
						</div>
				<div class="elementor-element elementor-element-135470d e-con e-atomic-element e-div-block-base" data-id="135470d" data-element_type="e-div-block" data-e-type="e-div-block" data-interaction-id="135470d">
				<div class="elementor-element elementor-element-59f33a3 elementor-widget elementor-widget-heading" data-id="59f33a3" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h2 class="elementor-heading-title elementor-size-default">Drop a visit</h2>				</div>
								<p class="e-9d78dac-ca570b0 e-paragraph-base" data-interaction-id="9d78dac"  >
								Al Khaleej Street, Doha Oasis Gate 2, Msheireb
					</p>
				</div>
				</div>
		<div class="elementor-element elementor-element-6c1950e e-con-full e-flex e-con e-child" data-id="6c1950e" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-d374fbd elementor-view-default elementor-widget elementor-widget-icon" data-id="d374fbd" data-element_type="widget" data-e-type="widget" data-widget_type="icon.default">
							<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg class="ekit-svg-icon icon-mail" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><path d="M31.977 13.216c-0-0.384-0.151-0.745-0.423-1.016s-0.632-0.42-1.015-0.42c-0.001 0-0.001 0-0.002 0l-29.101 0.040c-0.384 0.001-0.745 0.151-1.016 0.423s-0.42 0.633-0.42 1.017l0.023 16.445c0.001 0.792 0.646 1.436 1.438 1.436 0.001 0 0.001 0 0.002 0l29.101-0.040c0.384-0 0.745-0.151 1.016-0.423s0.42-0.633 0.42-1.017l-0.023-16.445zM28.959 13.22l-12.957 9.008-12.983-8.972 25.941-0.036zM21.403 23.671l7.728 5.994-26.284 0.036 7.774-6.030c0.314-0.243 0.371-0.695 0.127-1.009s-0.695-0.371-1.009-0.127l-8.28 6.423-0.021-15.045 14.155 9.782c0.123 0.085 0.266 0.128 0.409 0.128s0.287-0.043 0.41-0.129l14.127-9.821 0.022 15.082-8.277-6.42c-0.314-0.243-0.765-0.186-1.009 0.128s-0.186 0.765 0.127 1.009zM19.407 4.298l-2.616-2.337c-0.451-0.403-1.131-0.403-1.582 0l-2.616 2.337c-0.296 0.265-0.322 0.719-0.057 1.015s0.719 0.322 1.015 0.057l1.73-1.545v5.542c0 0.397 0.322 0.719 0.719 0.719s0.719-0.322 0.719-0.719v-5.542l1.73 1.545c0.137 0.122 0.308 0.183 0.479 0.183 0.198 0 0.395-0.081 0.537-0.24 0.265-0.296 0.239-0.751-0.057-1.015z"></path></svg>			</div>
		</div>
						</div>
				<div class="elementor-element elementor-element-951a576 e-con e-atomic-element e-div-block-base" data-id="951a576" data-element_type="e-div-block" data-e-type="e-div-block" data-interaction-id="951a576">
				<div class="elementor-element elementor-element-6d02f37 elementor-widget elementor-widget-heading" data-id="6d02f37" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h2 class="elementor-heading-title elementor-size-default">Email us</h2>				</div>
								<p class="e-ade3fa9-f783d8f e-paragraph-base" data-interaction-id="ade3fa9"  >
								<a target="_blank" href="mailto:sales@dohaquest.com">sales@dohaquest.com</a>
					</p>
				</div>
				</div>
		<div class="elementor-element elementor-element-c66f380 e-con-full e-flex e-con e-child" data-id="c66f380" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-8f3ac38 elementor-view-default elementor-widget elementor-widget-icon" data-id="8f3ac38" data-element_type="widget" data-e-type="widget" data-widget_type="icon.default">
							<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg aria-hidden="true" class="e-font-icon-svg e-fas-phone" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M493.4 24.6l-104-24c-11.3-2.6-22.9 3.3-27.5 13.9l-48 112c-4.2 9.8-1.4 21.3 6.9 28l60.6 49.6c-36 76.7-98.9 140.5-177.2 177.2l-49.6-60.6c-6.8-8.3-18.2-11.1-28-6.9l-112 48C3.9 366.5-2 378.1.6 389.4l24 104C27.1 504.2 36.7 512 48 512c256.1 0 464-207.5 464-464 0-11.2-7.7-20.9-18.6-23.4z"></path></svg>			</div>
		</div>
						</div>
				<div class="elementor-element elementor-element-74b822d e-con e-atomic-element e-div-block-base" data-id="74b822d" data-element_type="e-div-block" data-e-type="e-div-block" data-interaction-id="74b822d">
				<div class="elementor-element elementor-element-557dbbe elementor-widget elementor-widget-heading" data-id="557dbbe" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h2 class="elementor-heading-title elementor-size-default">Reach us on</h2>				</div>
								<p class="e-4895f55-3e70a09 e-paragraph-base" data-interaction-id="4895f55"  >
								WhatsApp or Mobile: +974 5096 1834
					</p>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-22e5673 e-con-full e-flex e-con e-child" data-id="22e5673" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-8146334 elementor-widget elementor-widget-google_maps" data-id="8146334" data-element_type="widget" data-e-type="widget" data-widget_type="google_maps.default">
							<div class="elementor-custom-embed">
			<iframe loading="lazy"
					src="https://maps.google.com/maps?q=Doha%20Quest&#038;t=m&#038;z=16&#038;output=embed&#038;iwloc=near"
					title="Doha Quest"
					aria-label="Doha Quest"
			></iframe>
		</div>
						</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-772f74a e-flex e-con-boxed e-con e-parent" data-id="772f74a" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;shape_divider_top&quot;:&quot;zigzag&quot;}">
					<div class="e-con-inner">
				<div class="elementor-shape elementor-shape-top" aria-hidden="true" data-negative="false">
			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1800 5.8" preserveAspectRatio="none">
  <path class="elementor-shape-fill" d="M5.4.4l5.4 5.3L16.5.4l5.4 5.3L27.5.4 33 5.7 38.6.4l5.5 5.4h.1L49.9.4l5.4 5.3L60.9.4l5.5 5.3L72 .4l5.5 5.3L83.1.4l5.4 5.3L94.1.4l5.5 5.4h.2l5.6-5.4 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.2l5.6-5.4 5.4 5.3L161 .4l5.4 5.3L172 .4l5.5 5.3 5.6-5.3 5.4 5.3 5.7-5.3 5.4 5.4h.2l5.6-5.4 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.4h.2l5.6-5.4 5.5 5.3L261 .4l5.4 5.3L272 .4l5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.1l5.7-5.4 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.3 5.7-5.3 5.4 5.4h.2l5.6-5.4 5.5 5.3L361 .4l5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.1l5.7-5.4 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.1l5.6-5.4 5.5 5.3L461 .4l5.5 5.3 5.6-5.3 5.4 5.3 5.7-5.3 5.4 5.3 5.6-5.3 5.5 5.4h.2l5.6-5.4 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.1L550 .4l5.4 5.3L561 .4l5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.4h.2l5.6-5.4 5.5 5.3 5.6-5.3 5.4 5.3 5.7-5.3 5.4 5.3 5.6-5.3 5.5 5.4h.2L650 .4l5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.4h.2l5.6-5.4 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.4h.2L750 .4l5.5 5.3 5.6-5.3 5.4 5.3 5.7-5.3 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.1l5.7-5.4 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.4h.2L850 .4l5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.2l5.6-5.4 5.4 5.3 5.7-5.3 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.1l5.7-5.4 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.4h.2l5.6-5.4 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.2l5.6-5.4 5.4 5.3 5.7-5.3 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.4h.2l5.6-5.4 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.4h.2l5.6-5.4 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.1l5.7-5.4 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.4h.2l5.6-5.4 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.2l5.6-5.4 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.1l5.7-5.4 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.4h.2l5.6-5.4 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.2l5.6-5.4 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.3 5.7-5.3 5.4 5.4h.2l5.6-5.4 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.4h.2l5.6-5.4 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.1l5.6-5.4 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.3 5.7-5.3 5.4 5.4h.2l5.6-5.4 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.1l5.7-5.4 5.4 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.5 5.4h.1l5.6-5.4 5.5 5.3 5.6-5.3 5.5 5.3 5.6-5.3 5.4 5.3 5.7-5.3 5.4 5.3 5.6-5.3 5.5 5.4V0H-.2v5.8z"/>
</svg>
		</div>
								<p class="e-paragraph-base" data-interaction-id="7a7b61b"  >
								<strong>We are available to support you every day from 8:30 AM till 5:30 PM</strong>
					</p>
					</div>
				</div>
		<div class="elementor-element elementor-element-8b2a8ad e-flex e-con-boxed e-con e-parent" data-id="8b2a8ad" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;shape_divider_bottom&quot;:&quot;pyramids&quot;}">
					<div class="e-con-inner">
				<div class="elementor-shape elementor-shape-bottom" aria-hidden="true" data-negative="false">
			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 100" preserveAspectRatio="none">
	<path class="elementor-shape-fill" d="M761.9,44.1L643.1,27.2L333.8,98L0,3.8V0l1000,0v3.9"/>
</svg>		</div>
		<div class="elementor-element elementor-element-6f24d62 e-con-full e-flex e-con e-child" data-id="6f24d62" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-50ad02e elementor-widget elementor-widget-heading" data-id="50ad02e" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h3 class="elementor-heading-title elementor-size-default">Explore our gallery — filled with smiles, laughter, and unforgettable adventures</h3>				</div>
								<p class="e-paragraph-base" data-interaction-id="5486c93"  >
								<strong>Find out which ride suits your thrill level, age, and mood.</strong>
					</p>
				<div class="elementor-element elementor-element-5092bd4 elementor-widget elementor-widget-button" data-id="5092bd4" data-element_type="widget" data-e-type="widget" data-widget_type="button.default">
										<a class="elementor-button elementor-button-link elementor-size-sm" href="https://dohaquest.com/en/gallery">
						<span class="elementor-button-content-wrapper">
									<span class="elementor-button-text">Gallery</span>
					</span>
					</a>
								</div>
				</div>
		<div class="elementor-element elementor-element-7d4aafb e-con-full e-flex e-con e-child" data-id="7d4aafb" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-700357e e-flex e-con-boxed e-con e-parent" data-id="700357e" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-4a265bd elementor-widget elementor-widget-heading" data-id="4a265bd" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h3 class="elementor-heading-title elementor-size-default">Help &amp; FAQs</h3>				</div>
								<p class="e-3753c0b-3fb6984 e-paragraph-base" data-interaction-id="3753c0b"  >
								<strong>Quick answers to help you get what you need faster.</strong>
					</p>
				<div class="elementor-element elementor-element-cfbef0d elementor-widget elementor-widget-n-accordion" data-id="cfbef0d" data-element_type="widget" data-e-type="widget" data-settings="{&quot;default_state&quot;:&quot;all_collapsed&quot;,&quot;max_items_expended&quot;:&quot;one&quot;,&quot;n_accordion_animation_duration&quot;:{&quot;unit&quot;:&quot;ms&quot;,&quot;size&quot;:400,&quot;sizes&quot;:[]}}" data-widget_type="nested-accordion.default">
							<div class="e-n-accordion" aria-label="Accordion. Open links with Enter or Space, close with Escape, and navigate with Arrow Keys">
						<details id="e-n-accordion-item-2170" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="1" tabindex="0" aria-expanded="false" aria-controls="e-n-accordion-item-2170" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> How many rides are there in Doha Quest? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-2170" class="elementor-element elementor-element-7cb4de8 e-con-full e-flex e-con e-child" data-id="7cb4de8" data-element_type="container" data-e-type="container">
		<div role="region" aria-labelledby="e-n-accordion-item-2170" class="elementor-element elementor-element-f78485b e-flex e-con-boxed e-con e-child" data-id="f78485b" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-1e7452a elementor-widget elementor-widget-text-editor" data-id="1e7452a" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Doha Quest features over 30 rides and attractions, catering to toddlers, families, and thrill-seekers of all ages. To know more, check out the full list of our <a href="https://dohaquest.com/en/rides">rides and attractions</a>!</p>								</div>
					</div>
				</div>
				</div>
					</details>
						<details id="e-n-accordion-item-2171" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="2" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-2171" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> How long do people usually stay? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-2171" class="elementor-element elementor-element-e6149f8 e-con-full e-flex e-con e-child" data-id="e6149f8" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-073bf20 elementor-widget elementor-widget-text-editor" data-id="073bf20" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Most visitors spend 3–4 hours exploring our indoor theme park in Doha to enjoy a mix of thrill rides, interactive zones, and Time Realms. There’s no rush – you’re free to explore at your own pace and make the day your own adventure!</p>								</div>
				</div>
					</details>
						<details id="e-n-accordion-item-2172" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="3" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-2172" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> What are the age/height requirements? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-2172" class="elementor-element elementor-element-1281b59 e-con-full e-flex e-con e-child" data-id="1281b59" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-c0faa36 elementor-widget elementor-widget-text-editor" data-id="c0faa36" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Each ride has its own safety criteria. For example, thrill rides such as EpiQ Coaster and Magma Blast require a minimum height of 140 cm for unaccompanied guests, and 130 cm for persons accompanied by an adult. Family rides such as the enchanting carousel are designed for riders aged 3+, with adult-accompanied options available. Exact requirements are posted on our <a href="https://dohaquest.com/en/rides">Rides page</a>.</p>								</div>
				</div>
					</details>
						<details id="e-n-accordion-item-2173" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="4" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-2173" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> Do you offer birthday packages? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-2173" class="elementor-element elementor-element-4a799aa e-flex e-con-boxed e-con e-child" data-id="4a799aa" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-3f0d0c5 elementor-widget elementor-widget-text-editor" data-id="3f0d0c5" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Yes! We offer tailored birthday packages that include rides, themed decorations, cakes and special meals, and other special perks to make your child’s day unforgettable. To book, visit our <a href="https://dohaquest.com/en/celebrate">Celebrations page</a>.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-2174" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="5" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-2174" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> What is your refund policy? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-2174" class="elementor-element elementor-element-ebaddcf e-flex e-con-boxed e-con e-child" data-id="ebaddcf" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-3d0081a elementor-widget elementor-widget-text-editor" data-id="3d0081a" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>All ticket purchases are non-refundable and non-transferable, except in the case of an event cancellation by Doha Quest.<br /><br />If you experience an issue with your booking or visit, please <a href="https://dohaquest.com/en/contact">contact our Guest Services team</a> as soon as possible — we’ll do our best to help.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-2175" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="6" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-2175" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> Where is Doha Quest located? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-2175" class="elementor-element elementor-element-169480e e-flex e-con-boxed e-con e-child" data-id="169480e" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-9026590 elementor-widget elementor-widget-text-editor" data-id="9026590" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Doha Quest is located inside Doha Oasis, on Al Khaleej Street in Msheireb, Downtown Doha. We’re within walking distance of Msheireb Metro Station, and just minutes away from major hotels, Souq Waqif, and the Corniche. See <a href="https://dohaquest.com/en/contact">map and directions to Doha Quest here</a>.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-2176" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="7" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-2176" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> Is Doha Quest an Indoor theme park? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-2176" class="elementor-element elementor-element-df4a4c7 e-flex e-con-boxed e-con e-child" data-id="df4a4c7" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-399fa51 elementor-widget elementor-widget-text-editor" data-id="399fa51" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Yes! Doha Quest is Qatar’s first and largest indoor theme park, fully climate-controlled for year-round comfort.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-2177" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="8" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-2177" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> What is Doha Quest known for? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-2177" class="elementor-element elementor-element-74c2163 e-flex e-con-boxed e-con e-child" data-id="74c2163" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-e0c48bd elementor-widget elementor-widget-text-editor" data-id="e0c48bd" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Doha Quest boasts the world’s tallest indoor roller coaster and drop tower, along with immersive rides and a combination of thrill, edutainment, and family fun. And let’s not forget iFLY Quest — the ultimate <a href="https://dohaquest.com/en/ifly">indoor skydiving</a> experience.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-2178" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="9" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-2178" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> Is there transportation available from major hotels or malls in Doha? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-2178" class="elementor-element elementor-element-5f447b1 e-flex e-con-boxed e-con e-child" data-id="5f447b1" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-b97b3ca elementor-widget elementor-widget-text-editor" data-id="b97b3ca" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>We don’t offer direct shuttle services, but Doha Quest is conveniently accessible via taxi, rideshare, and especially the Doha Metro. Hop off at Msheireb Station — just a short walk away — and you’ll find Doha Quest in Doha Oasis</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-2179" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="10" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-2179" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> Are there attractions accessible to children and families? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-2179" class="elementor-element elementor-element-98de2f6 e-flex e-con-boxed e-con e-child" data-id="98de2f6" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-fb8c082 elementor-widget elementor-widget-text-editor" data-id="fb8c082" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Yes! The park includes a wide variety of attractions for kids, families, and adults. Some rides have height and safety restrictions, which are clearly displayed.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-21710" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="11" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-21710" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> What types of food and dining options are available inside the park? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-21710" class="elementor-element elementor-element-748ca7c e-flex e-con-boxed e-con e-child" data-id="748ca7c" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-6326e4e elementor-widget elementor-widget-text-editor" data-id="6326e4e" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Doha Quest offers <a href="https://dohaquest.com/en/dine">casual dining and snack options</a>, including Quest Cafe, Sarab Kiosk and Space Cantina. Planet Hollywood Doha is also easily accessible through Quest grounds.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-21711" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="12" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-21711" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> Can I purchase official Doha Quest merchandise at the park? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-21711" class="elementor-element elementor-element-b661331 e-flex e-con-boxed e-con e-child" data-id="b661331" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-c228376 elementor-widget elementor-widget-text-editor" data-id="c228376" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Definitely! Our Time Quest retail store offers exclusive Doha Quest merchandise, apparel, souvenirs, and gifts. You can also <a href="https://store.dohaquest.com/">shop cool Quest gear online</a>.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-21712" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="13" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-21712" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> What are the ticket types and admission policies? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-21712" class="elementor-element elementor-element-d29beb6 e-flex e-con-boxed e-con e-child" data-id="d29beb6" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-699397d elementor-widget elementor-widget-text-editor" data-id="699397d" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>We offer the following General Admission tickets:<br /><br />Adults (13 years and up): QAR 235)<br />Juniors (4 to 12 years): QAR 160<br />Children under 4: Free to enter<br /><br />Want to skip queues on specific rides? For an additional QAR 100, you can purchase a Time Portal fast-track ticket.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-21713" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="14" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-21713" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> Is there parking available at Doha Oasis for Doha Quest visitors? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-21713" class="elementor-element elementor-element-8b8f25b e-flex e-con-boxed e-con e-child" data-id="8b8f25b" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-e667fc4 elementor-widget elementor-widget-text-editor" data-id="e667fc4" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Yes, ample underground parking is available at Doha Oasis, with direct access to Doha Quest via elevators and escalators.<br /><br />Don’t forget to get your parking ticket stamped at the Quest Info Desk to enjoy free parking.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-21714" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="15" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-21714" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> How can I apply for a job or learn about careers at Doha Quest? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-21714" class="elementor-element elementor-element-5be9a5b e-flex e-con-boxed e-con e-child" data-id="5be9a5b" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-e58d7bd elementor-widget elementor-widget-text-editor" data-id="e58d7bd" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>We’re always on the lookout for passionate and talented individuals to join our team.<br /><br />To explore career opportunities, please visit the Careers section on our website or send your CV to <a href="mailto:careers@dohaquest.com">careers@dohaquest.com</a>.</p>								</div>
					</div>
				</div>
					</details>
					</div>
						</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-c68611f elementor-hidden-desktop elementor-hidden-tablet elementor-hidden-mobile e-flex e-con-boxed e-con e-parent" data-id="c68611f" data-element_type="container" data-e-type="container" data-settings="{&quot;shape_divider_top&quot;:&quot;pyramids&quot;}">
					<div class="e-con-inner">
				<div class="elementor-shape elementor-shape-top" aria-hidden="true" data-negative="false">
			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 100" preserveAspectRatio="none">
	<path class="elementor-shape-fill" d="M761.9,44.1L643.1,27.2L333.8,98L0,3.8V0l1000,0v3.9"/>
</svg>		</div>
				<div class="elementor-element elementor-element-d5351c3 elementor-widget elementor-widget-heading" data-id="d5351c3" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h3 class="elementor-heading-title elementor-size-default">Reach Out to Us</h3>				</div>
				<div class="elementor-element elementor-element-3703bcb elementor-widget elementor-widget-shortcode" data-id="3703bcb" data-element_type="widget" data-e-type="widget" data-widget_type="shortcode.default">
							<div class="elementor-shortcode"><div class="forminator-ui forminator-custom-form forminator-custom-form-1141 forminator-design--default  forminator_ajax" data-forminator-render="0" data-form="forminator-module-1141" data-uid="6a3df58cddd76"><br/></div><form
				id="forminator-module-1141"
				class="forminator-ui forminator-custom-form forminator-custom-form-1141 forminator-design--default  forminator_ajax"
				method="post"
				data-forminator-render="0"
				data-form-id="1141"
				 data-color-option="theme" data-design="default" data-grid="open" style="display: none;"
				data-uid="6a3df58cddd76"
			><div role="alert" aria-live="polite" class="forminator-response-message forminator-error" aria-hidden="true"></div><div class="forminator-row"><div id="name-1" class="forminator-field-name forminator-col forminator-col-12 "><div class="forminator-field"><label for="forminator-field-name-1_6a3df58cddd76" id="forminator-field-name-1_6a3df58cddd76-label" class="forminator-label">First Name <span class="forminator-required">*</span></label><input type="text" name="name-1" value="" placeholder="" id="forminator-field-name-1_6a3df58cddd76" class="forminator-input forminator-name--field" aria-required="true" autocomplete="name" /></div></div></div><div class="forminator-row"><div id="name-2" class="forminator-field-name forminator-col forminator-col-12 "><div class="forminator-field"><label for="forminator-field-name-2_6a3df58cddd76" id="forminator-field-name-2_6a3df58cddd76-label" class="forminator-label">Last Name <span class="forminator-required">*</span></label><input type="text" name="name-2" value="" placeholder="" id="forminator-field-name-2_6a3df58cddd76" class="forminator-input forminator-name--field" aria-required="true" autocomplete="name" /></div></div></div><div class="forminator-row"><div id="email-1" class="forminator-field-email forminator-col forminator-col-6 "><div class="forminator-field"><label for="forminator-field-email-1_6a3df58cddd76" id="forminator-field-email-1_6a3df58cddd76-label" class="forminator-label">Email Address <span class="forminator-required">*</span></label><input type="email" name="email-1" value="" placeholder="" id="forminator-field-email-1_6a3df58cddd76" class="forminator-input forminator-email--field" data-required="true" aria-required="true" autocomplete="email" /></div></div><div id="phone-1" class="forminator-field-phone forminator-col forminator-col-6 "><div class="forminator-field"><label for="forminator-field-phone-1_6a3df58cddd76" id="forminator-field-phone-1_6a3df58cddd76-label" class="forminator-label">Phone Number</label><input type="text" name="phone-1" value="" placeholder="" id="forminator-field-phone-1_6a3df58cddd76" class="forminator-input forminator-field--phone" data-required="" aria-required="false" autocomplete="off" /></div></div></div><div class="forminator-row"><div id="select-1" class="forminator-field-select forminator-col forminator-col-12 "><div class="forminator-field"><label for="forminator-form-1141__field--select-1_6a3df58cddd76" id="forminator-form-1141__field--select-1_6a3df58cddd76-label" class="forminator-label">Country of Residence <span class="forminator-required">*</span></label><select  id="forminator-form-1141__field--select-1_6a3df58cddd76" class="forminator-select--field forminator-select2 forminator-select2-multiple" data-required="1" name="select-1" data-default-value="" data-hidden-behavior="zero" data-placeholder="Select" data-search="true" data-search-placeholder="Select" data-checkbox="false" data-allow-clear="false" aria-labelledby="forminator-form-1141__field--select-1_6a3df58cddd76-label"><option value=""  >Select</option><option value="Afghanistan"  data-calculation="0">Afghanistan</option><option value="Albania"  data-calculation="0">Albania</option><option value="Algeria"  data-calculation="0">Algeria</option><option value="Andorra"  data-calculation="0">Andorra</option><option value="Angola"  data-calculation="0">Angola</option><option value="Argentina"  data-calculation="0">Argentina</option><option value="Armenia"  data-calculation="0">Armenia</option><option value="Australia"  data-calculation="0">Australia</option><option value="Austria"  data-calculation="0">Austria</option><option value="Azerbaijan"  data-calculation="0">Azerbaijan</option><option value="Bahamas"  data-calculation="0">Bahamas</option><option value="Bahrain"  data-calculation="0">Bahrain</option><option value="Bangladesh"  data-calculation="0">Bangladesh</option><option value="Barbados"  data-calculation="0">Barbados</option><option value="Belarus"  data-calculation="0">Belarus</option><option value="Belgium"  data-calculation="0">Belgium</option><option value="Belize"  data-calculation="0">Belize</option><option value="Benin"  data-calculation="0">Benin</option><option value="Bhutan"  data-calculation="0">Bhutan</option><option value="Bolivia"  data-calculation="0">Bolivia</option><option value="Bosnia and Herzegovina"  data-calculation="0">Bosnia and Herzegovina</option><option value="Botswana"  data-calculation="0">Botswana</option><option value="Brazil"  data-calculation="0">Brazil</option><option value="Brunei"  data-calculation="0">Brunei</option><option value="Bulgaria"  data-calculation="0">Bulgaria</option><option value="Burkina Faso"  data-calculation="0">Burkina Faso</option><option value="Burundi"  data-calculation="0">Burundi</option><option value="Cambodia"  data-calculation="0">Cambodia</option><option value="Cameroon"  data-calculation="0">Cameroon</option><option value="Canada"  data-calculation="0">Canada</option><option value="Cape Verde"  data-calculation="0">Cape Verde</option><option value="Central African Republic"  data-calculation="0">Central African Republic</option><option value="Chad"  data-calculation="0">Chad</option><option value="Chile"  data-calculation="0">Chile</option><option value="China"  data-calculation="0">China</option><option value="Colombia"  data-calculation="0">Colombia</option><option value="Comoros"  data-calculation="0">Comoros</option><option value="Congo"  data-calculation="0">Congo</option><option value="Costa Rica"  data-calculation="0">Costa Rica</option><option value="Croatia"  data-calculation="0">Croatia</option><option value="Cuba"  data-calculation="0">Cuba</option><option value="Cyprus"  data-calculation="0">Cyprus</option><option value="Czech Republic"  data-calculation="0">Czech Republic</option><option value="Denmark"  data-calculation="0">Denmark</option><option value="Djibouti"  data-calculation="0">Djibouti</option><option value="Dominica"  data-calculation="0">Dominica</option><option value="Dominican Republic"  data-calculation="0">Dominican Republic</option><option value="Ecuador"  data-calculation="0">Ecuador</option><option value="Egypt"  data-calculation="0">Egypt</option><option value="El Salvador"  data-calculation="0">El Salvador</option><option value="Equatorial Guinea"  data-calculation="0">Equatorial Guinea</option><option value="Eritrea"  data-calculation="0">Eritrea</option><option value="Estonia"  data-calculation="0">Estonia</option><option value="Eswatini"  data-calculation="0">Eswatini</option><option value="Ethiopia"  data-calculation="0">Ethiopia</option><option value="Fiji"  data-calculation="0">Fiji</option><option value="Finland"  data-calculation="0">Finland</option><option value="France"  data-calculation="0">France</option><option value="Gabon"  data-calculation="0">Gabon</option><option value="Gambia"  data-calculation="0">Gambia</option><option value="Georgia"  data-calculation="0">Georgia</option><option value="Germany"  data-calculation="0">Germany</option><option value="Ghana"  data-calculation="0">Ghana</option><option value="Greece"  data-calculation="0">Greece</option><option value="Grenada"  data-calculation="0">Grenada</option><option value="Guatemala"  data-calculation="0">Guatemala</option><option value="Guinea"  data-calculation="0">Guinea</option><option value="Guinea-Bissau"  data-calculation="0">Guinea-Bissau</option><option value="Guyana"  data-calculation="0">Guyana</option><option value="Haiti"  data-calculation="0">Haiti</option><option value="Honduras"  data-calculation="0">Honduras</option><option value="Hungary"  data-calculation="0">Hungary</option><option value="Iceland"  data-calculation="0">Iceland</option><option value="India"  data-calculation="0">India</option><option value="Indonesia"  data-calculation="0">Indonesia</option><option value="Iran"  data-calculation="0">Iran</option><option value="Iraq"  data-calculation="0">Iraq</option><option value="Ireland"  data-calculation="0">Ireland</option><option value="Israel"  data-calculation="0">Israel</option><option value="Italy"  data-calculation="0">Italy</option><option value="Jamaica"  data-calculation="0">Jamaica</option><option value="Japan"  data-calculation="0">Japan</option><option value="Jordan"  data-calculation="0">Jordan</option><option value="Kazakhstan"  data-calculation="0">Kazakhstan</option><option value="Kenya"  data-calculation="0">Kenya</option><option value="Kiribati"  data-calculation="0">Kiribati</option><option value="Kuwait"  data-calculation="0">Kuwait</option><option value="Kyrgyzstan"  data-calculation="0">Kyrgyzstan</option><option value="Laos"  data-calculation="0">Laos</option><option value="Latvia"  data-calculation="0">Latvia</option><option value="Lebanon"  data-calculation="0">Lebanon</option><option value="Lesotho"  data-calculation="0">Lesotho</option><option value="Liberia"  data-calculation="0">Liberia</option><option value="Libya"  data-calculation="0">Libya</option><option value="Liechtenstein"  data-calculation="0">Liechtenstein</option><option value="Lithuania"  data-calculation="0">Lithuania</option><option value="Luxembourg"  data-calculation="0">Luxembourg</option><option value="Madagascar"  data-calculation="0">Madagascar</option><option value="Malawi"  data-calculation="0">Malawi</option><option value="Malaysia"  data-calculation="0">Malaysia</option><option value="Maldives"  data-calculation="0">Maldives</option><option value="Mali"  data-calculation="0">Mali</option><option value="Malta"  data-calculation="0">Malta</option><option value="Marshall Islands"  data-calculation="0">Marshall Islands</option><option value="Mauritania"  data-calculation="0">Mauritania</option><option value="Mauritius"  data-calculation="0">Mauritius</option><option value="Mexico"  data-calculation="0">Mexico</option><option value="Micronesia"  data-calculation="0">Micronesia</option><option value="Moldova"  data-calculation="0">Moldova</option><option value="Monaco"  data-calculation="0">Monaco</option><option value="Mongolia"  data-calculation="0">Mongolia</option><option value="Montenegro"  data-calculation="0">Montenegro</option><option value="Morocco"  data-calculation="0">Morocco</option><option value="Mozambique"  data-calculation="0">Mozambique</option><option value="Myanmar"  data-calculation="0">Myanmar</option><option value="Namibia"  data-calculation="0">Namibia</option><option value="Nauru"  data-calculation="0">Nauru</option><option value="Nepal"  data-calculation="0">Nepal</option><option value="Netherlands"  data-calculation="0">Netherlands</option><option value="New Zealand"  data-calculation="0">New Zealand</option><option value="Nicaragua"  data-calculation="0">Nicaragua</option><option value="Niger"  data-calculation="0">Niger</option><option value="Nigeria"  data-calculation="0">Nigeria</option><option value="North Korea"  data-calculation="0">North Korea</option><option value="North Macedonia"  data-calculation="0">North Macedonia</option><option value="Norway"  data-calculation="0">Norway</option><option value="Oman"  data-calculation="0">Oman</option><option value="Pakistan"  data-calculation="0">Pakistan</option><option value="Palau"  data-calculation="0">Palau</option><option value="Panama"  data-calculation="0">Panama</option><option value="Papua New Guinea"  data-calculation="0">Papua New Guinea</option><option value="Paraguay"  data-calculation="0">Paraguay</option><option value="Peru"  data-calculation="0">Peru</option><option value="Philippines"  data-calculation="0">Philippines</option><option value="Poland"  data-calculation="0">Poland</option><option value="Portugal"  data-calculation="0">Portugal</option><option value="Qatar"  data-calculation="0">Qatar</option><option value="Romania"  data-calculation="0">Romania</option><option value="Russia"  data-calculation="0">Russia</option><option value="Rwanda"  data-calculation="0">Rwanda</option><option value="Saint Kitts and Nevis"  data-calculation="0">Saint Kitts and Nevis</option><option value="Saint Lucia"  data-calculation="0">Saint Lucia</option><option value="Saint Vincent and the Grenadines"  data-calculation="0">Saint Vincent and the Grenadines</option><option value="Samoa"  data-calculation="0">Samoa</option><option value="San Marino"  data-calculation="0">San Marino</option><option value="Sao Tome and Principe"  data-calculation="0">Sao Tome and Principe</option><option value="Saudi Arabia"  data-calculation="0">Saudi Arabia</option><option value="Senegal"  data-calculation="0">Senegal</option><option value="Serbia"  data-calculation="0">Serbia</option><option value="Seychelles"  data-calculation="0">Seychelles</option><option value="Sierra Leone"  data-calculation="0">Sierra Leone</option><option value="Singapore"  data-calculation="0">Singapore</option><option value="Slovakia"  data-calculation="0">Slovakia</option><option value="Slovenia"  data-calculation="0">Slovenia</option><option value="Solomon Islands"  data-calculation="0">Solomon Islands</option><option value="Somalia"  data-calculation="0">Somalia</option><option value="South Africa"  data-calculation="0">South Africa</option><option value="South Korea"  data-calculation="0">South Korea</option><option value="South Sudan"  data-calculation="0">South Sudan</option><option value="Spain"  data-calculation="0">Spain</option><option value="Sri Lanka"  data-calculation="0">Sri Lanka</option><option value="Sudan"  data-calculation="0">Sudan</option><option value="Suriname"  data-calculation="0">Suriname</option><option value="Sweden"  data-calculation="0">Sweden</option><option value="Switzerland"  data-calculation="0">Switzerland</option><option value="Syria"  data-calculation="0">Syria</option><option value="Taiwan"  data-calculation="0">Taiwan</option><option value="Tajikistan"  data-calculation="0">Tajikistan</option><option value="Tanzania"  data-calculation="0">Tanzania</option><option value="Thailand"  data-calculation="0">Thailand</option><option value="Timor-Leste"  data-calculation="0">Timor-Leste</option><option value="Togo"  data-calculation="0">Togo</option><option value="Tonga"  data-calculation="0">Tonga</option><option value="Trinidad and Tobago"  data-calculation="0">Trinidad and Tobago</option><option value="Tunisia"  data-calculation="0">Tunisia</option><option value="Turkey"  data-calculation="0">Turkey</option><option value="Turkmenistan"  data-calculation="0">Turkmenistan</option><option value="Tuvalu"  data-calculation="0">Tuvalu</option><option value="Uganda"  data-calculation="0">Uganda</option><option value="Ukraine"  data-calculation="0">Ukraine</option><option value="United Arab Emirates"  data-calculation="0">United Arab Emirates</option><option value="United Kingdom"  data-calculation="0">United Kingdom</option><option value="United States"  data-calculation="0">United States</option><option value="Uruguay"  data-calculation="0">Uruguay</option><option value="Uzbekistan"  data-calculation="0">Uzbekistan</option><option value="Vanuatu"  data-calculation="0">Vanuatu</option><option value="Vatican City"  data-calculation="0">Vatican City</option><option value="Venezuela"  data-calculation="0">Venezuela</option><option value="Vietnam"  data-calculation="0">Vietnam</option><option value="Yemen"  data-calculation="0">Yemen</option><option value="Zambia"  data-calculation="0">Zambia</option><option value="Zimbabwe"  data-calculation="0">Zimbabwe</option></select></div></div></div><div class="forminator-row"><div id="text-1" class="forminator-field-text forminator-col forminator-col-12 "><div class="forminator-field"><label for="forminator-field-text-1_6a3df58cddd76" id="forminator-field-text-1_6a3df58cddd76-label" class="forminator-label">Purpose of Contact</label><input type="text" name="text-1" value="" placeholder="" id="forminator-field-text-1_6a3df58cddd76" class="forminator-input forminator-name--field" data-required="" /></div></div></div><div class="forminator-row"><div id="textarea-1" class="forminator-field-textarea forminator-col forminator-col-12 "><div class="forminator-field"><label for="forminator-field-textarea-1_6a3df58cddd76" id="forminator-field-textarea-1_6a3df58cddd76-label" class="forminator-label">Message</label><span id="forminator-field-textarea-1_6a3df58cddd76-description" class="forminator-description"><span data-limit="180" data-type="characters" data-editor="">0 / 180</span></span><textarea name="textarea-1" placeholder="" id="forminator-field-textarea-1_6a3df58cddd76" class="forminator-textarea" rows="6" style="--forminator-textarea-min-height:140px;" maxlength="180" ></textarea></div></div></div><input type="hidden" name="referer_url" value="" /><div class="forminator-row forminator-row-last"><div class="forminator-col"><div class="forminator-field"><button class="forminator-button forminator-button-submit quest-default">Submit</button></div></div></div><input type="hidden" id="forminator_nonce" name="forminator_nonce" value="368696068e" /><input type="hidden" name="_wp_http_referer" value="/wp-json/wp/v2/pages?per_page=100&#038;_fields=id%2Cslug%2Ctitle%2Ccontent%2Cstatus%2Cparent%2Cmenu_order" /><input type="hidden" name="form_id" value="1141"><input type="hidden" name="page_id" value="1193"><input type="hidden" name="form_type" value="default"><input type="hidden" name="current_url" value="https://bookings.dohaquest.com/overview/"><input type="hidden" name="render_id" value="0"><input type="hidden" name="action" value="forminator_submit_form_custom-forms"></form></div>
						</div>
					</div>
				</div>
				</div>
		', 'Overview', '', 'publish', 'closed', 'closed', '', 'overview', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?page_id=1193', 0, 'page', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(809, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '<style>.kb-row-layout-wrap.wp-block-kadence-rowlayout.kb-row-layout-id809_6915e2-0c{margin-top:0px;margin-bottom:0px;}.kb-row-layout-id809_6915e2-0c > .kt-row-column-wrap{align-content:center;}:where(.kb-row-layout-id809_6915e2-0c > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:center;}.kb-row-layout-id809_6915e2-0c > .kt-row-column-wrap{column-gap:var(--global-kb-gap-none, 0rem );row-gap:var(--global-kb-gap-md, 2rem);max-width:var( --global-content-width, 1290px );padding-left:var(--global-content-edge-padding);padding-right:var(--global-content-edge-padding);padding-top:var(--global-kb-spacing-5xl, 10rem);padding-bottom:var(--global-kb-spacing-5xl, 10rem);min-height:750px;grid-template-columns:minmax(0, calc(65% - ((var(--global-kb-gap-none, 0rem ) * 1 )/2)))minmax(0, calc(35% - ((var(--global-kb-gap-none, 0rem ) * 1 )/2)));}.kb-row-layout-id809_6915e2-0c > .kt-row-layout-overlay{opacity:0.65;background-color:var(--global-palette2, #2B6CB0);}@media all and (max-width: 1024px){.kb-row-layout-id809_6915e2-0c > .kt-row-column-wrap{padding-top:var(--global-kb-spacing-3xl, 6.5rem);padding-right:var(--global-kb-spacing-3xl, 6.5rem);padding-bottom:var(--global-kb-spacing-xl, 4rem);padding-left:var(--global-kb-spacing-xl, 4rem);grid-template-columns:minmax(0, 2fr) minmax(0, 1fr);}}@media all and (max-width: 767px){.kb-row-layout-id809_6915e2-0c > .kt-row-column-wrap{padding-right:var(--global-kb-spacing-xs, 1rem);padding-left:var(--global-kb-spacing-xs, 1rem);grid-template-columns:minmax(0, 1fr);}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_6915e2-0c alignfull kt-row-has-bg wp-block-kadence-rowlayout">
<div class="kb-blocks-bg-video-container"><video class="kb-blocks-bg-video" id="bg-row-video-809_6915e2-0c" playsinline muted loop src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/Homepage_Video.mp4" poster="https://bookings.dohaquest.com/wp-content/uploads/2026/04/Example-Background-Image.jpg" autoplay></video></div>
<div class="kt-row-layout-overlay kt-row-overlay-normal"></div>
<div class="kt-row-column-wrap kt-has-2-columns kt-row-layout-left-golden kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-middle kb-theme-content-width">
<style>.kadence-column809_51e9b7-2e > .kt-inside-inner-col,.kadence-column809_51e9b7-2e > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_51e9b7-2e > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_51e9b7-2e > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_51e9b7-2e > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_51e9b7-2e > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_51e9b7-2e{position:relative;}@media all and (max-width: 1024px){.kadence-column809_51e9b7-2e > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_51e9b7-2e > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<header class="wp-block-kadence-column kadence-column809_51e9b7-2e inner-column-1">
<div class="kt-inside-inner-col">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_fe207e-ac, .wp-block-kadence-advancedheading.kt-adv-heading809_fe207e-ac[data-kb-block="kb-adv-heading809_fe207e-ac"]{margin-bottom:var(--global-kb-spacing-sm, 1.5rem);font-size:var(--global-kb-font-size-xl, 3rem);line-height:1.1;font-style:normal;letter-spacing:-1px;}.wp-block-kadence-advancedheading.kt-adv-heading809_fe207e-ac mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_fe207e-ac[data-kb-block="kb-adv-heading809_fe207e-ac"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_fe207e-ac img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_fe207e-ac[data-kb-block="kb-adv-heading809_fe207e-ac"] img.kb-inline-image{width:150px;vertical-align:baseline;}@media all and (max-width: 1024px){.wp-block-kadence-advancedheading.kt-adv-heading809_fe207e-ac, .wp-block-kadence-advancedheading.kt-adv-heading809_fe207e-ac[data-kb-block="kb-adv-heading809_fe207e-ac"]{font-size:var(--global-kb-font-size-xxl, 4rem);}}@media all and (max-width: 767px){.wp-block-kadence-advancedheading.kt-adv-heading809_fe207e-ac, .wp-block-kadence-advancedheading.kt-adv-heading809_fe207e-ac[data-kb-block="kb-adv-heading809_fe207e-ac"]{font-size:var(--global-kb-font-size-xl, 3rem);}}</style>
<h1 class="kt-adv-heading809_fe207e-ac wp-block-kadence-advancedheading has-theme-palette-9-color has-text-color" data-kb-block="kb-adv-heading809_fe207e-ac"><strong>EXPERIENCE THE WORLD&#8217;S TALLEST INDOOR ROLLER COASTER AND DROP TOWER RIDE</strong>.</h1>
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_cd0306-eb, .wp-block-kadence-advancedheading.kt-adv-heading809_cd0306-eb[data-kb-block="kb-adv-heading809_cd0306-eb"]{margin-bottom:0px;line-height:1.8;font-weight:700;font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_cd0306-eb mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_cd0306-eb[data-kb-block="kb-adv-heading809_cd0306-eb"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_cd0306-eb img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_cd0306-eb[data-kb-block="kb-adv-heading809_cd0306-eb"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_cd0306-eb wp-block-kadence-advancedheading has-theme-palette-9-color has-text-color" data-kb-block="kb-adv-heading809_cd0306-eb">Only at the largest indoor theme park in Doha!<br />Get your tickets online.</p>
<style>.wp-block-kadence-advancedbtn.kt-btns809_7e91d2-4c, .site .entry-content .wp-block-kadence-advancedbtn.kt-btns809_7e91d2-4c, .wp-block-kadence-advancedbtn.kb-btns809_7e91d2-4c, .site .entry-content .wp-block-kadence-advancedbtn.kb-btns809_7e91d2-4c{margin-top:var(--global-kb-spacing-md, 2rem);}.wp-block-kadence-advancedbtn.kb-btns809_7e91d2-4c{gap:var(--global-kb-gap-sm, 1rem);flex-direction:row;justify-content:flex-start;align-items:center;}.kt-btns809_7e91d2-4c .kt-button{font-weight:normal;font-style:normal;}.kt-btns809_7e91d2-4c .kt-btn-wrap-0{margin-right:5px;}.wp-block-kadence-advancedbtn.kt-btns809_7e91d2-4c .kt-btn-wrap-0 .kt-button{color:#555555;border-color:#555555;}.wp-block-kadence-advancedbtn.kt-btns809_7e91d2-4c .kt-btn-wrap-0 .kt-button:hover, .wp-block-kadence-advancedbtn.kt-btns809_7e91d2-4c .kt-btn-wrap-0 .kt-button:focus{color:#ffffff;border-color:#444444;}.wp-block-kadence-advancedbtn.kt-btns809_7e91d2-4c .kt-btn-wrap-0 .kt-button::before{display:none;}.wp-block-kadence-advancedbtn.kt-btns809_7e91d2-4c .kt-btn-wrap-0 .kt-button:hover, .wp-block-kadence-advancedbtn.kt-btns809_7e91d2-4c .kt-btn-wrap-0 .kt-button:focus{background:#444444;}@media all and (max-width: 767px){.wp-block-kadence-advancedbtn.kb-btns809_7e91d2-4c{flex-direction:row;justify-content:flex-start;align-items:center;}}</style>
<div class="wp-block-kadence-advancedbtn kb-buttons-wrap kb-btns809_7e91d2-4c">
<style>ul.menu .wp-block-kadence-advancedbtn .kb-btn809_1cfc0d-32.kb-button{width:initial;}.wp-block-kadence-advancedbtn .kb-btn809_1cfc0d-32.kb-button{color:var(--global-palette1, #3182CE);background:var(--global-palette9, #ffffff);font-weight:bold;padding-top:var(--global-kb-spacing-xs, 1rem);padding-right:var(--global-kb-spacing-md, 2rem);padding-bottom:var(--global-kb-spacing-xs, 1rem);padding-left:var(--global-kb-spacing-md, 2rem);}.wp-block-kadence-advancedbtn .kb-btn809_1cfc0d-32.kb-button:hover, .wp-block-kadence-advancedbtn .kb-btn809_1cfc0d-32.kb-button:focus{color:var(--global-palette1, #3182CE);background:var(--global-palette8, #F7FAFC);box-shadow:inset 0px 0px 60px -15px rgba(0, 0, 0, 0.4);}</style>
<p><a class="kb-button kt-button button kb-btn809_1cfc0d-32 kt-btn-size-standard kt-btn-width-type-auto kb-btn-global-fill  kt-btn-has-text-true kt-btn-has-svg-false  wp-block-kadence-singlebtn" href="#Ticketing"><span class="kt-btn-inner-text">Book Your Admission Tickets</span></a></p>
</div>
</div>
</header>
<style>.kadence-column809_675812-92 > .kt-inside-inner-col,.kadence-column809_675812-92 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_675812-92 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_675812-92 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_675812-92 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_675812-92 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_675812-92{position:relative;}@media all and (max-width: 1024px){.kadence-column809_675812-92 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_675812-92 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_675812-92 inner-column-2">
<div class="kt-inside-inner-col"></div>
</div>
</div>
</div>
<style>.kb-row-layout-wrap.wp-block-kadence-rowlayout.kb-row-layout-id809_0ae385-d0{margin-top:0px;}.kb-row-layout-id809_0ae385-d0 > .kt-row-column-wrap{align-content:start;}:where(.kb-row-layout-id809_0ae385-d0 > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:start;}.kb-row-layout-id809_0ae385-d0 > .kt-row-column-wrap{column-gap:var(--global-kb-gap-md, 2rem);row-gap:var(--global-kb-gap-none, 0rem );max-width:var( --global-content-width, 1290px );padding-left:var(--global-content-edge-padding);padding-right:var(--global-content-edge-padding);padding-top:0px;padding-bottom:var(--global-kb-spacing-md, 2rem);grid-template-columns:minmax(0, 1fr);}.kb-row-layout-id809_0ae385-d0 > .kt-row-layout-overlay{opacity:0.30;}@media all and (max-width: 1024px){.kb-row-layout-id809_0ae385-d0 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}@media all and (max-width: 767px){.kb-row-layout-id809_0ae385-d0 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_0ae385-d0 alignfull has-theme-palette9-background-color kt-row-has-bg wp-block-kadence-rowlayout">
<div class="kt-row-column-wrap kt-has-1-columns kt-row-layout-equal kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-top kb-theme-content-width">
</div>
</div>
<style>.kadence-column809_38db2f-02 > .kt-inside-inner-col,.kadence-column809_38db2f-02 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_38db2f-02 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_38db2f-02 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_38db2f-02 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_38db2f-02 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_38db2f-02{position:relative;}@media all and (max-width: 1024px){.kadence-column809_38db2f-02 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_38db2f-02 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_38db2f-02">
<div class="kt-inside-inner-col">
<style>.kb-row-layout-id809_5f29cb-5e > .kt-row-column-wrap{align-content:start;}:where(.kb-row-layout-id809_5f29cb-5e > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:start;}.kb-row-layout-id809_5f29cb-5e > .kt-row-column-wrap{column-gap:var(--global-kb-gap-lg, 4rem);row-gap:var(--global-kb-gap-lg, 4rem);padding-top:var(--global-kb-spacing-sm, 1.5rem);}.kb-row-layout-id809_5f29cb-5e > .kt-row-column-wrap > div:not(.added-for-specificity){grid-column:initial;}.kb-row-layout-id809_5f29cb-5e > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr) minmax(0, 6fr) minmax(0, 1fr);}.kb-row-layout-id809_5f29cb-5e > .kt-row-layout-overlay{opacity:0.30;}.kb-row-layout-id809_5f29cb-5e .kt-row-layout-top-sep{height:241px;}.kb-row-layout-id809_5f29cb-5e .kt-row-layout-top-sep svg{width:100%;}.kb-row-layout-id809_5f29cb-5e .kt-row-layout-top-sep svg{fill:#ffffff!important;}@media all and (max-width: 1024px){.kb-row-layout-id809_5f29cb-5e > .kt-row-column-wrap > div:not(.added-for-specificity){grid-column:initial;}}@media all and (max-width: 1024px){.kb-row-layout-id809_5f29cb-5e > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr) minmax(0, 6fr) minmax(0, 1fr);}}@media all and (max-width: 767px){.kb-row-layout-id809_5f29cb-5e > .kt-row-column-wrap > div:not(.added-for-specificity){grid-column:initial;}.kb-row-layout-id809_5f29cb-5e > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_5f29cb-5e alignnone wp-block-kadence-rowlayout" id="Ticketing">
<div class="kt-row-layout-top-sep kt-row-sep-type-sltr"><svg viewBox="0 0 1000 100" preserveAspectRatio="none"><path d="M0,0l1000,100l-1000,0l0,-100Z" /></svg></div>
<div class="kt-row-column-wrap kt-has-3-columns kt-row-layout-center-exwide kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-top">
<style>.kadence-column809_b34136-06 > .kt-inside-inner-col,.kadence-column809_b34136-06 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_b34136-06 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_b34136-06 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_b34136-06 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_b34136-06 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_b34136-06{position:relative;}@media all and (max-width: 1024px){.kadence-column809_b34136-06 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_b34136-06 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_b34136-06">
<div class="kt-inside-inner-col"></div>
</div>
<style>.kadence-column809_12d205-d4 > .kt-inside-inner-col,.kadence-column809_12d205-d4 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_12d205-d4 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_12d205-d4 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_12d205-d4 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_12d205-d4 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_12d205-d4{position:relative;}@media all and (max-width: 1024px){.kadence-column809_12d205-d4 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_12d205-d4 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_12d205-d4">
<div class="kt-inside-inner-col">
<style type="text/css">.wpos-wcb-datepicker td.wpos-wc-bw-h-close span{background-color: #f67c10; color: #ffffff;}.wpos-wcb-datepicker td.wpos-wc-bw-eg-close span{background-color: #c42a2a; color: #ffffff;}.wpos-wcb-booking-status-closed .wpos-wcb-booking-status-mark{background-color: #c42a2a;}.wpos-wcb-booking-status-holiday .wpos-wcb-booking-status-mark{background-color: #f67c10;}</style>
	<div class="wpos-wc-bw-step-timer-wrp">
		<div class="wpos-wc-bw-bkn-wrap">
				<ul><li class="wpos-wc-bw-bkn  wpos-wc-bw-bkn-link">
					<a href="https://bookings.dohaquest.com/"><i class="fa-solid fa-bars wpos-wc-bw-icon-left"></i> <span>Category</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li><li class="wpos-wc-bw-bkn  wpos-wc-bw-bkn-link">
					<a href="https://bookings.dohaquest.com/?cid=20"><i class="fa-solid fa-ticket wpos-wc-bw-icon-left"></i> <span>Tickets</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li><li class="wpos-wc-bw-bkn ">
					<a href="javascript:void(0);"><i class="fa-solid fa-cart-plus wpos-wc-bw-icon-left"></i> <span>Cart</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li><li class="wpos-wc-bw-bkn ">
					<a href="javascript:void(0);"><i class="fa-solid fa-credit-card wpos-wc-bw-icon-left"></i> <span>Checkout</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li><li class="wpos-wc-bw-bkn ">
					<a href="javascript:void(0);"><i class="fa-solid fa-lock wpos-wc-bw-icon-left"></i> <span>Confirmation</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li></ul>
			</div>	</div>
			<div class="wpos-wc-bw-product-cat-wrap">
			<div class="wpos-wc-bw-product-cat-inr">
				
<div class="wpos-wc-bw-product-pcat wpos-wc-bw-product-cat wpos-wc-bw-cat-20 wpos-wc-bw-has-cat-img" id="wpos-wc-bw-cat-20">
	<div class="wpos-wc-bw-product-cat-list">
					<div class="wpos-wc-bw-cat-img-wrp">
				<a href="https://bookings.dohaquest.com/?cid=20">
					<div class="wpos-wc-bw-cat-img-inr">
						<img decoding="async" src="https://bookings.dohaquest.com/wp-content/uploads/2025/12/cat-1.png" class="wpos-wc-bw-cat-img" alt="Admission Tickets" />
					</div>
				</a>
			</div>
				
		<div class="wpos-wc-bw-cat-cnt-wrp">
			<div class="wpos-wc-bw-cat-ttl"><a href="https://bookings.dohaquest.com/?cid=20">Admission Tickets</a></div>
			
			<a href="https://bookings.dohaquest.com/?cid=20" class="mwbook-book-btn">Book Now <i class="fa fa-arrow-right"></i></a>
		</div>
	</div>
</div>			</div>
		</div>
		
</div>
</div>
<style>.kadence-column809_503304-9e > .kt-inside-inner-col{box-shadow:0px 0px 60px 5px rgba(0, 0, 0, 0.2);}.kadence-column809_503304-9e > .kt-inside-inner-col,.kadence-column809_503304-9e > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_503304-9e > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_503304-9e > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_503304-9e > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_503304-9e > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_503304-9e{position:relative;}@media all and (max-width: 1024px){.kadence-column809_503304-9e > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_503304-9e > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_503304-9e">
<div class="kt-inside-inner-col"></div>
</div>
<style>.kadence-column809_b3dea1-92 > .kt-inside-inner-col,.kadence-column809_b3dea1-92 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_b3dea1-92 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_b3dea1-92 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_b3dea1-92 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_b3dea1-92 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_b3dea1-92{position:relative;}@media all and (max-width: 1024px){.kadence-column809_b3dea1-92 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_b3dea1-92 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_b3dea1-92">
<div class="kt-inside-inner-col"></div>
</div>
</div>
</div>
</div>
</div>
<style>.kb-row-layout-id809_b0ef6b-c8 > .kt-row-column-wrap{align-content:start;}:where(.kb-row-layout-id809_b0ef6b-c8 > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:start;}.kb-row-layout-id809_b0ef6b-c8 > .kt-row-column-wrap{column-gap:var(--global-kb-gap-md, 2rem);row-gap:var(--global-kb-gap-md, 2rem);max-width:var( --global-content-width, 1290px );padding-left:var(--global-content-edge-padding);padding-right:var(--global-content-edge-padding);padding-top:var(--global-kb-spacing-xxl, 5rem);padding-bottom:var(--global-kb-spacing-xl, 4rem);grid-template-columns:minmax(0, 1fr);}.kb-row-layout-id809_b0ef6b-c8 > .kt-row-layout-overlay{opacity:0.30;}@media all and (max-width: 1024px){.kb-row-layout-id809_b0ef6b-c8 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}@media all and (max-width: 767px){.kb-row-layout-id809_b0ef6b-c8 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_b0ef6b-c8 alignfull has-theme-palette9-background-color kt-row-has-bg wp-block-kadence-rowlayout">
<div class="kt-row-column-wrap kt-has-1-columns kt-row-layout-equal kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-top kb-theme-content-width">
<style>.kadence-column809_4698d9-6a > .kt-inside-inner-col,.kadence-column809_4698d9-6a > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_4698d9-6a > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_4698d9-6a > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_4698d9-6a > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_4698d9-6a > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_4698d9-6a{position:relative;}@media all and (max-width: 1024px){.kadence-column809_4698d9-6a > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_4698d9-6a > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_4698d9-6a inner-column-1">
<div class="kt-inside-inner-col">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_01fbf6-10, .wp-block-kadence-advancedheading.kt-adv-heading809_01fbf6-10[data-kb-block="kb-adv-heading809_01fbf6-10"]{margin-top:0px;margin-bottom:var(--global-kb-spacing-xs, 1rem);text-align:center;font-size:var(--global-kb-font-size-xl, 3rem);line-height:1.4;font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_01fbf6-10 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_01fbf6-10[data-kb-block="kb-adv-heading809_01fbf6-10"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_01fbf6-10 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_01fbf6-10[data-kb-block="kb-adv-heading809_01fbf6-10"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<h2 class="kt-adv-heading809_01fbf6-10 wp-block-kadence-advancedheading has-theme-palette-3-color has-text-color" data-kb-block="kb-adv-heading809_01fbf6-10">Doha Quest Theme Park</h2>
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_adcec0-4f, .wp-block-kadence-advancedheading.kt-adv-heading809_adcec0-4f[data-kb-block="kb-adv-heading809_adcec0-4f"]{max-width:70%;margin-right:auto;margin-left:auto;text-align:center;line-height:1.8;font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_adcec0-4f mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_adcec0-4f[data-kb-block="kb-adv-heading809_adcec0-4f"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_adcec0-4f img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_adcec0-4f[data-kb-block="kb-adv-heading809_adcec0-4f"] img.kb-inline-image{width:150px;vertical-align:baseline;}@media all and (max-width: 1024px){.wp-block-kadence-advancedheading.kt-adv-heading809_adcec0-4f, .wp-block-kadence-advancedheading.kt-adv-heading809_adcec0-4f[data-kb-block="kb-adv-heading809_adcec0-4f"]{max-width:85%;}}@media all and (max-width: 767px){.wp-block-kadence-advancedheading.kt-adv-heading809_adcec0-4f, .wp-block-kadence-advancedheading.kt-adv-heading809_adcec0-4f[data-kb-block="kb-adv-heading809_adcec0-4f"]{max-width:100%;}}</style>
<p class="kt-adv-heading809_adcec0-4f wp-block-kadence-advancedheading has-theme-palette-4-color has-text-color" data-kb-block="kb-adv-heading809_adcec0-4f">Dare to try the world’s tallest indoor roller coaster and take the plunge on the world’s tallest indoor drop tower ride. Then enter our immersive Time Realms, where ancient lands, futuristic cities and intergalactic stations come to life. With over 30 rides and attractions, Quest theme park in Doha is the ultimate indoor, immersive experience all year round. Your Quest for adventure starts here!</p>
<div class="wp-block-image">
<figure class="aligncenter size-thumbnail"><img loading="lazy" decoding="async" width="150" height="150" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-150x150.png" alt="" class="wp-image-899" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-150x150.png 150w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-300x300.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-768x769.png 768w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-600x601.png 600w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1-100x100.png 100w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_21_Guinness_World_Records_logo-1.png 960w" sizes="(max-width: 150px) 100vw, 150px" /></figure>
</div>
</div>
</div>
</div>
</div>
<hr class="wp-block-separator has-alpha-channel-opacity is-style-dots" style="margin-top:0;margin-bottom:0"/>
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_53975d-ce, .wp-block-kadence-advancedheading.kt-adv-heading809_53975d-ce[data-kb-block="kb-adv-heading809_53975d-ce"]{margin-top:0px;margin-bottom:var(--global-kb-spacing-sm, 1.5rem);text-align:center;font-size:var(--global-kb-font-size-lg, 2rem);line-height:1.2;font-style:normal;font-family:Helvetica, sans-serif;text-shadow:0px 0px 1px rgba(0, 0, 0, 0.2);}.wp-block-kadence-advancedheading.kt-adv-heading809_53975d-ce mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_53975d-ce[data-kb-block="kb-adv-heading809_53975d-ce"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_53975d-ce img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_53975d-ce[data-kb-block="kb-adv-heading809_53975d-ce"] img.kb-inline-image{width:150px;vertical-align:baseline;}@media all and (max-width: 1024px){.wp-block-kadence-advancedheading.kt-adv-heading809_53975d-ce, .wp-block-kadence-advancedheading.kt-adv-heading809_53975d-ce[data-kb-block="kb-adv-heading809_53975d-ce"]{text-shadow:0px 0px 1px rgba(0, 0, 0, 0.2);}}@media all and (max-width: 767px){.wp-block-kadence-advancedheading.kt-adv-heading809_53975d-ce, .wp-block-kadence-advancedheading.kt-adv-heading809_53975d-ce[data-kb-block="kb-adv-heading809_53975d-ce"]{text-shadow:0px 0px 1px rgba(0, 0, 0, 0.2);}}</style>
<h3 class="kt-adv-heading809_53975d-ce wp-block-kadence-advancedheading has-theme-palette-3-color has-text-color" data-kb-block="kb-adv-heading809_53975d-ce">PLAN YOUR VISIT</h3>
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_8f6f5d-2b, .wp-block-kadence-advancedheading.kt-adv-heading809_8f6f5d-2b[data-kb-block="kb-adv-heading809_8f6f5d-2b"]{text-align:center;line-height:1.6;font-style:normal;font-family:Helvetica, sans-serif;}.wp-block-kadence-advancedheading.kt-adv-heading809_8f6f5d-2b mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_8f6f5d-2b[data-kb-block="kb-adv-heading809_8f6f5d-2b"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_8f6f5d-2b img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_8f6f5d-2b[data-kb-block="kb-adv-heading809_8f6f5d-2b"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_8f6f5d-2b wp-block-kadence-advancedheading has-theme-palette-4-color has-text-color" data-kb-block="kb-adv-heading809_8f6f5d-2b">Make the most of your day at the most well-loved amusement park in Qatar!</p>
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_b31648-55, .wp-block-kadence-advancedheading.kt-adv-heading809_b31648-55[data-kb-block="kb-adv-heading809_b31648-55"]{margin-top:0px;margin-bottom:var(--global-kb-spacing-sm, 1.5rem);text-align:center;font-size:var(--global-kb-font-size-lg, 2rem);line-height:1.2;font-style:normal;font-family:Helvetica, sans-serif;color:#867a7a;text-shadow:0px 0px 1px rgba(0, 0, 0, 0.2);}.wp-block-kadence-advancedheading.kt-adv-heading809_b31648-55 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_b31648-55[data-kb-block="kb-adv-heading809_b31648-55"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_b31648-55 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_b31648-55[data-kb-block="kb-adv-heading809_b31648-55"] img.kb-inline-image{width:150px;vertical-align:baseline;}@media all and (max-width: 1024px){.wp-block-kadence-advancedheading.kt-adv-heading809_b31648-55, .wp-block-kadence-advancedheading.kt-adv-heading809_b31648-55[data-kb-block="kb-adv-heading809_b31648-55"]{text-shadow:0px 0px 1px rgba(0, 0, 0, 0.2);}}@media all and (max-width: 767px){.wp-block-kadence-advancedheading.kt-adv-heading809_b31648-55, .wp-block-kadence-advancedheading.kt-adv-heading809_b31648-55[data-kb-block="kb-adv-heading809_b31648-55"]{text-shadow:0px 0px 1px rgba(0, 0, 0, 0.2);}}</style>
<h6 class="kt-adv-heading809_b31648-55 wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_b31648-55">Opening Hours</h6>
<style>.kb-row-layout-id809_458296-17 > .kt-row-column-wrap{align-content:center;}:where(.kb-row-layout-id809_458296-17 > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:center;}.kb-row-layout-id809_458296-17 > .kt-row-column-wrap{column-gap:var(--global-kb-gap-none, 0rem );row-gap:var(--global-kb-gap-sm, 1rem);max-width:var( --global-content-width, 1290px );padding-left:var(--global-content-edge-padding);padding-right:var(--global-content-edge-padding);padding-top:var(--global-kb-spacing-xxl, 5rem);padding-bottom:var(--global-kb-spacing-xxl, 5rem);}.kb-row-layout-id809_458296-17 > .kt-row-column-wrap > *:nth-child(3n of *:not(style)){grid-column:1 / -1;}.kb-row-layout-id809_458296-17 > .kt-row-column-wrap{grid-template-columns:repeat(2, minmax(0, 1fr));}.kb-row-layout-id809_458296-17 > .kt-row-layout-overlay{opacity:0.35;}.kb-row-layout-id809_458296-17 .kt-row-layout-bottom-sep{height:238px;}.kb-row-layout-id809_458296-17 .kt-row-layout-bottom-sep svg{width:100%;}.kb-row-layout-id809_458296-17 .kt-row-layout-bottom-sep svg{fill:var(--global-palette7, #EDF2F7)!important;}.kb-row-layout-id809_458296-17 .kt-row-layout-top-sep{height:100px;}.kb-row-layout-id809_458296-17 .kt-row-layout-top-sep svg{width:100%;}.kb-row-layout-id809_458296-17 .kt-row-layout-top-sep svg{fill:var(--global-palette7, #EDF2F7)!important;}@media all and (max-width: 1024px){.kb-row-layout-id809_458296-17 > .kt-row-column-wrap > *:nth-child(3n of *:not(style)){grid-column:1 / -1;}}@media all and (max-width: 1024px){.kb-row-layout-id809_458296-17 > .kt-row-column-wrap{grid-template-columns:repeat(2, minmax(0, 1fr));}}@media all and (max-width: 1024px){.kb-row-layout-id809_458296-17 .kt-row-layout-bottom-sep{height:px;}}@media all and (max-width: 1024px){.kb-row-layout-id809_458296-17 .kt-row-layout-bottom-sep svg{width:%;}}@media all and (max-width: 767px){.kb-row-layout-id809_458296-17 > .kt-row-column-wrap > div:not(.added-for-specificity){grid-column:initial;}.kb-row-layout-id809_458296-17 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}.kb-row-layout-id809_458296-17 .kt-row-layout-bottom-sep{height:px;}.kb-row-layout-id809_458296-17 .kt-row-layout-bottom-sep svg{width:%;}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_458296-17 alignfull wp-block-kadence-rowlayout">
<div class="kt-row-layout-bottom-sep kt-row-sep-type-mtns"><svg viewBox="0 0 1000 100" preserveAspectRatio="none"><path d="M1000,50l-182.69,-45.286l-292.031,61.197l-190.875,-41.075l-143.748,28.794l-190.656,-23.63l0,70l1000,0l0,-50Z" style="opacity: 0.4" /><path d="M1000,57l-152.781,-22.589l-214.383,19.81l-159.318,-21.471l-177.44,25.875l-192.722,5.627l-103.356,-27.275l0,63.023l1000,0l0,-43Z" /></svg></div>
<div class="kt-row-column-wrap kt-has-3-columns kt-row-layout-last-row kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-middle kb-theme-content-width">
<style>.kadence-column809_1fc5d8-ae > .kt-inside-inner-col,.kadence-column809_1fc5d8-ae > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_1fc5d8-ae > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_1fc5d8-ae > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_1fc5d8-ae > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_1fc5d8-ae > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_1fc5d8-ae{position:relative;}.kadence-column809_1fc5d8-ae, .kt-inside-inner-col > .kadence-column809_1fc5d8-ae:not(.specificity){margin-top:0px;margin-right:var(--global-kb-spacing-xl, 4rem);margin-bottom:0px;}@media all and (max-width: 1024px){.kadence-column809_1fc5d8-ae > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 1024px){.kadence-column809_1fc5d8-ae, .kt-inside-inner-col > .kadence-column809_1fc5d8-ae:not(.specificity){margin-right:0px;}}@media all and (max-width: 767px){.kadence-column809_1fc5d8-ae > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_1fc5d8-ae inner-column-1">
<div class="kt-inside-inner-col">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_eb63f8-96, .wp-block-kadence-advancedheading.kt-adv-heading809_eb63f8-96[data-kb-block="kb-adv-heading809_eb63f8-96"]{line-height:1.8;font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_eb63f8-96 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_eb63f8-96[data-kb-block="kb-adv-heading809_eb63f8-96"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_eb63f8-96 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_eb63f8-96[data-kb-block="kb-adv-heading809_eb63f8-96"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_eb63f8-96 wp-block-kadence-advancedheading has-theme-palette-4-color has-text-color" data-kb-block="kb-adv-heading809_eb63f8-96">
<style>.wp-block-kadence-column.kb-section-dir-horizontal > .kt-inside-inner-col > .kt-info-box809_8838bf-80 .kt-blocks-info-box-link-wrap{max-width:unset;}.kt-info-box809_8838bf-80 .kt-blocks-info-box-link-wrap{border-top:5px solid rgba(36,45,54,0);border-right:5px solid rgba(36,45,54,0);border-bottom:5px solid rgba(36,45,54,0);border-left:5px solid rgba(36,45,54,0);border-top-left-radius:20px;border-top-right-radius:20px;border-bottom-right-radius:20px;border-bottom-left-radius:20px;background:#f7fafc;padding-top:var(--global-kb-spacing-sm, 1.5rem);padding-right:var(--global-kb-spacing-sm, 1.5rem);padding-bottom:var(--global-kb-spacing-sm, 1.5rem);padding-left:var(--global-kb-spacing-sm, 1.5rem);margin-top:50px;}.kt-info-box809_8838bf-80 .kadence-info-box-icon-container .kt-info-svg-icon, .kt-info-box809_8838bf-80 .kt-info-svg-icon-flip, .kt-info-box809_8838bf-80 .kt-blocks-info-box-number{font-size:50px;}.kt-info-box809_8838bf-80 .kt-blocks-info-box-media{background:#ffffff;border-color:var(--global-palette7, #eeeeee);border-radius:200px;overflow:hidden;border-top-width:5px;border-right-width:5px;border-bottom-width:5px;border-left-width:5px;padding-top:20px;padding-right:20px;padding-bottom:20px;padding-left:20px;}.kt-info-box809_8838bf-80 .kt-blocks-info-box-media-container{margin-top:-75px;margin-right:0px;margin-bottom:20px;margin-left:0px;}.kt-info-box809_8838bf-80 .kt-blocks-info-box-media .kadence-info-box-image-intrisic img{border-radius:200px;}.kt-info-box809_8838bf-80 .kt-infobox-textcontent h2.kt-blocks-info-box-title{color:#474444;font-family:Helvetica, sans-serif;font-style:normal;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;margin-top:5px;margin-right:0px;margin-bottom:10px;margin-left:0px;}.kt-info-box809_8838bf-80 .kt-infobox-textcontent .kt-blocks-info-box-text{color:#474444;}.kt-info-box809_8838bf-80 .kt-blocks-info-box-learnmore{background:transparent;border-width:0px 0px 0px 0px;padding-top:4px;padding-right:8px;padding-bottom:4px;padding-left:8px;margin-top:10px;margin-right:0px;margin-bottom:10px;margin-left:0px;}@media all and (max-width: 1024px){.kt-info-box809_8838bf-80 .kt-blocks-info-box-link-wrap{border-top:5px solid rgba(36,45,54,0);border-right:5px solid rgba(36,45,54,0);border-bottom:5px solid rgba(36,45,54,0);border-left:5px solid rgba(36,45,54,0);}}@media all and (max-width: 767px){.kt-info-box809_8838bf-80 .kt-blocks-info-box-link-wrap{border-top:5px solid rgba(36,45,54,0);border-right:5px solid rgba(36,45,54,0);border-bottom:5px solid rgba(36,45,54,0);border-left:5px solid rgba(36,45,54,0);}}</style>
<div class="wp-block-kadence-infobox kt-info-box809_8838bf-80"><span class="kt-blocks-info-box-link-wrap info-box-link kt-blocks-info-box-media-align-top kt-info-halign-center"></p>
<div class="kt-blocks-info-box-media-container">
<div class="kt-blocks-info-box-media kt-info-media-animate-none">
<div class="kadence-info-box-icon-container kt-info-icon-animate-none">
<div class="kadence-info-box-icon-inner-container"><span class="kb-svg-icon-wrap kb-svg-icon-fas_calendar-alt kt-info-svg-icon"><svg viewBox="0 0 448 512"  fill="currentColor" xmlns="http://www.w3.org/2000/svg"  aria-hidden="true"><path d="M436 160H12c-6.6 0-12-5.4-12-12v-36c0-26.5 21.5-48 48-48h48V12c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v52h128V12c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v52h48c26.5 0 48 21.5 48 48v36c0 6.6-5.4 12-12 12zM12 192h424c6.6 0 12 5.4 12 12v260c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V204c0-6.6 5.4-12 12-12zm116 204c0-6.6-5.4-12-12-12H76c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12v-40zm0-128c0-6.6-5.4-12-12-12H76c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12v-40zm128 128c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12v-40zm0-128c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12v-40zm128 128c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12v-40zm0-128c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12v-40z"/></svg></span></div>
</div>
</div>
</div>
<div class="kt-infobox-textcontent">
<h2 class="kt-blocks-info-box-title">Thursday to Saturday</h2>
<p class="kt-blocks-info-box-text">5.30 PM &#8211; 12:00 AM</p>
<p></p>
</div>
<p></span></div>
</div>
</div>
<style>.kadence-column809_e42d70-18 > .kt-inside-inner-col{display:flex;}.kadence-column809_e42d70-18 > .kt-inside-inner-col,.kadence-column809_e42d70-18 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_e42d70-18 > .kt-inside-inner-col{row-gap:var(--global-kb-gap-none, 0rem );column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_e42d70-18 > .kt-inside-inner-col{flex-direction:column;justify-content:space-between;}.kadence-column809_e42d70-18 > .kt-inside-inner-col > .aligncenter{width:100%;}.kt-row-column-wrap > .kadence-column809_e42d70-18{align-self:center;}.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_e42d70-18{align-self:auto;}.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_e42d70-18 > .kt-inside-inner-col{flex-direction:column;justify-content:space-between;}.kadence-column809_e42d70-18 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_e42d70-18{position:relative;}.kadence-column809_e42d70-18, .kt-inside-inner-col > .kadence-column809_e42d70-18:not(.specificity){margin-top:0px;margin-bottom:0px;}@media all and (max-width: 1024px){.kt-row-column-wrap > .kadence-column809_e42d70-18{align-self:center;}}@media all and (max-width: 1024px){.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_e42d70-18{align-self:auto;}}@media all and (max-width: 1024px){.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_e42d70-18 > .kt-inside-inner-col{flex-direction:column;justify-content:space-between;}}@media all and (max-width: 1024px){.kadence-column809_e42d70-18 > .kt-inside-inner-col{flex-direction:column;justify-content:space-between;}}@media all and (max-width: 767px){.kt-row-column-wrap > .kadence-column809_e42d70-18{align-self:center;}.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_e42d70-18{align-self:auto;}.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_e42d70-18 > .kt-inside-inner-col{flex-direction:column;justify-content:space-between;}.kadence-column809_e42d70-18 > .kt-inside-inner-col{flex-direction:column;justify-content:space-between;}}</style>
<div class="wp-block-kadence-column kadence-column809_e42d70-18 inner-column-2">
<div class="kt-inside-inner-col">
<style>.wp-block-kadence-column.kb-section-dir-horizontal > .kt-inside-inner-col > .kt-info-box809_88fc14-68 .kt-blocks-info-box-link-wrap{max-width:unset;}.kt-info-box809_88fc14-68 .kt-blocks-info-box-link-wrap{border-top:5px solid rgba(36,45,54,0);border-right:5px solid rgba(36,45,54,0);border-bottom:5px solid rgba(36,45,54,0);border-left:5px solid rgba(36,45,54,0);border-top-left-radius:20px;border-top-right-radius:20px;border-bottom-right-radius:20px;border-bottom-left-radius:20px;background:#f7fafc;padding-top:var(--global-kb-spacing-sm, 1.5rem);padding-right:var(--global-kb-spacing-sm, 1.5rem);padding-bottom:var(--global-kb-spacing-sm, 1.5rem);padding-left:var(--global-kb-spacing-sm, 1.5rem);margin-top:50px;}.kt-info-box809_88fc14-68 .kadence-info-box-icon-container .kt-info-svg-icon, .kt-info-box809_88fc14-68 .kt-info-svg-icon-flip, .kt-info-box809_88fc14-68 .kt-blocks-info-box-number{font-size:50px;}.kt-info-box809_88fc14-68 .kt-blocks-info-box-media{background:#ffffff;border-color:var(--global-palette7, #eeeeee);border-radius:200px;overflow:hidden;border-top-width:5px;border-right-width:5px;border-bottom-width:5px;border-left-width:5px;padding-top:20px;padding-right:20px;padding-bottom:20px;padding-left:20px;}.kt-info-box809_88fc14-68 .kt-blocks-info-box-media-container{margin-top:-75px;margin-right:0px;margin-bottom:20px;margin-left:0px;}.kt-info-box809_88fc14-68 .kt-blocks-info-box-media .kadence-info-box-image-intrisic img{border-radius:200px;}.kt-info-box809_88fc14-68 .kt-infobox-textcontent h2.kt-blocks-info-box-title{color:#474444;font-family:Helvetica, sans-serif;font-style:normal;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;margin-top:5px;margin-right:0px;margin-bottom:10px;margin-left:0px;}.kt-info-box809_88fc14-68 .kt-infobox-textcontent .kt-blocks-info-box-text{color:#474444;}.kt-info-box809_88fc14-68 .kt-blocks-info-box-learnmore{background:transparent;border-width:0px 0px 0px 0px;padding-top:4px;padding-right:8px;padding-bottom:4px;padding-left:8px;margin-top:10px;margin-right:0px;margin-bottom:10px;margin-left:0px;}@media all and (max-width: 1024px){.kt-info-box809_88fc14-68 .kt-blocks-info-box-link-wrap{border-top:5px solid rgba(36,45,54,0);border-right:5px solid rgba(36,45,54,0);border-bottom:5px solid rgba(36,45,54,0);border-left:5px solid rgba(36,45,54,0);}}@media all and (max-width: 767px){.kt-info-box809_88fc14-68 .kt-blocks-info-box-link-wrap{border-top:5px solid rgba(36,45,54,0);border-right:5px solid rgba(36,45,54,0);border-bottom:5px solid rgba(36,45,54,0);border-left:5px solid rgba(36,45,54,0);}}</style>
<div class="wp-block-kadence-infobox kt-info-box809_88fc14-68"><span class="kt-blocks-info-box-link-wrap info-box-link kt-blocks-info-box-media-align-top kt-info-halign-center"></p>
<div class="kt-blocks-info-box-media-container">
<div class="kt-blocks-info-box-media kt-info-media-animate-none">
<div class="kadence-info-box-icon-container kt-info-icon-animate-none">
<div class="kadence-info-box-icon-inner-container"><span class="kb-svg-icon-wrap kb-svg-icon-fas_calendar-alt kt-info-svg-icon"><svg viewBox="0 0 448 512"  fill="currentColor" xmlns="http://www.w3.org/2000/svg"  aria-hidden="true"><path d="M436 160H12c-6.6 0-12-5.4-12-12v-36c0-26.5 21.5-48 48-48h48V12c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v52h128V12c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v52h48c26.5 0 48 21.5 48 48v36c0 6.6-5.4 12-12 12zM12 192h424c6.6 0 12 5.4 12 12v260c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V204c0-6.6 5.4-12 12-12zm116 204c0-6.6-5.4-12-12-12H76c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12v-40zm0-128c0-6.6-5.4-12-12-12H76c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12v-40zm128 128c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12v-40zm0-128c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12v-40zm128 128c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12v-40zm0-128c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12v-40z"/></svg></span></div>
</div>
</div>
</div>
<div class="kt-infobox-textcontent">
<h2 class="kt-blocks-info-box-title">Monday to Wednesday</h2>
<p class="kt-blocks-info-box-text">4:30 PM &#8211; 10:00 PM</p>
<p></p>
</div>
<p></span></div>
</div>
</div>
</div>
</div>
<style>.kb-row-layout-id809_815d99-37 > .kt-row-column-wrap{align-content:start;}:where(.kb-row-layout-id809_815d99-37 > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:start;}.kb-row-layout-id809_815d99-37 > .kt-row-column-wrap{column-gap:var(--global-kb-gap-md, 2rem);row-gap:var(--global-kb-gap-sm, 1rem);max-width:var( --global-content-width, 1290px );padding-left:var(--global-content-edge-padding);padding-right:var(--global-content-edge-padding);padding-top:var(--global-kb-spacing-xxl, 5rem);grid-template-columns:minmax(0, 1fr);}.kb-row-layout-id809_815d99-37 > .kt-row-layout-overlay{opacity:0.30;}.kb-row-layout-id809_815d99-37 .kt-row-layout-bottom-sep{height:136px;}.kb-row-layout-id809_815d99-37 .kt-row-layout-bottom-sep svg{width:184%;}.kb-row-layout-id809_815d99-37 .kt-row-layout-bottom-sep svg{fill:#ffffff!important;}@media all and (max-width: 1024px){.kb-row-layout-id809_815d99-37 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}@media all and (max-width: 1024px){.kb-row-layout-id809_815d99-37 .kt-row-layout-bottom-sep{height:px;}}@media all and (max-width: 1024px){.kb-row-layout-id809_815d99-37 .kt-row-layout-bottom-sep svg{width:%;}}@media all and (max-width: 767px){.kb-row-layout-id809_815d99-37 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}.kb-row-layout-id809_815d99-37 .kt-row-layout-bottom-sep{height:px;}.kb-row-layout-id809_815d99-37 .kt-row-layout-bottom-sep svg{width:%;}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_815d99-37 alignfull wp-block-kadence-rowlayout">
<div class="kt-row-column-wrap kt-has-1-columns kt-row-layout-equal kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-top kb-theme-content-width">
<style>.kadence-column809_71d705-39 > .kt-inside-inner-col{display:flex;}.kadence-column809_71d705-39 > .kt-inside-inner-col,.kadence-column809_71d705-39 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_71d705-39 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_71d705-39 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}.kadence-column809_71d705-39 > .kt-inside-inner-col > .aligncenter{width:100%;}.kt-row-column-wrap > .kadence-column809_71d705-39{align-self:center;}.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_71d705-39{align-self:auto;}.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_71d705-39 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}.kadence-column809_71d705-39 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_71d705-39{position:relative;}@media all and (max-width: 1024px){.kt-row-column-wrap > .kadence-column809_71d705-39{align-self:center;}}@media all and (max-width: 1024px){.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_71d705-39{align-self:auto;}}@media all and (max-width: 1024px){.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_71d705-39 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 1024px){.kadence-column809_71d705-39 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kt-row-column-wrap > .kadence-column809_71d705-39{align-self:center;}.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_71d705-39{align-self:auto;}.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_71d705-39 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}.kadence-column809_71d705-39 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_71d705-39">
<div class="kt-inside-inner-col">
<style>.kb-row-layout-wrap.wp-block-kadence-rowlayout.kb-row-layout-id809_0cf73a-d2{margin-top:0px;margin-bottom:0px;}.kb-row-layout-id809_0cf73a-d2 > .kt-row-column-wrap{align-content:start;}:where(.kb-row-layout-id809_0cf73a-d2 > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:start;}.kb-row-layout-id809_0cf73a-d2 > .kt-row-column-wrap{column-gap:var(--global-kb-gap-none, 0rem );row-gap:var(--global-kb-gap-md, 2rem);max-width:var( --global-content-width, 1290px );padding-left:var(--global-content-edge-padding);padding-right:var(--global-content-edge-padding);padding-top:var(--global-kb-spacing-xxl, 5rem);padding-bottom:var(--global-kb-spacing-5xl, 10rem);grid-template-columns:minmax(0, 1fr);}.kb-row-layout-id809_0cf73a-d2 > .kt-row-layout-overlay{opacity:0.30;}@media all and (max-width: 1024px){.kb-row-layout-id809_0cf73a-d2 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}@media all and (max-width: 767px){.kb-row-layout-id809_0cf73a-d2 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_0cf73a-d2 alignfull has-theme-palette9-background-color kt-row-has-bg wp-block-kadence-rowlayout">
<div class="kt-row-column-wrap kt-has-1-columns kt-row-layout-equal kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-top kb-theme-content-width">
<style>.kadence-column809_767d0f-34 > .kt-inside-inner-col,.kadence-column809_767d0f-34 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_767d0f-34 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_767d0f-34 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_767d0f-34 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_767d0f-34 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_767d0f-34{position:relative;}@media all and (max-width: 1024px){.kadence-column809_767d0f-34 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_767d0f-34 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_767d0f-34 inner-column-1">
<div class="kt-inside-inner-col">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_3b3b22-df, .wp-block-kadence-advancedheading.kt-adv-heading809_3b3b22-df[data-kb-block="kb-adv-heading809_3b3b22-df"]{text-align:center;font-size:var(--global-kb-font-size-xl, 3rem);line-height:1.3;font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_3b3b22-df mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_3b3b22-df[data-kb-block="kb-adv-heading809_3b3b22-df"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_3b3b22-df img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_3b3b22-df[data-kb-block="kb-adv-heading809_3b3b22-df"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<h2 class="kt-adv-heading809_3b3b22-df wp-block-kadence-advancedheading has-theme-palette-3-color has-text-color" data-kb-block="kb-adv-heading809_3b3b22-df">30+ Rides and Attractions Under One Roof</h2>
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_0a515f-71, .wp-block-kadence-advancedheading.kt-adv-heading809_0a515f-71[data-kb-block="kb-adv-heading809_0a515f-71"]{max-width:70%;margin-right:auto;margin-left:auto;padding-bottom:0px;text-align:center;line-height:1.8;font-weight:normal;font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_0a515f-71 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_0a515f-71[data-kb-block="kb-adv-heading809_0a515f-71"] mark.kt-highlight{font-weight:normal;font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_0a515f-71 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_0a515f-71[data-kb-block="kb-adv-heading809_0a515f-71"] img.kb-inline-image{width:150px;vertical-align:baseline;}@media all and (max-width: 1024px){.wp-block-kadence-advancedheading.kt-adv-heading809_0a515f-71, .wp-block-kadence-advancedheading.kt-adv-heading809_0a515f-71[data-kb-block="kb-adv-heading809_0a515f-71"]{max-width:85%;}}@media all and (max-width: 767px){.wp-block-kadence-advancedheading.kt-adv-heading809_0a515f-71, .wp-block-kadence-advancedheading.kt-adv-heading809_0a515f-71[data-kb-block="kb-adv-heading809_0a515f-71"]{max-width:100%;}}</style>
<p class="kt-adv-heading809_0a515f-71 wp-block-kadence-advancedheading has-theme-palette-4-color has-text-color" data-kb-block="kb-adv-heading809_0a515f-71">Get ready for thrill rides that get your heart pumping and adventure zones that pull you into another world. It’s an experience unlike any other theme park in Qatar!</p>
<style>.wp-block-kadence-advancedgallery.kb-gallery-wrap-id-809_89707b-c8{margin-top:var(--global-kb-spacing-md, 2rem);padding-top:0px;}.wp-block-kadence-advancedgallery.kb-gallery-wrap-id-809_89707b-c8{overflow:hidden;}.kb-gallery-id-809_89707b-c8 .kadence-blocks-gallery-item .kb-gal-image-radius, .kb-gallery-id-809_89707b-c8 .kb-slide-item .kb-gal-image-radius img{border-radius:0px 0px 0px 0px;;}.kb-gallery-id-809_89707b-c8 .kadence-blocks-gallery-item .kadence-blocks-gallery-item-inner .kadence-blocks-gallery-item__caption{font-size:var(--global-kb-font-size-md, 1.25rem);font-family:Helvetica, sans-serif;}.kb-gallery-caption-style-cover-hover.kb-gallery-id-809_89707b-c8 .kadence-blocks-gallery-item .kadence-blocks-gallery-item-inner .kadence-blocks-gallery-item__caption, .kb-gallery-caption-style-below.kb-gallery-id-809_89707b-c8 .kadence-blocks-gallery-item .kadence-blocks-gallery-item-inner .kadence-blocks-gallery-item__caption{background:rgba(0, 0, 0, 0.8);}.kb-gallery-wrap-id-809_89707b-c8.wp-block-kadence-advancedgallery{overflow:visible;}.kb-gallery-wrap-id-809_89707b-c8.wp-block-kadence-advancedgallery .kt-blocks-carousel{overflow:visible;}</style>
<div class="kb-gallery-wrap-id-809_89707b-c8 alignnone wp-block-kadence-advancedgallery">
<div class="kb-gallery-ul kb-gallery-non-static kb-gallery-type-carousel kb-mobile-force-hover kb-gallery-id-809_89707b-c8 kb-gallery-caption-style-cover-hover kb-gallery-filter-none" data-image-filter="none" data-lightbox-caption="false">
<div class="kt-blocks-carousel splide kt-carousel-container-dotstyle-dark kt-carousel-arrowstyle-whiteondark kt-carousel-dotstyle-dark kb-slider-group-arrow kb-slider-arrow-position-center" data-columns-xxl="3" data-columns-xl="3" data-columns-md="3" data-columns-sm="3" data-columns-xs="1" data-columns-ss="1" data-slider-anim-speed="400" data-slider-scroll="1" data-slider-arrows="true" data-slider-dots="true" data-slider-hover-pause="false" data-slider-auto="1" data-slider-speed="7000" data-slider-gap="0px" data-slider-gap-tablet="0px" data-slider-gap-mobile="0px" data-show-pause-button="true" data-slider-label="Photo Gallery Carousel">
<div class="splide__track">
<ul class="kt-blocks-carousel-init kb-gallery-carousel splide__list">
<li class="kb-slide-item kb-gallery-carousel-item splide__slide">
<div class="kadence-blocks-gallery-item">
<div class="kadence-blocks-gallery-item-inner">
<figure class="kb-gallery-figure kadence-blocks-gallery-item-has-caption">
<div class="kb-gal-image-radius">
<div class="kb-gallery-image-contain kadence-blocks-gallery-intrinsic kb-gallery-image-ratio-square kb-has-image-ratio-square" ><img loading="lazy" decoding="async" src="https://bookings.dohaquest.com/wp-content/uploads/2025/12/cat-1.png" width="1706" height="918" alt="" data-full-image="https://bookings.dohaquest.com/wp-content/uploads/2025/12/cat-1.png" data-light-image="https://bookings.dohaquest.com/wp-content/uploads/2025/12/cat-1.png" data-id="132" class="wp-image-132 skip-lazy" srcset="https://bookings.dohaquest.com/wp-content/uploads/2025/12/cat-1.png 1706w, https://bookings.dohaquest.com/wp-content/uploads/2025/12/cat-1-600x323.png 600w, https://bookings.dohaquest.com/wp-content/uploads/2025/12/cat-1-300x161.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2025/12/cat-1-1024x551.png 1024w, https://bookings.dohaquest.com/wp-content/uploads/2025/12/cat-1-768x413.png 768w, https://bookings.dohaquest.com/wp-content/uploads/2025/12/cat-1-1536x827.png 1536w" sizes="(max-width: 1706px) 100vw, 1706px" /></div>
<div class="kadence-blocks-gallery-item__caption">Play in the present<br />CITY OF IMAGINATION</div>
</div>
</figure>
</div>
</div>
</li>
<li class="kb-slide-item kb-gallery-carousel-item splide__slide">
<div class="kadence-blocks-gallery-item">
<div class="kadence-blocks-gallery-item-inner">
<figure class="kb-gallery-figure kadence-blocks-gallery-item-has-caption">
<div class="kb-gal-image-radius">
<div class="kb-gallery-image-contain kadence-blocks-gallery-intrinsic kb-gallery-image-ratio-square kb-has-image-ratio-square" ><img loading="lazy" decoding="async" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_39_hsUDWev5rQxXbrVH5KHBAxkMjGnObndwZipdFZ2J-3.png" width="1370" height="907" alt="" data-full-image="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_39_hsUDWev5rQxXbrVH5KHBAxkMjGnObndwZipdFZ2J-3.png" data-light-image="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_39_hsUDWev5rQxXbrVH5KHBAxkMjGnObndwZipdFZ2J-3.png" data-id="848" class="wp-image-848 skip-lazy" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_39_hsUDWev5rQxXbrVH5KHBAxkMjGnObndwZipdFZ2J-3.png 1370w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_39_hsUDWev5rQxXbrVH5KHBAxkMjGnObndwZipdFZ2J-3-300x199.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_39_hsUDWev5rQxXbrVH5KHBAxkMjGnObndwZipdFZ2J-3-1024x678.png 1024w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_39_hsUDWev5rQxXbrVH5KHBAxkMjGnObndwZipdFZ2J-3-768x508.png 768w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_39_hsUDWev5rQxXbrVH5KHBAxkMjGnObndwZipdFZ2J-3-600x397.png 600w" sizes="(max-width: 1370px) 100vw, 1370px" /></div>
<div class="kadence-blocks-gallery-item__caption">Imagine the future<br />GRAVITY</div>
</div>
</figure>
</div>
</div>
</li>
<li class="kb-slide-item kb-gallery-carousel-item splide__slide">
<div class="kadence-blocks-gallery-item">
<div class="kadence-blocks-gallery-item-inner">
<figure class="kb-gallery-figure kadence-blocks-gallery-item-has-caption">
<div class="kb-gal-image-radius">
<div class="kb-gallery-image-contain kadence-blocks-gallery-intrinsic kb-gallery-image-ratio-square kb-has-image-ratio-square" ><img loading="lazy" decoding="async" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_40_TSuc8xLQcq4fjfCrXpeWr6Pkpslo3YwFYlQ7xu9b.png" width="1368" height="903" alt="" data-full-image="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_40_TSuc8xLQcq4fjfCrXpeWr6Pkpslo3YwFYlQ7xu9b.png" data-light-image="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_40_TSuc8xLQcq4fjfCrXpeWr6Pkpslo3YwFYlQ7xu9b.png" data-id="816" class="wp-image-816 skip-lazy" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_40_TSuc8xLQcq4fjfCrXpeWr6Pkpslo3YwFYlQ7xu9b.png 1368w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_40_TSuc8xLQcq4fjfCrXpeWr6Pkpslo3YwFYlQ7xu9b-300x198.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_40_TSuc8xLQcq4fjfCrXpeWr6Pkpslo3YwFYlQ7xu9b-1024x676.png 1024w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_40_TSuc8xLQcq4fjfCrXpeWr6Pkpslo3YwFYlQ7xu9b-768x507.png 768w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_40_TSuc8xLQcq4fjfCrXpeWr6Pkpslo3YwFYlQ7xu9b-600x396.png 600w" sizes="(max-width: 1368px) 100vw, 1368px" /></div>
<div class="kadence-blocks-gallery-item__caption">Explore the past<br />ORYXVILLA</div>
</div>
</figure>
</div>
</div>
</li>
<li class="kb-slide-item kb-gallery-carousel-item splide__slide">
<div class="kadence-blocks-gallery-item">
<div class="kadence-blocks-gallery-item-inner">
<figure class="kb-gallery-figure kadence-blocks-gallery-item-has-caption">
<div class="kb-gal-image-radius">
<div class="kb-gallery-image-contain kadence-blocks-gallery-intrinsic kb-gallery-image-ratio-square kb-has-image-ratio-square" ><img loading="lazy" decoding="async" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_41_nH0OlNgox5dDFNs87dKp8bTvbfBHeEpGdsnWdZrB.png" width="1299" height="909" alt="" data-full-image="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_41_nH0OlNgox5dDFNs87dKp8bTvbfBHeEpGdsnWdZrB.png" data-light-image="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_41_nH0OlNgox5dDFNs87dKp8bTvbfBHeEpGdsnWdZrB.png" data-id="813" class="wp-image-813 skip-lazy" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_41_nH0OlNgox5dDFNs87dKp8bTvbfBHeEpGdsnWdZrB.png 1299w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_41_nH0OlNgox5dDFNs87dKp8bTvbfBHeEpGdsnWdZrB-300x210.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_41_nH0OlNgox5dDFNs87dKp8bTvbfBHeEpGdsnWdZrB-1024x717.png 1024w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_41_nH0OlNgox5dDFNs87dKp8bTvbfBHeEpGdsnWdZrB-768x537.png 768w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_41_nH0OlNgox5dDFNs87dKp8bTvbfBHeEpGdsnWdZrB-600x420.png 600w" sizes="(max-width: 1299px) 100vw, 1299px" /></div>
<div class="kadence-blocks-gallery-item__caption">LIVE THE THRILL</div>
</div>
</figure>
</div>
</div>
</li>
<li class="kb-slide-item kb-gallery-carousel-item splide__slide">
<div class="kadence-blocks-gallery-item">
<div class="kadence-blocks-gallery-item-inner">
<figure class="kb-gallery-figure kadence-blocks-gallery-item-has-caption">
<div class="kb-gal-image-radius">
<div class="kb-gallery-image-contain kadence-blocks-gallery-intrinsic kb-gallery-image-ratio-square kb-has-image-ratio-square" ><img loading="lazy" decoding="async" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_CrxpeOEbWEoMtSNF7yqORn4Jssv4sjjrRG8tdyrU.png" width="1818" height="876" alt="" data-full-image="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_CrxpeOEbWEoMtSNF7yqORn4Jssv4sjjrRG8tdyrU.png" data-light-image="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_CrxpeOEbWEoMtSNF7yqORn4Jssv4sjjrRG8tdyrU.png" data-id="851" class="wp-image-851 skip-lazy" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_CrxpeOEbWEoMtSNF7yqORn4Jssv4sjjrRG8tdyrU.png 1818w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_CrxpeOEbWEoMtSNF7yqORn4Jssv4sjjrRG8tdyrU-300x145.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_CrxpeOEbWEoMtSNF7yqORn4Jssv4sjjrRG8tdyrU-1024x493.png 1024w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_CrxpeOEbWEoMtSNF7yqORn4Jssv4sjjrRG8tdyrU-768x370.png 768w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_CrxpeOEbWEoMtSNF7yqORn4Jssv4sjjrRG8tdyrU-1536x740.png 1536w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_CrxpeOEbWEoMtSNF7yqORn4Jssv4sjjrRG8tdyrU-600x289.png 600w" sizes="(max-width: 1818px) 100vw, 1818px" /></div>
<div class="kadence-blocks-gallery-item__caption">VIRTUAL REALITY EXPERIENCE</div>
</div>
</figure>
</div>
</div>
</li>
<li class="kb-slide-item kb-gallery-carousel-item splide__slide">
<div class="kadence-blocks-gallery-item">
<div class="kadence-blocks-gallery-item-inner">
<figure class="kb-gallery-figure kadence-blocks-gallery-item-has-caption">
<div class="kb-gal-image-radius">
<div class="kb-gallery-image-contain kadence-blocks-gallery-intrinsic kb-gallery-image-ratio-square kb-has-image-ratio-square" ><img loading="lazy" decoding="async" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_jtDzoeyKTx5xiOq5px4bbzOTZJBUERjnbxlFunIq-2.png" width="1357" height="909" alt="" data-full-image="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_jtDzoeyKTx5xiOq5px4bbzOTZJBUERjnbxlFunIq-2.png" data-light-image="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_jtDzoeyKTx5xiOq5px4bbzOTZJBUERjnbxlFunIq-2.png" data-id="843" class="wp-image-843 skip-lazy" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_jtDzoeyKTx5xiOq5px4bbzOTZJBUERjnbxlFunIq-2.png 1357w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_jtDzoeyKTx5xiOq5px4bbzOTZJBUERjnbxlFunIq-2-300x201.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_jtDzoeyKTx5xiOq5px4bbzOTZJBUERjnbxlFunIq-2-1024x686.png 1024w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_jtDzoeyKTx5xiOq5px4bbzOTZJBUERjnbxlFunIq-2-768x514.png 768w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_43_jtDzoeyKTx5xiOq5px4bbzOTZJBUERjnbxlFunIq-2-600x402.png 600w" sizes="(max-width: 1357px) 100vw, 1357px" /></div>
<div class="kadence-blocks-gallery-item__caption">FOR JUNIORS</div>
</div>
</figure>
</div>
</div>
</li>
</ul>
</div>
<p><button class="kb-gallery-pause-button splide__toggle" type="button" aria-label="Toggle autoplay"><span class="kb-gallery-pause-icon splide__toggle__pause"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><rect x="6" y="4" width="4" height="16" fill="currentColor"/><rect x="14" y="4" width="4" height="16" fill="currentColor"/></svg></span><span class="kb-gallery-play-icon splide__toggle__play"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8 5v14l11-7z" fill="currentColor"/></svg></span></button></div>
</div>
</div>
<style>.wp-block-kadence-advancedbtn.kb-btns809_08ca1d-50{gap:var(--global-kb-gap-xs, 0.5rem );justify-content:center;align-items:center;}.kt-btns809_08ca1d-50 .kt-button{font-weight:normal;font-style:normal;}.kt-btns809_08ca1d-50 .kt-btn-wrap-0{margin-right:5px;}.wp-block-kadence-advancedbtn.kt-btns809_08ca1d-50 .kt-btn-wrap-0 .kt-button{color:#555555;border-color:#555555;}.wp-block-kadence-advancedbtn.kt-btns809_08ca1d-50 .kt-btn-wrap-0 .kt-button:hover, .wp-block-kadence-advancedbtn.kt-btns809_08ca1d-50 .kt-btn-wrap-0 .kt-button:focus{color:#ffffff;border-color:#444444;}.wp-block-kadence-advancedbtn.kt-btns809_08ca1d-50 .kt-btn-wrap-0 .kt-button::before{display:none;}.wp-block-kadence-advancedbtn.kt-btns809_08ca1d-50 .kt-btn-wrap-0 .kt-button:hover, .wp-block-kadence-advancedbtn.kt-btns809_08ca1d-50 .kt-btn-wrap-0 .kt-button:focus{background:#444444;}</style>
<div class="wp-block-kadence-advancedbtn kb-buttons-wrap kb-btns809_08ca1d-50">
<style>ul.menu .wp-block-kadence-advancedbtn .kb-btn809_a64ce3-c5.kb-button{width:initial;}</style>
<p><a class="kb-button kt-button button kb-btn809_a64ce3-c5 kt-btn-size-small kt-btn-width-type-auto kb-btn-global-fill  kt-btn-has-text-true kt-btn-has-svg-false  wp-block-kadence-singlebtn" href="https://dohaquest.com/en/rides" target="_blank" rel="noreferrer noopener"><span class="kt-btn-inner-text">Explore Our Rides</span></a></div>
</div>
</div>
</div>
</div>
<style>.kb-row-layout-id809_ee6116-62 > .kt-row-column-wrap{align-content:start;}:where(.kb-row-layout-id809_ee6116-62 > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:start;}.kb-row-layout-id809_ee6116-62 > .kt-row-column-wrap{column-gap:var(--global-kb-gap-md, 2rem);row-gap:var(--global-kb-gap-md, 2rem);max-width:var( --global-content-width, 1290px );padding-left:var(--global-content-edge-padding);padding-right:var(--global-content-edge-padding);padding-top:var(--global-kb-spacing-lg, 3rem);padding-bottom:var(--global-kb-spacing-4xl, 8rem);grid-template-columns:minmax(0, 1fr);}.kb-row-layout-id809_ee6116-62{background-color:rgba(74,85,104,0.13);background-image:url(\'https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_40_TSuc8xLQcq4fjfCrXpeWr6Pkpslo3YwFYlQ7xu9b-1024x676.png\');background-size:cover;background-position:center center;background-attachment:fixed;background-repeat:no-repeat;}.kb-row-layout-id809_ee6116-62 > .kt-row-layout-overlay{opacity:0.77;background-color:#78ace7;}@media all and (max-width: 1024px), only screen and (min-device-width: 1024px) and (max-device-width: 1366px) and (-webkit-min-device-pixel-ratio: 2) and (hover: none){.kb-row-layout-id809_ee6116-62{background-attachment:scroll;}}@media all and (max-width: 1024px){.kb-row-layout-id809_ee6116-62 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}@media all and (max-width: 767px){.kb-row-layout-id809_ee6116-62 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_ee6116-62 alignfull kt-row-has-bg kt-jarallax wp-block-kadence-rowlayout" data-img-position="center center" data-img-size="cover">
<div class="kt-row-layout-overlay kt-row-overlay-normal"></div>
<div class="kt-row-column-wrap kt-has-1-columns kt-row-layout-equal kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-top kb-theme-content-width">
<style>.kadence-column809_f3ae3e-9a > .kt-inside-inner-col{padding-top:var(--global-kb-spacing-xxs, 0.5rem);padding-right:var(--global-kb-spacing-xxs, 0.5rem);padding-bottom:var(--global-kb-spacing-xxs, 0.5rem);padding-left:var(--global-kb-spacing-xxs, 0.5rem);}.kadence-column809_f3ae3e-9a > .kt-inside-inner-col{min-height:43px;}.kadence-column809_f3ae3e-9a > .kt-inside-inner-col,.kadence-column809_f3ae3e-9a > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_f3ae3e-9a > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_f3ae3e-9a > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_f3ae3e-9a > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_f3ae3e-9a > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_f3ae3e-9a{position:relative;}@media all and (max-width: 1024px){.kadence-column809_f3ae3e-9a > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_f3ae3e-9a > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_f3ae3e-9a inner-column-2">
<div class="kt-inside-inner-col">
<style>.kadence-column809_500e81-ce > .kt-inside-inner-col,.kadence-column809_500e81-ce > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_500e81-ce > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_500e81-ce > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_500e81-ce > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_500e81-ce > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_500e81-ce{position:relative;}@media all and (max-width: 1024px){.kadence-column809_500e81-ce > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_500e81-ce > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_500e81-ce">
<div class="kt-inside-inner-col">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_a7d35d-27, .wp-block-kadence-advancedheading.kt-adv-heading809_a7d35d-27[data-kb-block="kb-adv-heading809_a7d35d-27"]{text-align:center;font-size:var(--global-kb-font-size-xl, 3rem);line-height:1.3;font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_a7d35d-27 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_a7d35d-27[data-kb-block="kb-adv-heading809_a7d35d-27"] mark.kt-highlight{font-family:Arial, Helvetica, sans-serif;font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_a7d35d-27 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_a7d35d-27[data-kb-block="kb-adv-heading809_a7d35d-27"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<h2 class="kt-adv-heading809_a7d35d-27 wp-block-kadence-advancedheading has-theme-palette-3-color has-text-color" data-kb-block="kb-adv-heading809_a7d35d-27">Non-Stop Fun at Doha Quest</h2>
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_9da53b-d4, .wp-block-kadence-advancedheading.kt-adv-heading809_9da53b-d4[data-kb-block="kb-adv-heading809_9da53b-d4"]{max-width:70%;margin-right:auto;margin-left:auto;padding-bottom:0px;text-align:center;line-height:1.8;font-weight:normal;font-style:normal;color:#000000;}.wp-block-kadence-advancedheading.kt-adv-heading809_9da53b-d4 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_9da53b-d4[data-kb-block="kb-adv-heading809_9da53b-d4"] mark.kt-highlight{font-weight:normal;font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_9da53b-d4 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_9da53b-d4[data-kb-block="kb-adv-heading809_9da53b-d4"] img.kb-inline-image{width:150px;vertical-align:baseline;}@media all and (max-width: 1024px){.wp-block-kadence-advancedheading.kt-adv-heading809_9da53b-d4, .wp-block-kadence-advancedheading.kt-adv-heading809_9da53b-d4[data-kb-block="kb-adv-heading809_9da53b-d4"]{max-width:85%;}}@media all and (max-width: 767px){.wp-block-kadence-advancedheading.kt-adv-heading809_9da53b-d4, .wp-block-kadence-advancedheading.kt-adv-heading809_9da53b-d4[data-kb-block="kb-adv-heading809_9da53b-d4"]{max-width:100%;}}</style>
<p class="kt-adv-heading809_9da53b-d4 wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_9da53b-d4">The top choice for magic, excitement, and unforgettable memories in Qatar</p>
<style>.kb-row-layout-id809_03853c-5c > .kt-row-column-wrap{align-content:start;}:where(.kb-row-layout-id809_03853c-5c > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:start;}.kb-row-layout-id809_03853c-5c > .kt-row-column-wrap{column-gap:var(--global-kb-gap-md, 2rem);row-gap:var(--global-kb-gap-md, 2rem);padding-top:var(--global-kb-spacing-sm, 1.5rem);padding-bottom:var(--global-kb-spacing-sm, 1.5rem);}.kb-row-layout-id809_03853c-5c > .kt-row-column-wrap > div:not(.added-for-specificity){grid-column:initial;}.kb-row-layout-id809_03853c-5c > .kt-row-column-wrap{grid-template-columns:repeat(4, minmax(0, 1fr));}.kb-row-layout-id809_03853c-5c > .kt-row-layout-overlay{opacity:0.30;}@media all and (max-width: 1024px){.kb-row-layout-id809_03853c-5c > .kt-row-column-wrap > div:not(.added-for-specificity){grid-column:initial;}}@media all and (max-width: 1024px){.kb-row-layout-id809_03853c-5c > .kt-row-column-wrap{grid-template-columns:repeat(4, minmax(0, 1fr));}}@media all and (max-width: 767px){.kb-row-layout-id809_03853c-5c > .kt-row-column-wrap > div:not(.added-for-specificity){grid-column:initial;}.kb-row-layout-id809_03853c-5c > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_03853c-5c alignnone wp-block-kadence-rowlayout">
<div class="kt-row-column-wrap kt-has-4-columns kt-row-layout-equal kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-top kt-inner-column-height-full">
<style>.kadence-column809_d14295-37 > .kt-inside-inner-col,.kadence-column809_d14295-37 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_d14295-37 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_d14295-37 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_d14295-37 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_d14295-37 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_d14295-37{position:relative;}@media all and (max-width: 1024px){.kadence-column809_d14295-37 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_d14295-37 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_d14295-37">
<div class="kt-inside-inner-col">
<style>.kt-info-box809_cd3adf-8d{height:100%;}.wp-block-kadence-column.kb-section-dir-horizontal > .kt-inside-inner-col > .kt-info-box809_cd3adf-8d{height:auto;align-self:stretch;}.kt-info-box809_cd3adf-8d .kt-blocks-info-box-link-wrap{height:100%;}.wp-block-kadence-column.kb-section-dir-horizontal > .kt-inside-inner-col > .kt-info-box809_cd3adf-8d .kt-blocks-info-box-link-wrap{max-width:unset;}.kt-info-box809_cd3adf-8d .kt-blocks-info-box-link-wrap{padding-top:var(--global-kb-spacing-xs, 1rem);padding-right:var(--global-kb-spacing-xs, 1rem);padding-bottom:var(--global-kb-spacing-xs, 1rem);padding-left:var(--global-kb-spacing-xs, 1rem);}.kt-info-box809_cd3adf-8d .kadence-info-box-icon-container .kt-info-svg-icon, .kt-info-box809_cd3adf-8d .kt-info-svg-icon-flip, .kt-info-box809_cd3adf-8d .kt-blocks-info-box-number{font-size:50px;}.kt-info-box809_cd3adf-8d .kt-blocks-info-box-media{color:var(--global-palette1, #3182CE);border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;}.kt-info-box809_cd3adf-8d .kt-blocks-info-box-media-container{margin-top:0px;margin-right:15px;margin-bottom:0px;margin-left:15px;}.kt-info-box809_cd3adf-8d .kt-infobox-textcontent h2.kt-blocks-info-box-title{padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;margin-top:5px;margin-right:0px;margin-bottom:10px;margin-left:0px;}.kt-info-box809_cd3adf-8d .kt-blocks-info-box-learnmore{background:transparent;border-width:0px 0px 0px 0px;padding-top:4px;padding-right:8px;padding-bottom:4px;padding-left:8px;margin-top:10px;margin-right:0px;margin-bottom:10px;margin-left:0px;}</style>
<div class="wp-block-kadence-infobox kt-info-box809_cd3adf-8d"><span class="kt-blocks-info-box-link-wrap info-box-link kt-blocks-info-box-media-align-top kt-info-halign-center"></p>
<div class="kt-blocks-info-box-media-container">
<div class="kt-blocks-info-box-media kt-info-media-animate-none">
<div class="kadence-info-box-icon-container kt-info-icon-animate-none">
<div class="kadence-info-box-icon-inner-container"><span class="kb-svg-icon-wrap kb-svg-icon-fas_snowflake kt-info-svg-icon"><svg viewBox="0 0 448 512"  fill="currentColor" xmlns="http://www.w3.org/2000/svg"  aria-hidden="true"><path d="M444.816 301.639a24.12 24.12 0 0 0 2.661-16.978c-2.725-12.966-15.339-21.245-28.174-18.492l-87.407 25.046L264 256l67.896-35.215 87.407 25.046c12.835 2.753 25.449-5.526 28.174-18.492 2.725-12.966-5.471-25.708-18.305-28.461l-47.477-7.137 53.077-30.956c11.363-6.627 15.257-21.306 8.696-32.785-6.561-11.479-21.091-15.412-32.454-8.785l-53.077 30.956 17.621-45.104c4.057-12.606-2.768-26.146-15.247-30.245-12.478-4.099-25.883 2.797-29.94 15.402l-22.232 88.99-60.38 35.215V144l65.175-63.945c8.778-9.852 7.987-25.027-1.766-33.894-9.753-8.867-24.775-8.068-33.552 1.784l-29.857 37.967V24c0-13.255-10.637-24-23.758-24s-23.758 10.745-23.758 24v61.912l-29.857-37.967c-8.779-9.852-23.799-10.652-33.552-1.784-9.753 8.867-10.543 24.042-1.766 33.894L200.242 144v70.431l-60.38-35.215-22.232-88.99c-4.057-12.605-17.462-19.501-29.94-15.402-12.478 4.099-19.304 17.64-15.247 30.245l17.62 45.104-53.077-30.956c-11.363-6.627-25.893-2.694-32.454 8.785s-2.667 26.157 8.696 32.785l53.077 30.956-47.477 7.137C5.993 201.634-2.203 214.375.523 227.341c2.725 12.965 15.339 21.245 28.174 18.492l87.407-25.046L184 256l-67.896 35.215-87.406-25.045c-12.835-2.753-25.449 5.526-28.174 18.492-2.725 12.967 5.47 25.708 18.305 28.461l47.477 7.137-53.077 30.956C1.866 357.843-2.027 372.521 4.533 384s21.091 15.412 32.454 8.785l53.077-30.956-17.62 45.104a24.157 24.157 0 0 0 2.022 19.428c2.831 4.953 7.416 8.909 13.224 10.816 12.478 4.099 25.883-2.797 29.94-15.402l22.232-88.99 60.38-35.215V368l-65.175 63.945c-8.778 9.852-7.987 25.027 1.766 33.894 9.754 8.868 24.774 8.068 33.552-1.784l29.857-37.967V488c0 13.255 10.637 24 23.758 24s23.758-10.745 23.758-24v-61.912l29.857 37.967A23.59 23.59 0 0 0 295.282 472a23.534 23.534 0 0 0 15.885-6.161c9.753-8.867 10.544-24.042 1.766-33.894L247.758 368v-70.431l60.38 35.215 22.232 88.99c4.057 12.605 17.462 19.501 29.94 15.402 12.479-4.099 19.304-17.64 15.247-30.245l-17.621-45.104 53.077 30.956c11.363 6.627 25.893 2.694 32.454-8.785s2.667-26.157-8.696-32.785l-53.077-30.956 47.477-7.137c6.86-1.469 12.394-5.793 15.645-11.481z"/></svg></span></div>
</div>
</div>
</div>
<div class="kt-infobox-textcontent">
<h2 class="kt-blocks-info-box-title">Climate Controlled</h2>
<p class="kt-blocks-info-box-text">All-weather comfort and fun</p>
</div>
<p></span></div>
</div>
</div>
<style>.kadence-column809_8525a1-43 > .kt-inside-inner-col,.kadence-column809_8525a1-43 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_8525a1-43 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_8525a1-43 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_8525a1-43 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_8525a1-43 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_8525a1-43{position:relative;}@media all and (max-width: 1024px){.kadence-column809_8525a1-43 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_8525a1-43 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_8525a1-43">
<div class="kt-inside-inner-col">
<style>.kt-info-box809_173a5a-48{height:100%;}.wp-block-kadence-column.kb-section-dir-horizontal > .kt-inside-inner-col > .kt-info-box809_173a5a-48{height:auto;align-self:stretch;}.kt-info-box809_173a5a-48 .kt-blocks-info-box-link-wrap{height:100%;}.wp-block-kadence-column.kb-section-dir-horizontal > .kt-inside-inner-col > .kt-info-box809_173a5a-48 .kt-blocks-info-box-link-wrap{max-width:unset;}.kt-info-box809_173a5a-48 .kt-blocks-info-box-link-wrap{padding-top:var(--global-kb-spacing-xs, 1rem);padding-right:var(--global-kb-spacing-xs, 1rem);padding-bottom:var(--global-kb-spacing-xs, 1rem);padding-left:var(--global-kb-spacing-xs, 1rem);}.kt-info-box809_173a5a-48 .kadence-info-box-icon-container .kt-info-svg-icon, .kt-info-box809_173a5a-48 .kt-info-svg-icon-flip, .kt-info-box809_173a5a-48 .kt-blocks-info-box-number{font-size:50px;}.kt-info-box809_173a5a-48 .kt-blocks-info-box-media{color:var(--global-palette1, #3182CE);background:#ffffff;border-color:var(--global-palette7, #eeeeee);border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;}.kt-info-box809_173a5a-48 .kt-blocks-info-box-media-container{margin-top:0px;margin-right:15px;margin-bottom:0px;margin-left:15px;}.kt-info-box809_173a5a-48 .kt-infobox-textcontent h2.kt-blocks-info-box-title{padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;margin-top:5px;margin-right:0px;margin-bottom:10px;margin-left:0px;}.kt-info-box809_173a5a-48 .kt-blocks-info-box-learnmore{background:transparent;border-width:0px 0px 0px 0px;padding-top:4px;padding-right:8px;padding-bottom:4px;padding-left:8px;margin-top:10px;margin-right:0px;margin-bottom:10px;margin-left:0px;}</style>
<div class="wp-block-kadence-infobox kt-info-box809_173a5a-48"><span class="kt-blocks-info-box-link-wrap info-box-link kt-blocks-info-box-media-align-top kt-info-halign-center"></p>
<div class="kt-blocks-info-box-media-container">
<div class="kt-blocks-info-box-media kt-info-media-animate-none">
<div class="kadence-info-box-icon-container kt-info-icon-animate-none">
<div class="kadence-info-box-icon-inner-container"><span class="kb-svg-icon-wrap kb-svg-icon-fas_ticket-alt kt-info-svg-icon"><svg viewBox="0 0 576 512"  fill="currentColor" xmlns="http://www.w3.org/2000/svg"  aria-hidden="true"><path d="M128 160h320v192H128V160zm400 96c0 26.51 21.49 48 48 48v96c0 26.51-21.49 48-48 48H48c-26.51 0-48-21.49-48-48v-96c26.51 0 48-21.49 48-48s-21.49-48-48-48v-96c0-26.51 21.49-48 48-48h480c26.51 0 48 21.49 48 48v96c-26.51 0-48 21.49-48 48zm-48-104c0-13.255-10.745-24-24-24H120c-13.255 0-24 10.745-24 24v208c0 13.255 10.745 24 24 24h336c13.255 0 24-10.745 24-24V152z"/></svg></span></div>
</div>
</div>
</div>
<div class="kt-infobox-textcontent">
<h2 class="kt-blocks-info-box-title">All-Access Tickets</h2>
<p class="kt-blocks-info-box-text">Ride everything with one pass</p>
</div>
<p></span></div>
</div>
</div>
<style>.kadence-column809_c4e386-36 > .kt-inside-inner-col,.kadence-column809_c4e386-36 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_c4e386-36 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_c4e386-36 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_c4e386-36 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_c4e386-36 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_c4e386-36{position:relative;}@media all and (max-width: 1024px){.kadence-column809_c4e386-36 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_c4e386-36 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_c4e386-36">
<div class="kt-inside-inner-col">
<style>.wp-block-kadence-column.kb-section-dir-horizontal > .kt-inside-inner-col > .kt-info-box809_e0389d-f1 .kt-blocks-info-box-link-wrap{max-width:unset;}.kt-info-box809_e0389d-f1 .kt-blocks-info-box-link-wrap{padding-top:var(--global-kb-spacing-xs, 1rem);padding-right:var(--global-kb-spacing-xs, 1rem);padding-bottom:var(--global-kb-spacing-xs, 1rem);padding-left:var(--global-kb-spacing-xs, 1rem);}.kt-info-box809_e0389d-f1 .kadence-info-box-icon-container .kt-info-svg-icon, .kt-info-box809_e0389d-f1 .kt-info-svg-icon-flip, .kt-info-box809_e0389d-f1 .kt-blocks-info-box-number{font-size:50px;}.kt-info-box809_e0389d-f1 .kt-blocks-info-box-media{color:var(--global-palette1, #3182CE);background:#ffffff;border-color:var(--global-palette7, #eeeeee);border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;}.kt-info-box809_e0389d-f1 .kt-blocks-info-box-media-container{margin-top:0px;margin-right:15px;margin-bottom:0px;margin-left:15px;}.kt-info-box809_e0389d-f1 .kt-infobox-textcontent h2.kt-blocks-info-box-title{padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;margin-top:5px;margin-right:0px;margin-bottom:10px;margin-left:0px;}.kt-info-box809_e0389d-f1 .kt-blocks-info-box-learnmore{background:transparent;border-width:0px 0px 0px 0px;padding-top:4px;padding-right:8px;padding-bottom:4px;padding-left:8px;margin-top:10px;margin-right:0px;margin-bottom:10px;margin-left:0px;}</style>
<div class="wp-block-kadence-infobox kt-info-box809_e0389d-f1"><span class="kt-blocks-info-box-link-wrap info-box-link kt-blocks-info-box-media-align-top kt-info-halign-center"></p>
<div class="kt-blocks-info-box-media-container">
<div class="kt-blocks-info-box-media kt-info-media-animate-none">
<div class="kadence-info-box-icon-container kt-info-icon-animate-none">
<div class="kadence-info-box-icon-inner-container"><span class="kb-svg-icon-wrap kb-svg-icon-fas_certificate kt-info-svg-icon"><svg viewBox="0 0 512 512"  fill="currentColor" xmlns="http://www.w3.org/2000/svg"  aria-hidden="true"><path d="M458.622 255.92l45.985-45.005c13.708-12.977 7.316-36.039-10.664-40.339l-62.65-15.99 17.661-62.015c4.991-17.838-11.829-34.663-29.661-29.671l-61.994 17.667-15.984-62.671C337.085.197 313.765-6.276 300.99 7.228L256 53.57 211.011 7.229c-12.63-13.351-36.047-7.234-40.325 10.668l-15.984 62.671-61.995-17.667C74.87 57.907 58.056 74.738 63.046 92.572l17.661 62.015-62.65 15.99C.069 174.878-6.31 197.944 7.392 210.915l45.985 45.005-45.985 45.004c-13.708 12.977-7.316 36.039 10.664 40.339l62.65 15.99-17.661 62.015c-4.991 17.838 11.829 34.663 29.661 29.671l61.994-17.667 15.984 62.671c4.439 18.575 27.696 24.018 40.325 10.668L256 458.61l44.989 46.001c12.5 13.488 35.987 7.486 40.325-10.668l15.984-62.671 61.994 17.667c17.836 4.994 34.651-11.837 29.661-29.671l-17.661-62.015 62.65-15.99c17.987-4.302 24.366-27.367 10.664-40.339l-45.984-45.004z"/></svg></span></div>
</div>
</div>
</div>
<div class="kt-infobox-textcontent">
<h2 class="kt-blocks-info-box-title">Guinness Record Thrills</h2>
<p class="kt-blocks-info-box-text">EpiQ Coaster &amp; Magma Blast – the tallest indoor rides in the world, officially certified by Guinness</p>
</div>
<p></span></div>
</div>
</div>
<style>.kadence-column809_4e66ca-5a > .kt-inside-inner-col,.kadence-column809_4e66ca-5a > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_4e66ca-5a > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_4e66ca-5a > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_4e66ca-5a > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_4e66ca-5a > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_4e66ca-5a{position:relative;}@media all and (max-width: 1024px){.kadence-column809_4e66ca-5a > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_4e66ca-5a > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_4e66ca-5a">
<div class="kt-inside-inner-col">
<style>.kt-info-box809_eca301-9c{height:100%;}.wp-block-kadence-column.kb-section-dir-horizontal > .kt-inside-inner-col > .kt-info-box809_eca301-9c{height:auto;align-self:stretch;}.kt-info-box809_eca301-9c .kt-blocks-info-box-link-wrap{height:100%;}.wp-block-kadence-column.kb-section-dir-horizontal > .kt-inside-inner-col > .kt-info-box809_eca301-9c .kt-blocks-info-box-link-wrap{max-width:unset;}.kt-info-box809_eca301-9c .kt-blocks-info-box-link-wrap{padding-top:var(--global-kb-spacing-xs, 1rem);padding-right:var(--global-kb-spacing-xs, 1rem);padding-bottom:var(--global-kb-spacing-xs, 1rem);padding-left:var(--global-kb-spacing-xs, 1rem);}.kt-info-box809_eca301-9c .kadence-info-box-icon-container .kt-info-svg-icon, .kt-info-box809_eca301-9c .kt-info-svg-icon-flip, .kt-info-box809_eca301-9c .kt-blocks-info-box-number{font-size:50px;}.kt-info-box809_eca301-9c .kt-blocks-info-box-media{color:var(--global-palette1, #3182CE);border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;}.kt-info-box809_eca301-9c .kt-blocks-info-box-media-container{margin-top:0px;margin-right:15px;margin-bottom:0px;margin-left:15px;}.kt-info-box809_eca301-9c .kt-infobox-textcontent h2.kt-blocks-info-box-title{padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;margin-top:5px;margin-right:0px;margin-bottom:10px;margin-left:0px;}.kt-info-box809_eca301-9c .kt-blocks-info-box-learnmore{background:transparent;border-width:0px 0px 0px 0px;padding-top:4px;padding-right:8px;padding-bottom:4px;padding-left:8px;margin-top:10px;margin-right:0px;margin-bottom:10px;margin-left:0px;}</style>
<div class="wp-block-kadence-infobox kt-info-box809_eca301-9c"><span class="kt-blocks-info-box-link-wrap info-box-link kt-blocks-info-box-media-align-top kt-info-halign-center"></p>
<div class="kt-blocks-info-box-media-container">
<div class="kt-blocks-info-box-media kt-info-media-animate-none">
<div class="kadence-info-box-icon-container kt-info-icon-animate-none">
<div class="kadence-info-box-icon-inner-container"><span class="kb-svg-icon-wrap kb-svg-icon-fe_grid kt-info-svg-icon"><svg viewBox="0 0 24 24"  fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" xmlns="http://www.w3.org/2000/svg"  aria-hidden="true"><rect x="3" y="3" width="7" height="7"/><rect x="14" y="3" width="7" height="7"/><rect x="14" y="14" width="7" height="7"/><rect x="3" y="14" width="7" height="7"/></svg></span></div>
</div>
</div>
</div>
<div class="kt-infobox-textcontent">
<h2 class="kt-blocks-info-box-title">Exclusive Rides</h2>
<p class="kt-blocks-info-box-text">All-Access Tickets<br />Ride everything with one pass</p>
</div>
<p></span></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<style>.kadence-column809_4173b2-6c > .kt-inside-inner-col,.kadence-column809_4173b2-6c > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_4173b2-6c > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_4173b2-6c > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_4173b2-6c > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_4173b2-6c > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_4173b2-6c{position:relative;}@media all and (max-width: 1024px){.kadence-column809_4173b2-6c > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_4173b2-6c > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_4173b2-6c">
<div class="kt-inside-inner-col">
<style>.kadence-column809_3ec5c9-19 > .kt-inside-inner-col,.kadence-column809_3ec5c9-19 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_3ec5c9-19 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_3ec5c9-19 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_3ec5c9-19 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_3ec5c9-19 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_3ec5c9-19{position:relative;}@media all and (max-width: 1024px){.kadence-column809_3ec5c9-19 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_3ec5c9-19 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_3ec5c9-19">
<div class="kt-inside-inner-col"></div>
</div>
</div>
</div>
</div>
</div>
<style>.kb-row-layout-id809_545db0-5b > .kt-row-column-wrap{align-content:start;}:where(.kb-row-layout-id809_545db0-5b > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:start;}.kb-row-layout-id809_545db0-5b > .kt-row-column-wrap{column-gap:var(--global-kb-gap-md, 2rem);row-gap:var(--global-kb-gap-md, 2rem);padding-top:var(--global-kb-spacing-5xl, 10rem);padding-bottom:var(--global-kb-spacing-5xl, 10rem);grid-template-columns:repeat(2, minmax(0, 1fr));}.kb-row-layout-id809_545db0-5b > .kt-row-layout-overlay{opacity:0.30;}.kb-row-layout-id809_545db0-5b .kt-row-layout-bottom-sep{height:252px;}.kb-row-layout-id809_545db0-5b .kt-row-layout-bottom-sep svg{width:100%;}.kb-row-layout-id809_545db0-5b .kt-row-layout-bottom-sep svg{fill:var(--global-palette7, #EDF2F7)!important;}@media all and (max-width: 1024px){.kb-row-layout-id809_545db0-5b > .kt-row-column-wrap{grid-template-columns:repeat(2, minmax(0, 1fr));}}@media all and (max-width: 1024px){.kb-row-layout-id809_545db0-5b .kt-row-layout-bottom-sep{height:px;}}@media all and (max-width: 1024px){.kb-row-layout-id809_545db0-5b .kt-row-layout-bottom-sep svg{width:%;}}@media all and (max-width: 767px){.kb-row-layout-id809_545db0-5b > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}.kb-row-layout-id809_545db0-5b .kt-row-layout-bottom-sep{height:px;}.kb-row-layout-id809_545db0-5b .kt-row-layout-bottom-sep svg{width:%;}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_545db0-5b alignnone wp-block-kadence-rowlayout">
<div class="kt-row-column-wrap kt-has-2-columns kt-row-layout-equal kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-top">
<style>.kadence-column809_2ff8bb-93 > .kt-inside-inner-col,.kadence-column809_2ff8bb-93 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_2ff8bb-93 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_2ff8bb-93 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_2ff8bb-93 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_2ff8bb-93 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_2ff8bb-93{position:relative;}@media all and (max-width: 1024px){.kadence-column809_2ff8bb-93 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_2ff8bb-93 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_2ff8bb-93">
<div class="kt-inside-inner-col">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_db316c-f7, .wp-block-kadence-advancedheading.kt-adv-heading809_db316c-f7[data-kb-block="kb-adv-heading809_db316c-f7"]{text-align:center;font-size:var(--global-kb-font-size-xl, 3rem);line-height:1.3;font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_db316c-f7 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_db316c-f7[data-kb-block="kb-adv-heading809_db316c-f7"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_db316c-f7 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_db316c-f7[data-kb-block="kb-adv-heading809_db316c-f7"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<h2 class="kt-adv-heading809_db316c-f7 wp-block-kadence-advancedheading has-theme-palette-1-color has-text-color" data-kb-block="kb-adv-heading809_db316c-f7">Ready to begin your Quest?</h2>
<p class="has-text-align-center">Book now and step into the most thrilling indoor adventure in Doha.</p>
<p class="has-text-align-center">Or Plan a Group Visit&nbsp;<a href="https://dohaquest.com/en/school-bookings">for schools</a>&nbsp;&amp;&nbsp;<a href="https://dohaquest.com/en/corporate-bookings">corporate groups →</a></p>
<style>.wp-block-kadence-advancedbtn.kb-btns809_cef929-6c{gap:var(--global-kb-gap-xs, 0.5rem );justify-content:center;align-items:center;}.kt-btns809_cef929-6c .kt-button{font-weight:normal;font-style:normal;}.kt-btns809_cef929-6c .kt-btn-wrap-0{margin-right:5px;}.wp-block-kadence-advancedbtn.kt-btns809_cef929-6c .kt-btn-wrap-0 .kt-button{color:#555555;border-color:#555555;}.wp-block-kadence-advancedbtn.kt-btns809_cef929-6c .kt-btn-wrap-0 .kt-button:hover, .wp-block-kadence-advancedbtn.kt-btns809_cef929-6c .kt-btn-wrap-0 .kt-button:focus{color:#ffffff;border-color:#444444;}.wp-block-kadence-advancedbtn.kt-btns809_cef929-6c .kt-btn-wrap-0 .kt-button::before{display:none;}.wp-block-kadence-advancedbtn.kt-btns809_cef929-6c .kt-btn-wrap-0 .kt-button:hover, .wp-block-kadence-advancedbtn.kt-btns809_cef929-6c .kt-btn-wrap-0 .kt-button:focus{background:#444444;}</style>
<div class="wp-block-kadence-advancedbtn kb-buttons-wrap kb-btns809_cef929-6c">
<style>ul.menu .wp-block-kadence-advancedbtn .kb-btn809_b4a520-3d.kb-button{width:initial;}</style>
<p><a class="kb-button kt-button button kb-btn809_b4a520-3d kt-btn-size-small kt-btn-width-type-auto kb-btn-global-fill  kt-btn-has-text-true kt-btn-has-svg-true  wp-block-kadence-singlebtn" href="http://+974%205096%201834"><span class="kt-btn-inner-text">+974 5096 1834</span><span class="kb-svg-icon-wrap kb-svg-icon-fe_phoneCall kt-btn-icon-side-right"><svg viewBox="0 0 24 24"  fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" xmlns="http://www.w3.org/2000/svg"  aria-hidden="true"><path d="M15.05 5A5 5 0 0 1 19 8.95M15.05 1A9 9 0 0 1 23 8.94m-1 7.98v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/></svg></span></a></p>
<style>ul.menu .wp-block-kadence-advancedbtn .kb-btn809_b05d22-8d.kb-button{width:initial;}</style>
<p><a class="kb-button kt-button button kb-btn809_b05d22-8d kt-btn-size-small kt-btn-width-type-auto kb-btn-global-fill  kt-btn-has-text-true kt-btn-has-svg-true  wp-block-kadence-singlebtn" href="http://sales@dohaquest.com"><span class="kt-btn-inner-text">sales@dohaquest.com</span><span class="kb-svg-icon-wrap kb-svg-icon-kb_email-outline kt-btn-icon-side-right"><svg viewBox="0 0 24 24"  fill="currentColor" xmlns="http://www.w3.org/2000/svg"  aria-hidden="true"><path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 14H4V8l8 5 8-5v10zm-8-7L4 6h16l-8 5z"/></svg></span></a></div>
<figure class="wp-block-image size-large"><img loading="lazy" decoding="async" width="1024" height="576" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_114_1702559769198-1024x576.png" alt="" class="wp-image-868" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_114_1702559769198-1024x576.png 1024w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_114_1702559769198-300x169.png 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_114_1702559769198-768x432.png 768w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_114_1702559769198-600x338.png 600w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/imgi_114_1702559769198.png 1280w" sizes="(max-width: 1024px) 100vw, 1024px" /></figure>
</div>
</div>
<style>.kadence-column809_34c255-41 > .kt-inside-inner-col{display:flex;}.kadence-column809_34c255-41 > .kt-inside-inner-col,.kadence-column809_34c255-41 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_34c255-41 > .kt-inside-inner-col{row-gap:var(--global-kb-gap-none, 0rem );column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_34c255-41 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_34c255-41 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_34c255-41 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_34c255-41{position:relative;}@media all and (max-width: 1024px){.kadence-column809_34c255-41 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_34c255-41 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_34c255-41">
<div class="kt-inside-inner-col">
<figure class="wp-block-image size-large"><img loading="lazy" decoding="async" width="1024" height="917" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/note-thanun-CYlPykF-qAM-unsplash-1-1024x917.jpg" alt="" class="wp-image-898" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/04/note-thanun-CYlPykF-qAM-unsplash-1-1024x917.jpg 1024w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/note-thanun-CYlPykF-qAM-unsplash-1-300x269.jpg 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/note-thanun-CYlPykF-qAM-unsplash-1-768x688.jpg 768w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/note-thanun-CYlPykF-qAM-unsplash-1-1536x1376.jpg 1536w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/note-thanun-CYlPykF-qAM-unsplash-1-2048x1835.jpg 2048w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/note-thanun-CYlPykF-qAM-unsplash-1-600x538.jpg 600w" sizes="(max-width: 1024px) 100vw, 1024px" /></figure>
</div>
</div>
</div>
</div>
<style>.kb-row-layout-id809_151890-d4 > .kt-row-column-wrap{align-content:center;}:where(.kb-row-layout-id809_151890-d4 > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:center;}.kb-row-layout-id809_151890-d4 > .kt-row-column-wrap{column-gap:var(--global-kb-gap-none, 0rem );row-gap:var(--global-kb-gap-sm, 1rem);max-width:var( --global-content-width, 1290px );padding-left:var(--global-content-edge-padding);padding-right:var(--global-content-edge-padding);padding-top:var(--global-kb-spacing-lg, 3rem);padding-bottom:var(--global-kb-spacing-xxl, 5rem);}.kb-row-layout-id809_151890-d4 > .kt-row-column-wrap > *:nth-child(3n of *:not(style)){grid-column:1 / -1;}.kb-row-layout-id809_151890-d4 > .kt-row-column-wrap{grid-template-columns:repeat(2, minmax(0, 1fr));}.kb-row-layout-id809_151890-d4 > .kt-row-layout-overlay{opacity:0.35;}.kb-row-layout-id809_151890-d4 .kt-row-layout-bottom-sep{height:238px;}.kb-row-layout-id809_151890-d4 .kt-row-layout-bottom-sep svg{width:100%;}.kb-row-layout-id809_151890-d4 .kt-row-layout-bottom-sep svg{fill:var(--global-palette7, #EDF2F7)!important;}.kb-row-layout-id809_151890-d4 .kt-row-layout-top-sep{height:100px;}.kb-row-layout-id809_151890-d4 .kt-row-layout-top-sep svg{width:100%;}.kb-row-layout-id809_151890-d4 .kt-row-layout-top-sep svg{fill:var(--global-palette7, #EDF2F7)!important;}@media all and (max-width: 1024px){.kb-row-layout-id809_151890-d4 > .kt-row-column-wrap > *:nth-child(3n of *:not(style)){grid-column:1 / -1;}}@media all and (max-width: 1024px){.kb-row-layout-id809_151890-d4 > .kt-row-column-wrap{grid-template-columns:repeat(2, minmax(0, 1fr));}}@media all and (max-width: 1024px){.kb-row-layout-id809_151890-d4 .kt-row-layout-bottom-sep{height:px;}}@media all and (max-width: 1024px){.kb-row-layout-id809_151890-d4 .kt-row-layout-bottom-sep svg{width:%;}}@media all and (max-width: 767px){.kb-row-layout-id809_151890-d4 > .kt-row-column-wrap > div:not(.added-for-specificity){grid-column:initial;}.kb-row-layout-id809_151890-d4 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}.kb-row-layout-id809_151890-d4 .kt-row-layout-bottom-sep{height:px;}.kb-row-layout-id809_151890-d4 .kt-row-layout-bottom-sep svg{width:%;}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_151890-d4 alignfull wp-block-kadence-rowlayout">
<div class="kt-row-layout-bottom-sep kt-row-sep-type-mtns"><svg viewBox="0 0 1000 100" preserveAspectRatio="none"><path d="M1000,50l-182.69,-45.286l-292.031,61.197l-190.875,-41.075l-143.748,28.794l-190.656,-23.63l0,70l1000,0l0,-50Z" style="opacity: 0.4" /><path d="M1000,57l-152.781,-22.589l-214.383,19.81l-159.318,-21.471l-177.44,25.875l-192.722,5.627l-103.356,-27.275l0,63.023l1000,0l0,-43Z" /></svg></div>
<div class="kt-row-column-wrap kt-has-3-columns kt-row-layout-last-row kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-middle kb-theme-content-width">
<style>.kadence-column809_06f4be-17 > .kt-inside-inner-col,.kadence-column809_06f4be-17 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_06f4be-17 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_06f4be-17 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_06f4be-17 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_06f4be-17 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_06f4be-17{position:relative;}.kadence-column809_06f4be-17, .kt-inside-inner-col > .kadence-column809_06f4be-17:not(.specificity){margin-top:0px;margin-right:var(--global-kb-spacing-xl, 4rem);margin-bottom:0px;}@media all and (max-width: 1024px){.kadence-column809_06f4be-17 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 1024px){.kadence-column809_06f4be-17, .kt-inside-inner-col > .kadence-column809_06f4be-17:not(.specificity){margin-right:0px;}}@media all and (max-width: 767px){.kadence-column809_06f4be-17 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_06f4be-17 inner-column-1">
<div class="kt-inside-inner-col">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_732d77-d3, .wp-block-kadence-advancedheading.kt-adv-heading809_732d77-d3[data-kb-block="kb-adv-heading809_732d77-d3"]{line-height:1.8;font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_732d77-d3 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_732d77-d3[data-kb-block="kb-adv-heading809_732d77-d3"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_732d77-d3 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_732d77-d3[data-kb-block="kb-adv-heading809_732d77-d3"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_732d77-d3 wp-block-kadence-advancedheading has-theme-palette-4-color has-text-color" data-kb-block="kb-adv-heading809_732d77-d3">
<style>.wp-block-kadence-column.kb-section-dir-horizontal > .kt-inside-inner-col > .kt-info-box809_f4281e-fb .kt-blocks-info-box-link-wrap{max-width:unset;}.kt-info-box809_f4281e-fb .kt-blocks-info-box-link-wrap{border-top:5px solid var(--global-palette7, #eeeeee);border-right:5px solid var(--global-palette7, #eeeeee);border-bottom:5px solid var(--global-palette7, #eeeeee);border-left:5px solid var(--global-palette7, #eeeeee);border-top-left-radius:30px;border-top-right-radius:30px;border-bottom-right-radius:30px;border-bottom-left-radius:30px;background:#f2b02d;padding-top:var(--global-kb-spacing-xs, 1rem);padding-right:var(--global-kb-spacing-xs, 1rem);padding-bottom:var(--global-kb-spacing-xs, 1rem);padding-left:var(--global-kb-spacing-xs, 1rem);}.kt-info-box809_f4281e-fb .kadence-info-box-icon-container .kt-info-svg-icon, .kt-info-box809_f4281e-fb .kt-info-svg-icon-flip, .kt-info-box809_f4281e-fb .kt-blocks-info-box-number{font-size:50px;}.kt-info-box809_f4281e-fb .kt-blocks-info-box-media{color:var(--global-palette7, #EDF2F7);border-color:#444444;border-radius:200px;overflow:hidden;border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;padding-top:20px;padding-right:20px;padding-bottom:20px;padding-left:20px;margin-top:0px;margin-right:20px;margin-bottom:0px;margin-left:0px;}.kt-info-box809_f4281e-fb .kt-blocks-info-box-media .kadence-info-box-image-intrisic img{border-radius:200px;}.kt-info-box809_f4281e-fb .kt-infobox-textcontent h2.kt-blocks-info-box-title{color:var(--global-palette9, #ffffff);font-family:\'Roboto Condensed\';font-style:normal;font-weight:400;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;margin-top:5px;margin-right:0px;margin-bottom:10px;margin-left:0px;}.kt-info-box809_f4281e-fb .kt-infobox-textcontent .kt-blocks-info-box-text{color:var(--global-palette9, #ffffff);}.wp-block-kadence-infobox.kt-info-box809_f4281e-fb .kt-blocks-info-box-text{font-family:\'Roboto Condensed\';font-style:normal;font-weight:400;}.kt-info-box809_f4281e-fb .kt-blocks-info-box-link-wrap:hover .kt-blocks-info-box-text{color:var(--global-palette9, #ffffff);}.kt-info-box809_f4281e-fb .kt-blocks-info-box-learnmore{background:transparent;border-width:0px 0px 0px 0px;padding-top:4px;padding-right:8px;padding-bottom:4px;padding-left:8px;margin-top:10px;margin-right:0px;margin-bottom:10px;margin-left:0px;}@media all and (max-width: 1024px){.kt-info-box809_f4281e-fb .kt-blocks-info-box-link-wrap{border-top:5px solid var(--global-palette7, #eeeeee);border-right:5px solid var(--global-palette7, #eeeeee);border-bottom:5px solid var(--global-palette7, #eeeeee);border-left:5px solid var(--global-palette7, #eeeeee);}}@media all and (max-width: 767px){.kt-info-box809_f4281e-fb .kt-blocks-info-box-link-wrap{border-top:5px solid var(--global-palette7, #eeeeee);border-right:5px solid var(--global-palette7, #eeeeee);border-bottom:5px solid var(--global-palette7, #eeeeee);border-left:5px solid var(--global-palette7, #eeeeee);}}</style>
<div class="wp-block-kadence-infobox kt-info-box809_f4281e-fb"><span class="kt-blocks-info-box-link-wrap info-box-link kt-blocks-info-box-media-align-left kt-info-halign-left"></p>
<div class="kt-blocks-info-box-media-container">
<div class="kt-blocks-info-box-media kt-info-media-animate-none">
<div class="kadence-info-box-icon-container kt-info-icon-animate-none">
<div class="kadence-info-box-icon-inner-container"><span class="kb-svg-icon-wrap kb-svg-icon-ic_location kt-info-svg-icon"><svg viewBox="0 0 8 8"  fill="currentColor" xmlns="http://www.w3.org/2000/svg"  aria-hidden="true"><path d="M8 0l-8 4 3 1 1 3 4-8z"/></svg></span></div>
</div>
</div>
</div>
<div class="kt-infobox-textcontent">
<h2 class="kt-blocks-info-box-title">Drop a visit</h2>
<p class="kt-blocks-info-box-text">Al Khaleej Street, Doha Oasis Gate 2, Msheireb</p>
</div>
<p></span></div>
<style>.wp-block-kadence-column.kb-section-dir-horizontal > .kt-inside-inner-col > .kt-info-box809_2313a4-8e .kt-blocks-info-box-link-wrap{max-width:unset;}.kt-info-box809_2313a4-8e .kt-blocks-info-box-link-wrap{border-top:5px solid var(--global-palette7, #eeeeee);border-right:5px solid var(--global-palette7, #eeeeee);border-bottom:5px solid var(--global-palette7, #eeeeee);border-left:5px solid var(--global-palette7, #eeeeee);border-top-left-radius:30px;border-top-right-radius:30px;border-bottom-right-radius:30px;border-bottom-left-radius:30px;background:#f2b02d;padding-top:var(--global-kb-spacing-xs, 1rem);padding-right:var(--global-kb-spacing-xs, 1rem);padding-bottom:var(--global-kb-spacing-xs, 1rem);padding-left:var(--global-kb-spacing-xs, 1rem);}.kt-info-box809_2313a4-8e .kadence-info-box-icon-container .kt-info-svg-icon, .kt-info-box809_2313a4-8e .kt-info-svg-icon-flip, .kt-info-box809_2313a4-8e .kt-blocks-info-box-number{font-size:50px;}.kt-info-box809_2313a4-8e .kt-blocks-info-box-media{color:#f1eded;border-color:#444444;border-radius:200px;overflow:hidden;border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;padding-top:20px;padding-right:20px;padding-bottom:20px;padding-left:20px;margin-top:0px;margin-right:20px;margin-bottom:0px;margin-left:0px;}.kt-info-box809_2313a4-8e .kt-blocks-info-box-media .kadence-info-box-image-intrisic img{border-radius:200px;}.kt-info-box809_2313a4-8e .kt-infobox-textcontent h2.kt-blocks-info-box-title{color:#f3eded;font-family:\'Roboto Condensed\';font-style:normal;font-weight:400;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;margin-top:5px;margin-right:0px;margin-bottom:10px;margin-left:0px;}.kt-info-box809_2313a4-8e .kt-blocks-info-box-link-wrap:hover h2.kt-blocks-info-box-title{color:var(--global-palette9, #ffffff);}.kt-info-box809_2313a4-8e .kt-infobox-textcontent .kt-blocks-info-box-text{color:#ece8e8;}.wp-block-kadence-infobox.kt-info-box809_2313a4-8e .kt-blocks-info-box-text{font-family:\'Roboto Condensed\';font-style:normal;font-weight:400;}.kt-info-box809_2313a4-8e .kt-blocks-info-box-link-wrap:hover .kt-blocks-info-box-text{color:var(--global-palette9, #ffffff);}.kt-info-box809_2313a4-8e .kt-blocks-info-box-learnmore{background:transparent;border-width:0px 0px 0px 0px;padding-top:4px;padding-right:8px;padding-bottom:4px;padding-left:8px;margin-top:10px;margin-right:0px;margin-bottom:10px;margin-left:0px;}@media all and (max-width: 1024px){.kt-info-box809_2313a4-8e .kt-blocks-info-box-link-wrap{border-top:5px solid var(--global-palette7, #eeeeee);border-right:5px solid var(--global-palette7, #eeeeee);border-bottom:5px solid var(--global-palette7, #eeeeee);border-left:5px solid var(--global-palette7, #eeeeee);}}@media all and (max-width: 767px){.kt-info-box809_2313a4-8e .kt-blocks-info-box-link-wrap{border-top:5px solid var(--global-palette7, #eeeeee);border-right:5px solid var(--global-palette7, #eeeeee);border-bottom:5px solid var(--global-palette7, #eeeeee);border-left:5px solid var(--global-palette7, #eeeeee);}}</style>
<div class="wp-block-kadence-infobox kt-info-box809_2313a4-8e"><span class="kt-blocks-info-box-link-wrap info-box-link kt-blocks-info-box-media-align-left kt-info-halign-left"></p>
<div class="kt-blocks-info-box-media-container">
<div class="kt-blocks-info-box-media kt-info-media-animate-none">
<div class="kadence-info-box-icon-container kt-info-icon-animate-none">
<div class="kadence-info-box-icon-inner-container"><span class="kb-svg-icon-wrap kb-svg-icon-fe_mail kt-info-svg-icon"><svg viewBox="0 0 24 24"  fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" xmlns="http://www.w3.org/2000/svg"  aria-hidden="true"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg></span></div>
</div>
</div>
</div>
<div class="kt-infobox-textcontent">
<h2 class="kt-blocks-info-box-title">Email Us</h2>
<p class="kt-blocks-info-box-text"><a style="color:white;" href="mailto:sales@dohaquest.com">sales@dohaquest.com</a></p>
</div>
<p></span></div>
<style>.wp-block-kadence-column.kb-section-dir-horizontal > .kt-inside-inner-col > .kt-info-box809_dc647f-04 .kt-blocks-info-box-link-wrap{max-width:unset;}.kt-info-box809_dc647f-04 .kt-blocks-info-box-link-wrap{border-top:5px solid var(--global-palette7, #eeeeee);border-right:5px solid var(--global-palette7, #eeeeee);border-bottom:5px solid var(--global-palette7, #eeeeee);border-left:5px solid var(--global-palette7, #eeeeee);border-top-left-radius:30px;border-top-right-radius:30px;border-bottom-right-radius:30px;border-bottom-left-radius:30px;background:#f2b02d;padding-top:var(--global-kb-spacing-xs, 1rem);padding-right:var(--global-kb-spacing-xs, 1rem);padding-bottom:var(--global-kb-spacing-xs, 1rem);padding-left:var(--global-kb-spacing-xs, 1rem);}.kt-info-box809_dc647f-04 .kadence-info-box-icon-container .kt-info-svg-icon, .kt-info-box809_dc647f-04 .kt-info-svg-icon-flip, .kt-info-box809_dc647f-04 .kt-blocks-info-box-number{font-size:50px;}.kt-info-box809_dc647f-04 .kt-blocks-info-box-media{color:#f1eded;border-color:#444444;border-radius:200px;overflow:hidden;border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;padding-top:20px;padding-right:20px;padding-bottom:20px;padding-left:20px;margin-top:0px;margin-right:20px;margin-bottom:0px;margin-left:0px;}.kt-info-box809_dc647f-04 .kt-blocks-info-box-media .kadence-info-box-image-intrisic img{border-radius:200px;}.kt-info-box809_dc647f-04 .kt-infobox-textcontent h2.kt-blocks-info-box-title{color:var(--global-palette9, #ffffff);font-family:\'Roboto Condensed\';font-style:normal;font-weight:400;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;margin-top:5px;margin-right:0px;margin-bottom:10px;margin-left:0px;}.kt-info-box809_dc647f-04 .kt-infobox-textcontent .kt-blocks-info-box-text{color:var(--global-palette9, #ffffff);}.wp-block-kadence-infobox.kt-info-box809_dc647f-04 .kt-blocks-info-box-text{font-family:\'Roboto Condensed\';font-style:normal;font-weight:400;}.kt-info-box809_dc647f-04 .kt-blocks-info-box-link-wrap:hover .kt-blocks-info-box-text{color:var(--global-palette9, #ffffff);}.kt-info-box809_dc647f-04 .kt-blocks-info-box-learnmore{background:transparent;border-width:0px 0px 0px 0px;padding-top:4px;padding-right:8px;padding-bottom:4px;padding-left:8px;margin-top:10px;margin-right:0px;margin-bottom:10px;margin-left:0px;}@media all and (max-width: 1024px){.kt-info-box809_dc647f-04 .kt-blocks-info-box-link-wrap{border-top:5px solid var(--global-palette7, #eeeeee);border-right:5px solid var(--global-palette7, #eeeeee);border-bottom:5px solid var(--global-palette7, #eeeeee);border-left:5px solid var(--global-palette7, #eeeeee);}}@media all and (max-width: 767px){.kt-info-box809_dc647f-04 .kt-blocks-info-box-link-wrap{border-top:5px solid var(--global-palette7, #eeeeee);border-right:5px solid var(--global-palette7, #eeeeee);border-bottom:5px solid var(--global-palette7, #eeeeee);border-left:5px solid var(--global-palette7, #eeeeee);}}</style>
<div class="wp-block-kadence-infobox kt-info-box809_dc647f-04"><span class="kt-blocks-info-box-link-wrap info-box-link kt-blocks-info-box-media-align-left kt-info-halign-left"></p>
<div class="kt-blocks-info-box-media-container">
<div class="kt-blocks-info-box-media kt-info-media-animate-none">
<div class="kadence-info-box-icon-container kt-info-icon-animate-none">
<div class="kadence-info-box-icon-inner-container"><span class="kb-svg-icon-wrap kb-svg-icon-fe_phoneCall kt-info-svg-icon"><svg viewBox="0 0 24 24"  fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" xmlns="http://www.w3.org/2000/svg"  aria-hidden="true"><path d="M15.05 5A5 5 0 0 1 19 8.95M15.05 1A9 9 0 0 1 23 8.94m-1 7.98v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/></svg></span></div>
</div>
</div>
</div>
<div class="kt-infobox-textcontent">
<h2 class="kt-blocks-info-box-title">Reach us on</h2>
<p class="kt-blocks-info-box-text">WhatsApp or Mobile: +974 5096 1834</p>
</div>
<p></span></div>
</div>
</div>
<style>.kadence-column809_6e075e-a2 > .kt-inside-inner-col{display:flex;}.kadence-column809_6e075e-a2 > .kt-inside-inner-col,.kadence-column809_6e075e-a2 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_6e075e-a2 > .kt-inside-inner-col{row-gap:var(--global-kb-gap-none, 0rem );column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_6e075e-a2 > .kt-inside-inner-col{flex-direction:column;justify-content:space-between;}.kadence-column809_6e075e-a2 > .kt-inside-inner-col > .aligncenter{width:100%;}.kt-row-column-wrap > .kadence-column809_6e075e-a2{align-self:center;}.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_6e075e-a2{align-self:auto;}.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_6e075e-a2 > .kt-inside-inner-col{flex-direction:column;justify-content:space-between;}.kadence-column809_6e075e-a2 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_6e075e-a2{position:relative;}.kadence-column809_6e075e-a2, .kt-inside-inner-col > .kadence-column809_6e075e-a2:not(.specificity){margin-top:0px;margin-bottom:0px;}@media all and (max-width: 1024px){.kt-row-column-wrap > .kadence-column809_6e075e-a2{align-self:center;}}@media all and (max-width: 1024px){.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_6e075e-a2{align-self:auto;}}@media all and (max-width: 1024px){.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_6e075e-a2 > .kt-inside-inner-col{flex-direction:column;justify-content:space-between;}}@media all and (max-width: 1024px){.kadence-column809_6e075e-a2 > .kt-inside-inner-col{flex-direction:column;justify-content:space-between;}}@media all and (max-width: 767px){.kt-row-column-wrap > .kadence-column809_6e075e-a2{align-self:center;}.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_6e075e-a2{align-self:auto;}.kt-inner-column-height-full:not(.kt-has-1-columns) > .wp-block-kadence-column.kadence-column809_6e075e-a2 > .kt-inside-inner-col{flex-direction:column;justify-content:space-between;}.kadence-column809_6e075e-a2 > .kt-inside-inner-col{flex-direction:column;justify-content:space-between;}}</style>
<div class="wp-block-kadence-column kadence-column809_6e075e-a2 inner-column-2">
<div class="kt-inside-inner-col">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3607.5651159427975!2d51.51700577538473!3d25.285210777654406!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e45c5a57ee4b035%3A0x9d7dbc9b816ae919!2sDoha%20Quest!5e0!3m2!1sen!2sqa!4v1776678278608!5m2!1sen!2sqa" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>
</div>
<style>.kadence-column809_d3b76c-d6 > .kt-inside-inner-col,.kadence-column809_d3b76c-d6 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_d3b76c-d6 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_d3b76c-d6 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_d3b76c-d6 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_d3b76c-d6 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_d3b76c-d6{position:relative;}@media all and (max-width: 1024px){.kadence-column809_d3b76c-d6 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_d3b76c-d6 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_d3b76c-d6">
<div class="kt-inside-inner-col">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_9b334a-aa, .wp-block-kadence-advancedheading.kt-adv-heading809_9b334a-aa[data-kb-block="kb-adv-heading809_9b334a-aa"]{text-align:center;font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_9b334a-aa mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_9b334a-aa[data-kb-block="kb-adv-heading809_9b334a-aa"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_9b334a-aa img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_9b334a-aa[data-kb-block="kb-adv-heading809_9b334a-aa"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_9b334a-aa wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_9b334a-aa">We are available to support you every day from 9:00 AM till 6:00 PM</p>
</div>
</div>
</div>
</div>
<style>.kb-row-layout-id809_546c03-a9 > .kt-row-column-wrap{align-content:start;}:where(.kb-row-layout-id809_546c03-a9 > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:start;}.kb-row-layout-id809_546c03-a9 > .kt-row-column-wrap{column-gap:var(--global-kb-gap-md, 2rem);row-gap:var(--global-kb-gap-md, 2rem);padding-top:var(--global-kb-spacing-sm, 1.5rem);padding-bottom:var(--global-kb-spacing-sm, 1.5rem);grid-template-columns:minmax(0, 1fr);}.kb-row-layout-id809_546c03-a9 > .kt-row-layout-overlay{opacity:0.30;}@media all and (max-width: 1024px){.kb-row-layout-id809_546c03-a9 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}@media all and (max-width: 767px){.kb-row-layout-id809_546c03-a9 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_546c03-a9 alignnone has-theme-palette9-background-color kt-row-has-bg wp-block-kadence-rowlayout">
<div class="kt-row-column-wrap kt-has-1-columns kt-row-layout-equal kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-top">
<style>.kadence-column809_032d6d-55 > .kt-inside-inner-col,.kadence-column809_032d6d-55 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_032d6d-55 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_032d6d-55 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_032d6d-55 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_032d6d-55 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_032d6d-55{position:relative;}@media all and (max-width: 1024px){.kadence-column809_032d6d-55 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_032d6d-55 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_032d6d-55">
<div class="kt-inside-inner-col">
<style>.kb-row-layout-id809_8b71cf-37 > .kt-row-column-wrap{align-content:center;}:where(.kb-row-layout-id809_8b71cf-37 > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:center;}.kb-row-layout-id809_8b71cf-37 > .kt-row-column-wrap{column-gap:var(--global-kb-gap-lg, 4rem);row-gap:var(--global-kb-gap-none, 0rem );max-width:var( --global-content-width, 1290px );padding-left:var(--global-content-edge-padding);padding-right:var(--global-content-edge-padding);padding-top:var(--global-kb-spacing-5xl, 10rem);padding-bottom:var(--global-kb-spacing-3xl, 6.5rem);grid-template-columns:minmax(0, calc(55% - ((var(--global-kb-gap-lg, 4rem) * 1 )/2)))minmax(0, calc(45% - ((var(--global-kb-gap-lg, 4rem) * 1 )/2)));}.kb-row-layout-id809_8b71cf-37{background-image:linear-gradient(90deg,var(--global-palette7,#EDF2F7) 65%,var(--global-palette9,#ffffff) 65%);}.kb-row-layout-id809_8b71cf-37 > .kt-row-layout-overlay{opacity:1;}@media all and (max-width: 1024px){.kb-row-layout-id809_8b71cf-37 > .kt-row-column-wrap{column-gap:var(--global-kb-gap-md, 2rem);padding-top:var(--global-kb-spacing-3xl, 6.5rem);padding-bottom:var(--global-kb-spacing-3xl, 6.5rem);grid-template-columns:repeat(2, minmax(0, 1fr));}}@media all and (max-width: 767px){.kb-row-layout-id809_8b71cf-37 > .kt-row-column-wrap{padding-top:var(--global-kb-spacing-3xl, 6.5rem);padding-bottom:var(--global-kb-spacing-xl, 4rem);grid-template-columns:minmax(0, 1fr);}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_8b71cf-37 alignfull has-theme-palette8-background-color kt-row-has-bg wp-block-kadence-rowlayout">
<div class="kt-row-column-wrap kt-has-2-columns kt-row-layout-equal kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-middle kb-theme-content-width">
<style>.kadence-column809_10bba1-33 > .kt-inside-inner-col,.kadence-column809_10bba1-33 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_10bba1-33 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_10bba1-33 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_10bba1-33 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_10bba1-33 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_10bba1-33{position:relative;}@media all and (max-width: 1024px){.kadence-column809_10bba1-33 > .kt-inside-inner-col{padding-right:0px;flex-direction:column;justify-content:center;}}@media all and (max-width: 1024px){.kadence-column809_10bba1-33{text-align:center;}}@media all and (max-width: 767px){.kadence-column809_10bba1-33 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}.kadence-column809_10bba1-33, .kt-inside-inner-col > .kadence-column809_10bba1-33:not(.specificity){margin-bottom:var(--global-kb-spacing-md, 2rem);}}</style>
<div class="wp-block-kadence-column kadence-column809_10bba1-33 kb-section-dir-vertical inner-column-1">
<div class="kt-inside-inner-col">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_067c12-31, .wp-block-kadence-advancedheading.kt-adv-heading809_067c12-31[data-kb-block="kb-adv-heading809_067c12-31"]{margin-top:0px;margin-bottom:var(--global-kb-spacing-lg, 3rem);font-size:var(--global-kb-font-size-xxl, 4rem);line-height:1.2;font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_067c12-31 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_067c12-31[data-kb-block="kb-adv-heading809_067c12-31"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_067c12-31 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_067c12-31[data-kb-block="kb-adv-heading809_067c12-31"] img.kb-inline-image{width:150px;vertical-align:baseline;}@media all and (max-width: 1024px){.wp-block-kadence-advancedheading.kt-adv-heading809_067c12-31, .wp-block-kadence-advancedheading.kt-adv-heading809_067c12-31[data-kb-block="kb-adv-heading809_067c12-31"]{font-size:var(--global-kb-font-size-lg, 2rem);text-align:left!important;}}</style>
<h1 class="kt-adv-heading809_067c12-31 wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_067c12-31">Explore our gallery — filled with smiles, laughter, and unforgettable adventures</h1>
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_b46e44-3a, .wp-block-kadence-advancedheading.kt-adv-heading809_b46e44-3a[data-kb-block="kb-adv-heading809_b46e44-3a"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_b46e44-3a mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_b46e44-3a[data-kb-block="kb-adv-heading809_b46e44-3a"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_b46e44-3a img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_b46e44-3a[data-kb-block="kb-adv-heading809_b46e44-3a"] img.kb-inline-image{width:150px;vertical-align:baseline;}@media all and (max-width: 1024px){.wp-block-kadence-advancedheading.kt-adv-heading809_b46e44-3a, .wp-block-kadence-advancedheading.kt-adv-heading809_b46e44-3a[data-kb-block="kb-adv-heading809_b46e44-3a"]{text-align:left!important;}}</style>
<p class="kt-adv-heading809_b46e44-3a wp-block-kadence-advancedheading has-theme-palette-4-color has-text-color" data-kb-block="kb-adv-heading809_b46e44-3a">Find out which ride suits your thrill level, age, and mood.</p>
<style>.wp-block-kadence-advancedbtn.kb-btns809_c874bf-f1{gap:var(--global-kb-gap-xs, 0.5rem );justify-content:flex-start;align-items:center;}.kt-btns809_c874bf-f1 .kt-button{font-weight:normal;font-style:normal;}.kt-btns809_c874bf-f1 .kt-btn-wrap-0{margin-right:5px;}.wp-block-kadence-advancedbtn.kt-btns809_c874bf-f1 .kt-btn-wrap-0 .kt-button{color:#555555;border-color:#555555;}.wp-block-kadence-advancedbtn.kt-btns809_c874bf-f1 .kt-btn-wrap-0 .kt-button:hover, .wp-block-kadence-advancedbtn.kt-btns809_c874bf-f1 .kt-btn-wrap-0 .kt-button:focus{color:#ffffff;border-color:#444444;}.wp-block-kadence-advancedbtn.kt-btns809_c874bf-f1 .kt-btn-wrap-0 .kt-button::before{display:none;}.wp-block-kadence-advancedbtn.kt-btns809_c874bf-f1 .kt-btn-wrap-0 .kt-button:hover, .wp-block-kadence-advancedbtn.kt-btns809_c874bf-f1 .kt-btn-wrap-0 .kt-button:focus{background:#444444;}@media all and (max-width: 1024px){.wp-block-kadence-advancedbtn.kb-btns809_c874bf-f1{justify-content:flex-start;}}</style>
<div class="wp-block-kadence-advancedbtn kb-buttons-wrap kb-btns809_c874bf-f1">
<style>ul.menu .wp-block-kadence-advancedbtn .kb-btn809_def38d-cb.kb-button{width:initial;}.wp-block-kadence-advancedbtn .kb-btn809_def38d-cb.kb-button{font-size:var(--global-kb-font-size-sm, 0.9rem);letter-spacing:1px;text-transform:uppercase;}</style>
<p><a class="kb-button kt-button button kb-btn809_def38d-cb kt-btn-size-standard kt-btn-width-type-auto kb-btn-global-inherit  kt-btn-has-text-true kt-btn-has-svg-false  wp-block-button__link wp-block-kadence-singlebtn" href="https://dohaquest.com/en/gallery"><span class="kt-btn-inner-text">Gallery</span></a></div>
</div>
</div>
<style>.kadence-column809_c9ca0f-00 > .kt-inside-inner-col{display:flex;}.kadence-column809_c9ca0f-00 > .kt-inside-inner-col,.kadence-column809_c9ca0f-00 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_c9ca0f-00 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_c9ca0f-00 > .kt-inside-inner-col{flex-direction:column;align-items:center;}.kadence-column809_c9ca0f-00 > .kt-inside-inner-col > .kb-image-is-ratio-size{align-self:stretch;}.kadence-column809_c9ca0f-00 > .kt-inside-inner-col > .wp-block-kadence-advancedgallery{align-self:stretch;}.kadence-column809_c9ca0f-00 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_c9ca0f-00 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_c9ca0f-00{position:relative;}@media all and (max-width: 1024px){.kadence-column809_c9ca0f-00 > .kt-inside-inner-col{flex-direction:column;justify-content:center;align-items:center;}}@media all and (max-width: 767px){.kadence-column809_c9ca0f-00 > .kt-inside-inner-col{flex-direction:column;justify-content:center;align-items:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_c9ca0f-00 inner-column-2">
<div class="kt-inside-inner-col">
<style>.kb-image809_c83a9d-10 .kb-image-has-overlay:after{opacity:0.3;border-top-left-radius:15px;border-top-right-radius:15px;border-bottom-right-radius:15px;border-bottom-left-radius:15px;}.kb-image809_c83a9d-10 img.kb-img, .kb-image809_c83a9d-10 .kb-img img{border-top-left-radius:15px;border-top-right-radius:15px;border-bottom-right-radius:15px;border-bottom-left-radius:15px;object-position:8% 50%;}@media all and (max-width: 767px){.wp-block-kadence-image.kb-image809_c83a9d-10:not(.kb-specificity-added):not(.kb-extra-specificity-added){margin-right:0px;margin-left:0px;}}</style>
<figure class="wp-block-kadence-image kb-image809_c83a9d-10 kb-image-is-ratio-size">
<div class="kb-is-ratio-image kb-image-ratio-square"><img loading="lazy" decoding="async" width="1239" height="542" src="https://bookings.dohaquest.com/wp-content/uploads/2026/04/oWAZ3eJkSkMYpuJt0P3qb5LlQMKQrf4aCBiEgP1N.webp" alt="" class="kb-img wp-image-1122" srcset="https://bookings.dohaquest.com/wp-content/uploads/2026/04/oWAZ3eJkSkMYpuJt0P3qb5LlQMKQrf4aCBiEgP1N.webp 1239w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/oWAZ3eJkSkMYpuJt0P3qb5LlQMKQrf4aCBiEgP1N-300x131.webp 300w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/oWAZ3eJkSkMYpuJt0P3qb5LlQMKQrf4aCBiEgP1N-1024x448.webp 1024w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/oWAZ3eJkSkMYpuJt0P3qb5LlQMKQrf4aCBiEgP1N-768x336.webp 768w, https://bookings.dohaquest.com/wp-content/uploads/2026/04/oWAZ3eJkSkMYpuJt0P3qb5LlQMKQrf4aCBiEgP1N-600x262.webp 600w" sizes="(max-width: 1239px) 100vw, 1239px" /></div>
</figure>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<style>.kb-row-layout-id809_4d0525-02 > .kt-row-column-wrap{align-content:start;}:where(.kb-row-layout-id809_4d0525-02 > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:start;}.kb-row-layout-id809_4d0525-02 > .kt-row-column-wrap{column-gap:var(--global-kb-gap-md, 2rem);row-gap:var(--global-kb-gap-md, 2rem);max-width:var( --global-content-width, 1290px );padding-left:var(--global-content-edge-padding);padding-right:var(--global-content-edge-padding);padding-top:var(--global-kb-spacing-lg, 3rem);padding-bottom:var(--global-kb-spacing-xxl, 5rem);grid-template-columns:minmax(0, 1fr);}.kb-row-layout-id809_4d0525-02 > .kt-row-layout-overlay{opacity:0.00;}@media all and (max-width: 1024px){.kb-row-layout-id809_4d0525-02 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}@media all and (max-width: 767px){.kb-row-layout-id809_4d0525-02 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_4d0525-02 alignfull has-theme-palette7-background-color kt-row-has-bg wp-block-kadence-rowlayout">
<div class="kt-row-column-wrap kt-has-1-columns kt-row-layout-equal kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-top kb-theme-content-width">
<style>.kadence-column809_4da5a1-b1 > .kt-inside-inner-col{padding-right:var(--global-kb-spacing-4xl, 8rem);padding-left:var(--global-kb-spacing-4xl, 8rem);}.kadence-column809_4da5a1-b1 > .kt-inside-inner-col,.kadence-column809_4da5a1-b1 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_4da5a1-b1 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_4da5a1-b1 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_4da5a1-b1 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_4da5a1-b1 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_4da5a1-b1{position:relative;}@media all and (max-width: 1024px){.kadence-column809_4da5a1-b1 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_4da5a1-b1 > .kt-inside-inner-col{padding-right:0px;padding-left:0px;flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_4da5a1-b1 inner-column-1">
<div class="kt-inside-inner-col">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_4c9dc9-79, .wp-block-kadence-advancedheading.kt-adv-heading809_4c9dc9-79[data-kb-block="kb-adv-heading809_4c9dc9-79"]{max-width:800px;margin-right:auto;margin-left:auto;margin-top:0px;margin-bottom:0px;text-align:center;font-size:50px;line-height:1.1;font-style:normal;letter-spacing:-1px;}.wp-block-kadence-advancedheading.kt-adv-heading809_4c9dc9-79 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_4c9dc9-79[data-kb-block="kb-adv-heading809_4c9dc9-79"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_4c9dc9-79 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_4c9dc9-79[data-kb-block="kb-adv-heading809_4c9dc9-79"] img.kb-inline-image{width:150px;vertical-align:baseline;}@media all and (max-width: 767px){.wp-block-kadence-advancedheading.kt-adv-heading809_4c9dc9-79, .wp-block-kadence-advancedheading.kt-adv-heading809_4c9dc9-79[data-kb-block="kb-adv-heading809_4c9dc9-79"]{font-size:55px;}}</style>
<h4 class="kt-adv-heading809_4c9dc9-79 wp-block-kadence-advancedheading has-theme-palette-3-color has-text-color" data-kb-block="kb-adv-heading809_4c9dc9-79"><strong>Help &amp; FAQs</strong></h4>
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_463606-4b, .wp-block-kadence-advancedheading.kt-adv-heading809_463606-4b[data-kb-block="kb-adv-heading809_463606-4b"]{max-width:800px;margin-right:auto;margin-left:auto;margin-top:var(--global-kb-spacing-sm, 1.5rem);text-align:center;font-size:var(--global-kb-font-size-md, 1.25rem);font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_463606-4b mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_463606-4b[data-kb-block="kb-adv-heading809_463606-4b"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_463606-4b img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_463606-4b[data-kb-block="kb-adv-heading809_463606-4b"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_463606-4b wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_463606-4b">Quick answers to help you get what you need faster.</p>
<style>.kt-accordion-id809_9f15c2-be .kt-accordion-inner-wrap{column-gap:var(--global-kb-gap-md, 2rem);row-gap:10px;}.kt-accordion-id809_9f15c2-be .kt-accordion-panel-inner{border-top:0px solid transparent;border-right:0px solid transparent;border-bottom:0px solid transparent;border-left:0px solid transparent;background:#ffffff;padding-top:var(--global-kb-spacing-sm, 1.5rem);padding-right:var(--global-kb-spacing-sm, 1.5rem);padding-bottom:var(--global-kb-spacing-sm, 1.5rem);padding-left:var(--global-kb-spacing-sm, 1.5rem);}.kt-accordion-id809_9f15c2-be > .kt-accordion-inner-wrap > .wp-block-kadence-pane > .kt-accordion-header-wrap > .kt-blocks-accordion-header{border-top-color:#f2f2f2;border-top-style:solid;border-right-color:#f2f2f2;border-right-style:solid;border-bottom-color:#f2f2f2;border-bottom-style:solid;border-left-color:#f2f2f2;border-left-style:solid;border-top-left-radius:6px;border-top-right-radius:6px;border-bottom-right-radius:6px;border-bottom-left-radius:6px;background:#f2f2f2;font-family:Helvetica, sans-serif;color:#555555;padding-top:13px;padding-right:15px;padding-bottom:13px;padding-left:15px;}.kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basiccircle ):not( .kt-accodion-icon-style-xclosecircle ):not( .kt-accodion-icon-style-arrowcircle )  > .kt-accordion-inner-wrap > .wp-block-kadence-pane > .kt-accordion-header-wrap .kt-blocks-accordion-icon-trigger:after, .kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basiccircle ):not( .kt-accodion-icon-style-xclosecircle ):not( .kt-accodion-icon-style-arrowcircle )  > .kt-accordion-inner-wrap > .wp-block-kadence-pane > .kt-accordion-header-wrap .kt-blocks-accordion-icon-trigger:before{background:#555555;}.kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basic ):not( .kt-accodion-icon-style-xclose ):not( .kt-accodion-icon-style-arrow ) .kt-blocks-accordion-icon-trigger{background:#555555;}.kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basic ):not( .kt-accodion-icon-style-xclose ):not( .kt-accodion-icon-style-arrow ) .kt-blocks-accordion-icon-trigger:after, .kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basic ):not( .kt-accodion-icon-style-xclose ):not( .kt-accodion-icon-style-arrow ) .kt-blocks-accordion-icon-trigger:before{background:#f2f2f2;}.kt-accordion-id809_9f15c2-be > .kt-accordion-inner-wrap > .wp-block-kadence-pane > .kt-accordion-header-wrap > .kt-blocks-accordion-header:hover, 
				body:not(.hide-focus-outline) .kt-accordion-id809_9f15c2-be .kt-blocks-accordion-header:focus-visible{color:#444444;border-top:1px solid #878787;border-right:1px solid #878787;border-bottom:1px solid #878787;border-left:1px solid #878787;}.kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basiccircle ):not( .kt-accodion-icon-style-xclosecircle ):not( .kt-accodion-icon-style-arrowcircle ) .kt-accordion-header-wrap .kt-blocks-accordion-header:hover .kt-blocks-accordion-icon-trigger:after, .kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basiccircle ):not( .kt-accodion-icon-style-xclosecircle ):not( .kt-accodion-icon-style-arrowcircle ) .kt-accordion-header-wrap .kt-blocks-accordion-header:hover .kt-blocks-accordion-icon-trigger:before, body:not(.hide-focus-outline) .kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basiccircle ):not( .kt-accodion-icon-style-xclosecircle ):not( .kt-accodion-icon-style-arrowcircle ) .kt-blocks-accordion--visible .kt-blocks-accordion-icon-trigger:after, body:not(.hide-focus-outline) .kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basiccircle ):not( .kt-accodion-icon-style-xclosecircle ):not( .kt-accodion-icon-style-arrowcircle ) .kt-blocks-accordion-header:focus-visible .kt-blocks-accordion-icon-trigger:before{background:#444444;}.kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basic ):not( .kt-accodion-icon-style-xclose ):not( .kt-accodion-icon-style-arrow ) .kt-accordion-header-wrap .kt-blocks-accordion-header:hover .kt-blocks-accordion-icon-trigger, body:not(.hide-focus-outline) .kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basic ):not( .kt-accodion-icon-style-xclose ):not( .kt-accodion-icon-style-arrow ) .kt-accordion-header-wrap .kt-blocks-accordion-header:focus-visible .kt-blocks-accordion-icon-trigger{background:#444444;}.kt-accordion-id809_9f15c2-be .kt-accordion-header-wrap .kt-blocks-accordion-header:focus-visible,
				.kt-accordion-id809_9f15c2-be > .kt-accordion-inner-wrap > .wp-block-kadence-pane > .kt-accordion-header-wrap > .kt-blocks-accordion-header.kt-accordion-panel-active{color:#ffffff;background:var(--global-palette1, #3182CE);border-top:1px solid #BE530B;border-right:1px solid #BE530B;border-bottom:1px solid #BE530B;border-left:1px solid #BE530B;}.kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basiccircle ):not( .kt-accodion-icon-style-xclosecircle ):not( .kt-accodion-icon-style-arrowcircle )  > .kt-accordion-inner-wrap > .wp-block-kadence-pane > .kt-accordion-header-wrap > .kt-blocks-accordion-header.kt-accordion-panel-active .kt-blocks-accordion-icon-trigger:after, .kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basiccircle ):not( .kt-accodion-icon-style-xclosecircle ):not( .kt-accodion-icon-style-arrowcircle )  > .kt-accordion-inner-wrap > .wp-block-kadence-pane > .kt-accordion-header-wrap > .kt-blocks-accordion-header.kt-accordion-panel-active .kt-blocks-accordion-icon-trigger:before{background:#ffffff;}.kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basic ):not( .kt-accodion-icon-style-xclose ):not( .kt-accodion-icon-style-arrow ) .kt-blocks-accordion-header.kt-accordion-panel-active .kt-blocks-accordion-icon-trigger{background:#ffffff;}.kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basic ):not( .kt-accodion-icon-style-xclose ):not( .kt-accodion-icon-style-arrow ) .kt-blocks-accordion-header.kt-accordion-panel-active .kt-blocks-accordion-icon-trigger:after, .kt-accordion-id809_9f15c2-be:not( .kt-accodion-icon-style-basic ):not( .kt-accodion-icon-style-xclose ):not( .kt-accodion-icon-style-arrow ) .kt-blocks-accordion-header.kt-accordion-panel-active .kt-blocks-accordion-icon-trigger:before{background:var(--global-palette1, #3182CE);}@media all and (max-width: 1024px){.kt-accordion-id809_9f15c2-be .kt-accordion-panel-inner{border-top:0px solid transparent;border-right:0px solid transparent;border-bottom:0px solid transparent;border-left:0px solid transparent;}}@media all and (max-width: 1024px){.kt-accordion-id809_9f15c2-be > .kt-accordion-inner-wrap > .wp-block-kadence-pane > .kt-accordion-header-wrap > .kt-blocks-accordion-header{border-top-color:#f2f2f2;border-top-style:solid;border-right-color:#f2f2f2;border-right-style:solid;border-bottom-color:#f2f2f2;border-bottom-style:solid;border-left-color:#f2f2f2;border-left-style:solid;}}@media all and (max-width: 1024px){.kt-accordion-id809_9f15c2-be > .kt-accordion-inner-wrap > .wp-block-kadence-pane > .kt-accordion-header-wrap > .kt-blocks-accordion-header:hover, 
				body:not(.hide-focus-outline) .kt-accordion-id809_9f15c2-be .kt-blocks-accordion-header:focus-visible{border-top:1px solid #878787;border-right:1px solid #878787;border-bottom:1px solid #878787;border-left:1px solid #878787;}}@media all and (max-width: 1024px){.kt-accordion-id809_9f15c2-be .kt-accordion-header-wrap .kt-blocks-accordion-header:focus-visible,
				.kt-accordion-id809_9f15c2-be > .kt-accordion-inner-wrap > .wp-block-kadence-pane > .kt-accordion-header-wrap > .kt-blocks-accordion-header.kt-accordion-panel-active{border-top:1px solid #BE530B;border-right:1px solid #BE530B;border-bottom:1px solid #BE530B;border-left:1px solid #BE530B;}}@media all and (max-width: 767px){.kt-accordion-id809_9f15c2-be .kt-accordion-inner-wrap{display:block;}.kt-accordion-id809_9f15c2-be .kt-accordion-inner-wrap .kt-accordion-pane:not(:first-child){margin-top:10px;}.kt-accordion-id809_9f15c2-be .kt-accordion-panel-inner{border-top:0px solid transparent;border-right:0px solid transparent;border-bottom:0px solid transparent;border-left:0px solid transparent;}.kt-accordion-id809_9f15c2-be > .kt-accordion-inner-wrap > .wp-block-kadence-pane > .kt-accordion-header-wrap > .kt-blocks-accordion-header{border-top-color:#f2f2f2;border-top-style:solid;border-right-color:#f2f2f2;border-right-style:solid;border-bottom-color:#f2f2f2;border-bottom-style:solid;border-left-color:#f2f2f2;border-left-style:solid;}.kt-accordion-id809_9f15c2-be > .kt-accordion-inner-wrap > .wp-block-kadence-pane > .kt-accordion-header-wrap > .kt-blocks-accordion-header:hover, 
				body:not(.hide-focus-outline) .kt-accordion-id809_9f15c2-be .kt-blocks-accordion-header:focus-visible{border-top:1px solid #878787;border-right:1px solid #878787;border-bottom:1px solid #878787;border-left:1px solid #878787;}.kt-accordion-id809_9f15c2-be .kt-accordion-header-wrap .kt-blocks-accordion-header:focus-visible,
				.kt-accordion-id809_9f15c2-be > .kt-accordion-inner-wrap > .wp-block-kadence-pane > .kt-accordion-header-wrap > .kt-blocks-accordion-header.kt-accordion-panel-active{border-top:1px solid #BE530B;border-right:1px solid #BE530B;border-bottom:1px solid #BE530B;border-left:1px solid #BE530B;}}</style>
<div class="wp-block-kadence-accordion alignnone">
<div class="kt-accordion-wrap kt-accordion-id809_9f15c2-be kt-accordion-has-15-panes kt-active-pane-0 kt-accordion-block kt-pane-header-alignment-left kt-accodion-icon-style-basic kt-accodion-icon-side-right" style="max-width:none">
<div class="kt-accordion-inner-wrap" data-allow-multiple-open="false" data-start-open="0">
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-10 kt-pane809_58e671-8b">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong><strong><strong><strong><strong><strong><strong><strong>How many rides are there in Doha Quest?</strong></strong></strong></strong></strong></strong></strong></strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_184913-67, .wp-block-kadence-advancedheading.kt-adv-heading809_184913-67[data-kb-block="kb-adv-heading809_184913-67"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_184913-67 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_184913-67[data-kb-block="kb-adv-heading809_184913-67"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_184913-67 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_184913-67[data-kb-block="kb-adv-heading809_184913-67"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_184913-67 wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_184913-67">Doha Quest features over 30 rides and attractions, catering to toddlers, families, and thrill-seekers of all ages. To know more, check out the full list of our&nbsp;<a href="https://dohaquest.com/en/rides">rides and attractions</a>!</p>
</div>
</div>
</div>
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-1 kt-pane809_b0f0ef-fc">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong>How long do people usually stay?</strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_7eb1c7-96, .wp-block-kadence-advancedheading.kt-adv-heading809_7eb1c7-96[data-kb-block="kb-adv-heading809_7eb1c7-96"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_7eb1c7-96 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_7eb1c7-96[data-kb-block="kb-adv-heading809_7eb1c7-96"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_7eb1c7-96 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_7eb1c7-96[data-kb-block="kb-adv-heading809_7eb1c7-96"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_7eb1c7-96 wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_7eb1c7-96">Most visitors spend 3–4 hours exploring our indoor theme park in Doha to enjoy a mix of thrill rides, interactive zones, and Time Realms. There’s no rush &#8211; you’re free to explore at your own pace and make the day your own adventure!</p>
</div>
</div>
</div>
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-2 kt-pane809_392457-d3">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong>What are the age/height requirements?</strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_088daf-92, .wp-block-kadence-advancedheading.kt-adv-heading809_088daf-92[data-kb-block="kb-adv-heading809_088daf-92"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_088daf-92 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_088daf-92[data-kb-block="kb-adv-heading809_088daf-92"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_088daf-92 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_088daf-92[data-kb-block="kb-adv-heading809_088daf-92"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_088daf-92 wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_088daf-92">Each ride has its own safety criteria. For example, thrill rides such as EpiQ Coaster and Magma Blast require a minimum height of 140 cm for unaccompanied guests, and 130 cm for persons accompanied by an adult. Family rides such as the enchanting carousel are designed for riders aged 3+, with adult-accompanied options available. Exact requirements are posted on our&nbsp;<a href="https://dohaquest.com/en/rides">Rides page</a>.</p>
</div>
</div>
</div>
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-3 kt-pane809_f9382f-63">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong><strong>Do you offer birthday packages?</strong></strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_372544-3d, .wp-block-kadence-advancedheading.kt-adv-heading809_372544-3d[data-kb-block="kb-adv-heading809_372544-3d"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_372544-3d mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_372544-3d[data-kb-block="kb-adv-heading809_372544-3d"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_372544-3d img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_372544-3d[data-kb-block="kb-adv-heading809_372544-3d"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_372544-3d wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_372544-3d">Yes! We offer tailored birthday packages that include rides, themed decorations, cakes and special meals, and other special perks to make your child’s day unforgettable. To book, visit our&nbsp;<a href="https://dohaquest.com/en/celebrate">Celebrations page</a>.</p>
</div>
</div>
</div>
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-4 kt-pane809_0c7bf9-b4">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong><strong><strong>What is your refund policy?</strong></strong></strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_0cea1f-2f, .wp-block-kadence-advancedheading.kt-adv-heading809_0cea1f-2f[data-kb-block="kb-adv-heading809_0cea1f-2f"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_0cea1f-2f mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_0cea1f-2f[data-kb-block="kb-adv-heading809_0cea1f-2f"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_0cea1f-2f img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_0cea1f-2f[data-kb-block="kb-adv-heading809_0cea1f-2f"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_0cea1f-2f wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_0cea1f-2f">All ticket purchases are non-refundable and non-transferable, except in the case of an event cancellation by Doha Quest.</p>
<p>If you experience an issue with your booking or visit, please&nbsp;<a href="https://dohaquest.com/en/contact">contact our Guest Services team</a>&nbsp;as soon as possible — we’ll do our best to help.</p>
</div>
</div>
</div>
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-5 kt-pane809_bad15e-bc">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong><strong><strong><strong>Where is Doha Quest located?</strong></strong></strong></strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_40f69a-56, .wp-block-kadence-advancedheading.kt-adv-heading809_40f69a-56[data-kb-block="kb-adv-heading809_40f69a-56"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_40f69a-56 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_40f69a-56[data-kb-block="kb-adv-heading809_40f69a-56"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_40f69a-56 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_40f69a-56[data-kb-block="kb-adv-heading809_40f69a-56"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_40f69a-56 wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_40f69a-56">Doha Quest is located inside Doha Oasis, on Al Khaleej Street in Msheireb, Downtown Doha. We’re within walking distance of Msheireb Metro Station, and just minutes away from major hotels, Souq Waqif, and the Corniche. See&nbsp;<a href="https://dohaquest.com/en/contact">map and directions to Doha Quest here</a>.</p>
</div>
</div>
</div>
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-6 kt-pane809_72ec5d-fa">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong><strong><strong><strong><strong>Is Doha Quest an indoor theme park?</strong></strong></strong></strong></strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_573aa0-40, .wp-block-kadence-advancedheading.kt-adv-heading809_573aa0-40[data-kb-block="kb-adv-heading809_573aa0-40"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_573aa0-40 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_573aa0-40[data-kb-block="kb-adv-heading809_573aa0-40"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_573aa0-40 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_573aa0-40[data-kb-block="kb-adv-heading809_573aa0-40"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_573aa0-40 wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_573aa0-40">Yes! Doha Quest is Qatar’s first and largest indoor theme park, fully climate-controlled for year-round comfort.</p>
</div>
</div>
</div>
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-7 kt-pane809_097b76-8d">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong><strong><strong><strong><strong><strong>What is Doha Quest known for?</strong></strong></strong></strong></strong></strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_eb008a-a7, .wp-block-kadence-advancedheading.kt-adv-heading809_eb008a-a7[data-kb-block="kb-adv-heading809_eb008a-a7"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_eb008a-a7 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_eb008a-a7[data-kb-block="kb-adv-heading809_eb008a-a7"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_eb008a-a7 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_eb008a-a7[data-kb-block="kb-adv-heading809_eb008a-a7"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_eb008a-a7 wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_eb008a-a7">Doha Quest boasts the world’s tallest indoor roller coaster and drop tower, along with immersive rides and a combination of thrill, edutainment, and family fun. And let&#8217;s not forget iFLY Quest — the ultimate&nbsp;<a href="https://dohaquest.com/en/ifly">indoor skydiving</a>&nbsp;experience.</p>
</div>
</div>
</div>
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-8 kt-pane809_223fcf-a9">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong><strong><strong><strong><strong><strong><strong>Is there transportation available from major hotels or malls in Doha?</strong></strong></strong></strong></strong></strong></strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_8fe342-db, .wp-block-kadence-advancedheading.kt-adv-heading809_8fe342-db[data-kb-block="kb-adv-heading809_8fe342-db"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_8fe342-db mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_8fe342-db[data-kb-block="kb-adv-heading809_8fe342-db"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_8fe342-db img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_8fe342-db[data-kb-block="kb-adv-heading809_8fe342-db"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_8fe342-db wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_8fe342-db">We don’t offer direct shuttle services, but Doha Quest is conveniently accessible via taxi, rideshare, and especially the Doha Metro. Hop off at Msheireb Station — just a short walk away — and you’ll find Doha Quest in Doha Oasis</p>
</div>
</div>
</div>
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-9 kt-pane809_294586-89">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong><strong><strong><strong><strong><strong><strong><strong><strong>Are attractions accessible to children and families?</strong></strong></strong></strong></strong></strong></strong></strong></strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_a51774-ad, .wp-block-kadence-advancedheading.kt-adv-heading809_a51774-ad[data-kb-block="kb-adv-heading809_a51774-ad"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_a51774-ad mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_a51774-ad[data-kb-block="kb-adv-heading809_a51774-ad"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_a51774-ad img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_a51774-ad[data-kb-block="kb-adv-heading809_a51774-ad"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_a51774-ad wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_a51774-ad">Yes! The park includes a wide variety of attractions for kids, families, and adults. Some rides have height and safety restrictions, which are clearly displayed.</p>
</div>
</div>
</div>
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-11 kt-pane809_d070df-f9">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong>What types of food and dining options are available inside the park?</strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_b3481f-10, .wp-block-kadence-advancedheading.kt-adv-heading809_b3481f-10[data-kb-block="kb-adv-heading809_b3481f-10"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_b3481f-10 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_b3481f-10[data-kb-block="kb-adv-heading809_b3481f-10"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_b3481f-10 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_b3481f-10[data-kb-block="kb-adv-heading809_b3481f-10"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_b3481f-10 wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_b3481f-10">Doha Quest offers&nbsp;<a href="https://dohaquest.com/en/dine">casual dining and snack options</a>, including Quest Cafe, Sarab Kiosk and Space Cantina. Planet Hollywood Doha is also easily accessible through Quest grounds.</p>
</div>
</div>
</div>
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-12 kt-pane809_9a3b88-22">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong>Can I purchase official Doha Quest merchandise at the park?</strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_f02b09-ef, .wp-block-kadence-advancedheading.kt-adv-heading809_f02b09-ef[data-kb-block="kb-adv-heading809_f02b09-ef"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_f02b09-ef mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_f02b09-ef[data-kb-block="kb-adv-heading809_f02b09-ef"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_f02b09-ef img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_f02b09-ef[data-kb-block="kb-adv-heading809_f02b09-ef"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_f02b09-ef wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_f02b09-ef">Definitely! Our Time Quest retail store offers exclusive Doha Quest merchandise, apparel, souvenirs, and gifts. You can also&nbsp;<a href="https://store.dohaquest.com/">shop cool Quest gear online</a>.</p>
</div>
</div>
</div>
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-13 kt-pane809_0e7cb8-f3">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong>What are the ticket types and admission policies?</strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_3503b3-ee, .wp-block-kadence-advancedheading.kt-adv-heading809_3503b3-ee[data-kb-block="kb-adv-heading809_3503b3-ee"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_3503b3-ee mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_3503b3-ee[data-kb-block="kb-adv-heading809_3503b3-ee"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_3503b3-ee img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_3503b3-ee[data-kb-block="kb-adv-heading809_3503b3-ee"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_3503b3-ee wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_3503b3-ee">We offer the following General Admission tickets:</p>
<p>Adults (13 years and up): QAR 235)<br />Juniors (4 to 12 years): QAR 160<br />Children under 4: Free to enter</p>
<p>Want to skip queues on specific rides? For an additional QAR 100, you can purchase a Time Portal fast-track ticket.</p>
</div>
</div>
</div>
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-14 kt-pane809_bb6b82-6a">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong>Is there parking available at Doha Oasis for Doha Quest visitors?</strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_7fa446-b4, .wp-block-kadence-advancedheading.kt-adv-heading809_7fa446-b4[data-kb-block="kb-adv-heading809_7fa446-b4"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_7fa446-b4 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_7fa446-b4[data-kb-block="kb-adv-heading809_7fa446-b4"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_7fa446-b4 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_7fa446-b4[data-kb-block="kb-adv-heading809_7fa446-b4"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_7fa446-b4 wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_7fa446-b4">Yes, ample underground parking is available at Doha Oasis, with direct access to Doha Quest via elevators and escalators.</p>
<p>Don’t forget to get your parking ticket stamped at the Quest Info Desk to enjoy free parking.</p>
</div>
</div>
</div>
<div class="wp-block-kadence-pane kt-accordion-pane kt-accordion-pane-15 kt-pane809_0369fd-86">
<div class="kt-accordion-header-wrap"><button class="kt-blocks-accordion-header kt-acccordion-button-label-show" type="button"><span class="kt-blocks-accordion-title-wrap"><span class="kt-blocks-accordion-title"><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong>How can I apply for a job or learn about careers at Doha Quest?</strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></span></span><span class="kt-blocks-accordion-icon-trigger"></span></button></div>
<div class="kt-accordion-panel kt-accordion-panel-hidden">
<div class="kt-accordion-panel-inner">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_ed0797-ca, .wp-block-kadence-advancedheading.kt-adv-heading809_ed0797-ca[data-kb-block="kb-adv-heading809_ed0797-ca"]{font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_ed0797-ca mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_ed0797-ca[data-kb-block="kb-adv-heading809_ed0797-ca"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_ed0797-ca img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_ed0797-ca[data-kb-block="kb-adv-heading809_ed0797-ca"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<p class="kt-adv-heading809_ed0797-ca wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_ed0797-ca">We’re always on the lookout for passionate and talented individuals to join our team.</p>
<p>To explore career opportunities, please visit the Careers section on our website or send your CV to&nbsp;<a href="mailto:careers@dohaquest.com">careers@dohaquest.com</a>.</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<style>.kadence-column809_71ddb6-a5 > .kt-inside-inner-col,.kadence-column809_71ddb6-a5 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_71ddb6-a5 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_71ddb6-a5 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_71ddb6-a5 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_71ddb6-a5 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_71ddb6-a5{position:relative;}@media all and (max-width: 1024px){.kadence-column809_71ddb6-a5 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_71ddb6-a5 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_71ddb6-a5">
<div class="kt-inside-inner-col"></div>
</div>
</div>
</div>
<style>.kb-row-layout-id809_840333-c4 > .kt-row-column-wrap{align-content:start;}:where(.kb-row-layout-id809_840333-c4 > .kt-row-column-wrap) > .wp-block-kadence-column{justify-content:start;}.kb-row-layout-id809_840333-c4 > .kt-row-column-wrap{column-gap:var(--global-kb-gap-md, 2rem);row-gap:var(--global-kb-gap-md, 2rem);padding-top:var(--global-kb-spacing-sm, 1.5rem);padding-bottom:var(--global-kb-spacing-sm, 1.5rem);}.kb-row-layout-id809_840333-c4 > .kt-row-column-wrap > div:not(.added-for-specificity){grid-column:initial;}.kb-row-layout-id809_840333-c4 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr) minmax(0, 2fr) minmax(0, 1fr);}.kb-row-layout-id809_840333-c4 > .kt-row-layout-overlay{opacity:0.30;}@media all and (max-width: 1024px){.kb-row-layout-id809_840333-c4 > .kt-row-column-wrap > div:not(.added-for-specificity){grid-column:initial;}}@media all and (max-width: 1024px){.kb-row-layout-id809_840333-c4 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr) minmax(0, 2fr) minmax(0, 1fr);}}@media all and (max-width: 767px){.kb-row-layout-id809_840333-c4 > .kt-row-column-wrap > div:not(.added-for-specificity){grid-column:initial;}.kb-row-layout-id809_840333-c4 > .kt-row-column-wrap{grid-template-columns:minmax(0, 1fr);}}</style>
<div class="kb-row-layout-wrap kb-row-layout-id809_840333-c4 alignnone wp-block-kadence-rowlayout" id="Contactus">
<div class="kt-row-column-wrap kt-has-3-columns kt-row-layout-center-half kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-top">
<style>.kadence-column809_462062-e3 > .kt-inside-inner-col,.kadence-column809_462062-e3 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_462062-e3 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_462062-e3 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_462062-e3 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_462062-e3 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_462062-e3{position:relative;}@media all and (max-width: 1024px){.kadence-column809_462062-e3 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_462062-e3 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_462062-e3">
<div class="kt-inside-inner-col"></div>
</div>
<style>.kadence-column809_645b40-a5 > .kt-inside-inner-col,.kadence-column809_645b40-a5 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_645b40-a5 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_645b40-a5 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_645b40-a5 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_645b40-a5 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_645b40-a5{position:relative;}@media all and (max-width: 1024px){.kadence-column809_645b40-a5 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_645b40-a5 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_645b40-a5">
<div class="kt-inside-inner-col">
<style>.wp-block-kadence-advancedheading.kt-adv-heading809_5b2459-93, .wp-block-kadence-advancedheading.kt-adv-heading809_5b2459-93[data-kb-block="kb-adv-heading809_5b2459-93"]{text-align:center;font-style:normal;}.wp-block-kadence-advancedheading.kt-adv-heading809_5b2459-93 mark.kt-highlight, .wp-block-kadence-advancedheading.kt-adv-heading809_5b2459-93[data-kb-block="kb-adv-heading809_5b2459-93"] mark.kt-highlight{font-style:normal;color:#f76a0c;-webkit-box-decoration-break:clone;box-decoration-break:clone;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;}.wp-block-kadence-advancedheading.kt-adv-heading809_5b2459-93 img.kb-inline-image, .wp-block-kadence-advancedheading.kt-adv-heading809_5b2459-93[data-kb-block="kb-adv-heading809_5b2459-93"] img.kb-inline-image{width:150px;vertical-align:baseline;}</style>
<h2 class="kt-adv-heading809_5b2459-93 wp-block-kadence-advancedheading" data-kb-block="kb-adv-heading809_5b2459-93">Reach Out to Us</h2>
<p><div class="forminator-ui forminator-custom-form forminator-custom-form-1141 forminator-design--default  forminator_ajax" data-forminator-render="1" data-form="forminator-module-1141" data-uid="6a3df58d03de0"></div>
<form
				id="forminator-module-1141"
				class="forminator-ui forminator-custom-form forminator-custom-form-1141 forminator-design--default  forminator_ajax"
				method="post"
				data-forminator-render="1"
				data-form-id="1141"
				 data-color-option="theme" data-design="default" data-grid="open" style="display: none;"
				data-uid="6a3df58d03de0"
			></p>
<div role="alert" aria-live="polite" class="forminator-response-message forminator-error" aria-hidden="true"></div>
<div class="forminator-row">
<div id="name-1" class="forminator-field-name forminator-col forminator-col-12 ">
<div class="forminator-field"><label for="forminator-field-name-1_6a3df58d03de0" id="forminator-field-name-1_6a3df58d03de0-label" class="forminator-label">First Name <span class="forminator-required">*</span></label><input type="text" name="name-1" value="" placeholder="" id="forminator-field-name-1_6a3df58d03de0" class="forminator-input forminator-name--field" aria-required="true" autocomplete="name" /></div>
</div>
</div>
<div class="forminator-row">
<div id="name-2" class="forminator-field-name forminator-col forminator-col-12 ">
<div class="forminator-field"><label for="forminator-field-name-2_6a3df58d03de0" id="forminator-field-name-2_6a3df58d03de0-label" class="forminator-label">Last Name <span class="forminator-required">*</span></label><input type="text" name="name-2" value="" placeholder="" id="forminator-field-name-2_6a3df58d03de0" class="forminator-input forminator-name--field" aria-required="true" autocomplete="name" /></div>
</div>
</div>
<div class="forminator-row">
<div id="email-1" class="forminator-field-email forminator-col forminator-col-6 ">
<div class="forminator-field"><label for="forminator-field-email-1_6a3df58d03de0" id="forminator-field-email-1_6a3df58d03de0-label" class="forminator-label">Email Address <span class="forminator-required">*</span></label><input type="email" name="email-1" value="" placeholder="" id="forminator-field-email-1_6a3df58d03de0" class="forminator-input forminator-email--field" data-required="true" aria-required="true" autocomplete="email" /></div>
</div>
<div id="phone-1" class="forminator-field-phone forminator-col forminator-col-6 ">
<div class="forminator-field"><label for="forminator-field-phone-1_6a3df58d03de0" id="forminator-field-phone-1_6a3df58d03de0-label" class="forminator-label">Phone Number</label><input type="text" name="phone-1" value="" placeholder="" id="forminator-field-phone-1_6a3df58d03de0" class="forminator-input forminator-field--phone" data-required="" aria-required="false" autocomplete="off" /></div>
</div>
</div>
<div class="forminator-row">
<div id="select-1" class="forminator-field-select forminator-col forminator-col-12 ">
<div class="forminator-field"><label for="forminator-form-1141__field--select-1_6a3df58d03de0" id="forminator-form-1141__field--select-1_6a3df58d03de0-label" class="forminator-label">Country of Residence <span class="forminator-required">*</span></label><select  id="forminator-form-1141__field--select-1_6a3df58d03de0" class="forminator-select--field forminator-select2 forminator-select2-multiple" data-required="1" name="select-1" data-default-value="" data-hidden-behavior="zero" data-placeholder="Select" data-search="true" data-search-placeholder="Select" data-checkbox="false" data-allow-clear="false" aria-labelledby="forminator-form-1141__field--select-1_6a3df58d03de0-label"><option value=""  >Select</option><option value="Afghanistan"  data-calculation="0">Afghanistan</option><option value="Albania"  data-calculation="0">Albania</option><option value="Algeria"  data-calculation="0">Algeria</option><option value="Andorra"  data-calculation="0">Andorra</option><option value="Angola"  data-calculation="0">Angola</option><option value="Argentina"  data-calculation="0">Argentina</option><option value="Armenia"  data-calculation="0">Armenia</option><option value="Australia"  data-calculation="0">Australia</option><option value="Austria"  data-calculation="0">Austria</option><option value="Azerbaijan"  data-calculation="0">Azerbaijan</option><option value="Bahamas"  data-calculation="0">Bahamas</option><option value="Bahrain"  data-calculation="0">Bahrain</option><option value="Bangladesh"  data-calculation="0">Bangladesh</option><option value="Barbados"  data-calculation="0">Barbados</option><option value="Belarus"  data-calculation="0">Belarus</option><option value="Belgium"  data-calculation="0">Belgium</option><option value="Belize"  data-calculation="0">Belize</option><option value="Benin"  data-calculation="0">Benin</option><option value="Bhutan"  data-calculation="0">Bhutan</option><option value="Bolivia"  data-calculation="0">Bolivia</option><option value="Bosnia and Herzegovina"  data-calculation="0">Bosnia and Herzegovina</option><option value="Botswana"  data-calculation="0">Botswana</option><option value="Brazil"  data-calculation="0">Brazil</option><option value="Brunei"  data-calculation="0">Brunei</option><option value="Bulgaria"  data-calculation="0">Bulgaria</option><option value="Burkina Faso"  data-calculation="0">Burkina Faso</option><option value="Burundi"  data-calculation="0">Burundi</option><option value="Cambodia"  data-calculation="0">Cambodia</option><option value="Cameroon"  data-calculation="0">Cameroon</option><option value="Canada"  data-calculation="0">Canada</option><option value="Cape Verde"  data-calculation="0">Cape Verde</option><option value="Central African Republic"  data-calculation="0">Central African Republic</option><option value="Chad"  data-calculation="0">Chad</option><option value="Chile"  data-calculation="0">Chile</option><option value="China"  data-calculation="0">China</option><option value="Colombia"  data-calculation="0">Colombia</option><option value="Comoros"  data-calculation="0">Comoros</option><option value="Congo"  data-calculation="0">Congo</option><option value="Costa Rica"  data-calculation="0">Costa Rica</option><option value="Croatia"  data-calculation="0">Croatia</option><option value="Cuba"  data-calculation="0">Cuba</option><option value="Cyprus"  data-calculation="0">Cyprus</option><option value="Czech Republic"  data-calculation="0">Czech Republic</option><option value="Denmark"  data-calculation="0">Denmark</option><option value="Djibouti"  data-calculation="0">Djibouti</option><option value="Dominica"  data-calculation="0">Dominica</option><option value="Dominican Republic"  data-calculation="0">Dominican Republic</option><option value="Ecuador"  data-calculation="0">Ecuador</option><option value="Egypt"  data-calculation="0">Egypt</option><option value="El Salvador"  data-calculation="0">El Salvador</option><option value="Equatorial Guinea"  data-calculation="0">Equatorial Guinea</option><option value="Eritrea"  data-calculation="0">Eritrea</option><option value="Estonia"  data-calculation="0">Estonia</option><option value="Eswatini"  data-calculation="0">Eswatini</option><option value="Ethiopia"  data-calculation="0">Ethiopia</option><option value="Fiji"  data-calculation="0">Fiji</option><option value="Finland"  data-calculation="0">Finland</option><option value="France"  data-calculation="0">France</option><option value="Gabon"  data-calculation="0">Gabon</option><option value="Gambia"  data-calculation="0">Gambia</option><option value="Georgia"  data-calculation="0">Georgia</option><option value="Germany"  data-calculation="0">Germany</option><option value="Ghana"  data-calculation="0">Ghana</option><option value="Greece"  data-calculation="0">Greece</option><option value="Grenada"  data-calculation="0">Grenada</option><option value="Guatemala"  data-calculation="0">Guatemala</option><option value="Guinea"  data-calculation="0">Guinea</option><option value="Guinea-Bissau"  data-calculation="0">Guinea-Bissau</option><option value="Guyana"  data-calculation="0">Guyana</option><option value="Haiti"  data-calculation="0">Haiti</option><option value="Honduras"  data-calculation="0">Honduras</option><option value="Hungary"  data-calculation="0">Hungary</option><option value="Iceland"  data-calculation="0">Iceland</option><option value="India"  data-calculation="0">India</option><option value="Indonesia"  data-calculation="0">Indonesia</option><option value="Iran"  data-calculation="0">Iran</option><option value="Iraq"  data-calculation="0">Iraq</option><option value="Ireland"  data-calculation="0">Ireland</option><option value="Israel"  data-calculation="0">Israel</option><option value="Italy"  data-calculation="0">Italy</option><option value="Jamaica"  data-calculation="0">Jamaica</option><option value="Japan"  data-calculation="0">Japan</option><option value="Jordan"  data-calculation="0">Jordan</option><option value="Kazakhstan"  data-calculation="0">Kazakhstan</option><option value="Kenya"  data-calculation="0">Kenya</option><option value="Kiribati"  data-calculation="0">Kiribati</option><option value="Kuwait"  data-calculation="0">Kuwait</option><option value="Kyrgyzstan"  data-calculation="0">Kyrgyzstan</option><option value="Laos"  data-calculation="0">Laos</option><option value="Latvia"  data-calculation="0">Latvia</option><option value="Lebanon"  data-calculation="0">Lebanon</option><option value="Lesotho"  data-calculation="0">Lesotho</option><option value="Liberia"  data-calculation="0">Liberia</option><option value="Libya"  data-calculation="0">Libya</option><option value="Liechtenstein"  data-calculation="0">Liechtenstein</option><option value="Lithuania"  data-calculation="0">Lithuania</option><option value="Luxembourg"  data-calculation="0">Luxembourg</option><option value="Madagascar"  data-calculation="0">Madagascar</option><option value="Malawi"  data-calculation="0">Malawi</option><option value="Malaysia"  data-calculation="0">Malaysia</option><option value="Maldives"  data-calculation="0">Maldives</option><option value="Mali"  data-calculation="0">Mali</option><option value="Malta"  data-calculation="0">Malta</option><option value="Marshall Islands"  data-calculation="0">Marshall Islands</option><option value="Mauritania"  data-calculation="0">Mauritania</option><option value="Mauritius"  data-calculation="0">Mauritius</option><option value="Mexico"  data-calculation="0">Mexico</option><option value="Micronesia"  data-calculation="0">Micronesia</option><option value="Moldova"  data-calculation="0">Moldova</option><option value="Monaco"  data-calculation="0">Monaco</option><option value="Mongolia"  data-calculation="0">Mongolia</option><option value="Montenegro"  data-calculation="0">Montenegro</option><option value="Morocco"  data-calculation="0">Morocco</option><option value="Mozambique"  data-calculation="0">Mozambique</option><option value="Myanmar"  data-calculation="0">Myanmar</option><option value="Namibia"  data-calculation="0">Namibia</option><option value="Nauru"  data-calculation="0">Nauru</option><option value="Nepal"  data-calculation="0">Nepal</option><option value="Netherlands"  data-calculation="0">Netherlands</option><option value="New Zealand"  data-calculation="0">New Zealand</option><option value="Nicaragua"  data-calculation="0">Nicaragua</option><option value="Niger"  data-calculation="0">Niger</option><option value="Nigeria"  data-calculation="0">Nigeria</option><option value="North Korea"  data-calculation="0">North Korea</option><option value="North Macedonia"  data-calculation="0">North Macedonia</option><option value="Norway"  data-calculation="0">Norway</option><option value="Oman"  data-calculation="0">Oman</option><option value="Pakistan"  data-calculation="0">Pakistan</option><option value="Palau"  data-calculation="0">Palau</option><option value="Panama"  data-calculation="0">Panama</option><option value="Papua New Guinea"  data-calculation="0">Papua New Guinea</option><option value="Paraguay"  data-calculation="0">Paraguay</option><option value="Peru"  data-calculation="0">Peru</option><option value="Philippines"  data-calculation="0">Philippines</option><option value="Poland"  data-calculation="0">Poland</option><option value="Portugal"  data-calculation="0">Portugal</option><option value="Qatar"  data-calculation="0">Qatar</option><option value="Romania"  data-calculation="0">Romania</option><option value="Russia"  data-calculation="0">Russia</option><option value="Rwanda"  data-calculation="0">Rwanda</option><option value="Saint Kitts and Nevis"  data-calculation="0">Saint Kitts and Nevis</option><option value="Saint Lucia"  data-calculation="0">Saint Lucia</option><option value="Saint Vincent and the Grenadines"  data-calculation="0">Saint Vincent and the Grenadines</option><option value="Samoa"  data-calculation="0">Samoa</option><option value="San Marino"  data-calculation="0">San Marino</option><option value="Sao Tome and Principe"  data-calculation="0">Sao Tome and Principe</option><option value="Saudi Arabia"  data-calculation="0">Saudi Arabia</option><option value="Senegal"  data-calculation="0">Senegal</option><option value="Serbia"  data-calculation="0">Serbia</option><option value="Seychelles"  data-calculation="0">Seychelles</option><option value="Sierra Leone"  data-calculation="0">Sierra Leone</option><option value="Singapore"  data-calculation="0">Singapore</option><option value="Slovakia"  data-calculation="0">Slovakia</option><option value="Slovenia"  data-calculation="0">Slovenia</option><option value="Solomon Islands"  data-calculation="0">Solomon Islands</option><option value="Somalia"  data-calculation="0">Somalia</option><option value="South Africa"  data-calculation="0">South Africa</option><option value="South Korea"  data-calculation="0">South Korea</option><option value="South Sudan"  data-calculation="0">South Sudan</option><option value="Spain"  data-calculation="0">Spain</option><option value="Sri Lanka"  data-calculation="0">Sri Lanka</option><option value="Sudan"  data-calculation="0">Sudan</option><option value="Suriname"  data-calculation="0">Suriname</option><option value="Sweden"  data-calculation="0">Sweden</option><option value="Switzerland"  data-calculation="0">Switzerland</option><option value="Syria"  data-calculation="0">Syria</option><option value="Taiwan"  data-calculation="0">Taiwan</option><option value="Tajikistan"  data-calculation="0">Tajikistan</option><option value="Tanzania"  data-calculation="0">Tanzania</option><option value="Thailand"  data-calculation="0">Thailand</option><option value="Timor-Leste"  data-calculation="0">Timor-Leste</option><option value="Togo"  data-calculation="0">Togo</option><option value="Tonga"  data-calculation="0">Tonga</option><option value="Trinidad and Tobago"  data-calculation="0">Trinidad and Tobago</option><option value="Tunisia"  data-calculation="0">Tunisia</option><option value="Turkey"  data-calculation="0">Turkey</option><option value="Turkmenistan"  data-calculation="0">Turkmenistan</option><option value="Tuvalu"  data-calculation="0">Tuvalu</option><option value="Uganda"  data-calculation="0">Uganda</option><option value="Ukraine"  data-calculation="0">Ukraine</option><option value="United Arab Emirates"  data-calculation="0">United Arab Emirates</option><option value="United Kingdom"  data-calculation="0">United Kingdom</option><option value="United States"  data-calculation="0">United States</option><option value="Uruguay"  data-calculation="0">Uruguay</option><option value="Uzbekistan"  data-calculation="0">Uzbekistan</option><option value="Vanuatu"  data-calculation="0">Vanuatu</option><option value="Vatican City"  data-calculation="0">Vatican City</option><option value="Venezuela"  data-calculation="0">Venezuela</option><option value="Vietnam"  data-calculation="0">Vietnam</option><option value="Yemen"  data-calculation="0">Yemen</option><option value="Zambia"  data-calculation="0">Zambia</option><option value="Zimbabwe"  data-calculation="0">Zimbabwe</option></select></div>
</div>
</div>
<div class="forminator-row">
<div id="text-1" class="forminator-field-text forminator-col forminator-col-12 ">
<div class="forminator-field"><label for="forminator-field-text-1_6a3df58d03de0" id="forminator-field-text-1_6a3df58d03de0-label" class="forminator-label">Purpose of Contact</label><input type="text" name="text-1" value="" placeholder="" id="forminator-field-text-1_6a3df58d03de0" class="forminator-input forminator-name--field" data-required="" /></div>
</div>
</div>
<div class="forminator-row">
<div id="textarea-1" class="forminator-field-textarea forminator-col forminator-col-12 ">
<div class="forminator-field"><label for="forminator-field-textarea-1_6a3df58d03de0" id="forminator-field-textarea-1_6a3df58d03de0-label" class="forminator-label">Message</label><span id="forminator-field-textarea-1_6a3df58d03de0-description" class="forminator-description"><span data-limit="180" data-type="characters" data-editor="">0 / 180</span></span><textarea name="textarea-1" placeholder="" id="forminator-field-textarea-1_6a3df58d03de0" class="forminator-textarea" rows="6" style="--forminator-textarea-min-height:140px;" maxlength="180" ></textarea></div>
</div>
</div>
<p><input type="hidden" name="referer_url" value="" /></p>
<div class="forminator-row forminator-row-last">
<div class="forminator-col">
<div class="forminator-field"><button class="forminator-button forminator-button-submit quest-default">Submit</button></div>
</div>
</div>
<p><input type="hidden" id="forminator_nonce" name="forminator_nonce" value="368696068e" /><input type="hidden" name="_wp_http_referer" value="/wp-json/wp/v2/pages?per_page=100&#038;_fields=id%2Cslug%2Ctitle%2Ccontent%2Cstatus%2Cparent%2Cmenu_order" /><input type="hidden" name="form_id" value="1141"><input type="hidden" name="page_id" value="809"><input type="hidden" name="form_type" value="default"><input type="hidden" name="current_url" value="https://bookings.dohaquest.com/overview/"><input type="hidden" name="render_id" value="1"><input type="hidden" name="action" value="forminator_submit_form_custom-forms"></form>
</p>
</div>
</div>
<style>.kadence-column809_b1c3a2-58 > .kt-inside-inner-col,.kadence-column809_b1c3a2-58 > .kt-inside-inner-col:before{border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;}.kadence-column809_b1c3a2-58 > .kt-inside-inner-col{column-gap:var(--global-kb-gap-sm, 1rem);}.kadence-column809_b1c3a2-58 > .kt-inside-inner-col{flex-direction:column;}.kadence-column809_b1c3a2-58 > .kt-inside-inner-col > .aligncenter{width:100%;}.kadence-column809_b1c3a2-58 > .kt-inside-inner-col:before{opacity:0.3;}.kadence-column809_b1c3a2-58{position:relative;}@media all and (max-width: 1024px){.kadence-column809_b1c3a2-58 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}@media all and (max-width: 767px){.kadence-column809_b1c3a2-58 > .kt-inside-inner-col{flex-direction:column;justify-content:center;}}</style>
<div class="wp-block-kadence-column kadence-column809_b1c3a2-58">
<div class="kt-inside-inner-col"></div>
</div>
</div>
</div>
', 'Ticket_testpage', '', 'publish', 'closed', 'closed', '', 'testpage', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?page_id=809', 0, 'page', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(186, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '<div class="mb-4 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
<div class="rich-textbox">
<h1><strong><u>Ticket policy:</u></strong></h1>
<p>1. Persons between the age of 4 and 12 are considered “Junior” and can access the park with the purchase of a Junior General Admission ticket.</p>
<p>2. Persons of the age of 13 and above are considered “Adult” and can access the park with the purchase of an Adult General Admission ticket.</p>
<p>3. Children that are 3 years old and under can enter the Park for free.</p>
<p>4. All prices are subject to change without prior notice</p>
<p>5. Government-issued photo ID is required as proof of age and identity.</p>
<p>6. Tickets purchased on this Website (dohaquest.com) will be sent via email to the email address provided by the purchaser. If this email is not received, please contact us on +974 4410 3444</p>
<p>7. Guests will need to present the original ticket or online eticket at either entrance counter to access the Park.</p>
<p>8. Tickets grant general admission to one person per ticket only.</p>
<p>9. Tickets are only valid on the selected date.</p>
<p>10. General Admission tickets may not be valid for special events that require a separate admission charge.</p>
<p>11. Tickets are void if they are expired, already scanned, or tampered with.</p>
<p>12. Duplicating, reprinting, or reselling tickets is strictly prohibited. Violations will be subject to legal liability.</p>
<p>13. By purchasing a ticket, Guests are deemed to have accepted all Park terms and conditions.</p>
<h2><u><strong>Cancellation policy:</strong></u></h2>
<p>14. Tickets are non-refundable and non-exchangeable, even in cases of cancellations and/or no-shows.</p>
<p><u><strong>General Terms &amp; Conditions:</strong></u></p>
<p>15. Food, drinks, and illicit items are not allowed in the park.</p>
<p>16. Opening hours are subject to change without prior notice.</p>
<p>17. Rides, attractions, and associated facilities may be closed, under maintenance, delayed, or suspended without prior notice and indemnity to the guest.</p>
<p>18. Restaurants may be closed, under maintenance, or undergo change in working hours without prior notice and indemnity to the guest.</p>
<p>19. All Guests must comply with the Park’s health and safety measures, and with each ride and attraction’s requirements and restrictions.</p>
<p>20. Quest will not be held liable for any loss, injury or damage sustained in the Park.</p>
<p>21. We reserve the right to refuse the admission of any Guest for valid safety, cultural, behavioral reasons.</p>
<p>22. Guests under 14 years must be accompanied by a paying adult of at least 18 years old to allow access or admission.</p>
<p>23. Other terms and conditions apply</p>
</div>
</div>
', 'Terms And Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?page_id=186', 0, 'page', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(79, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '		<div data-elementor-type="wp-page" data-elementor-id="79" class="elementor elementor-79">
				<div class="elementor-element elementor-element-3b56420 e-con-full e-flex e-con e-parent" data-id="3b56420" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-ac0b4ab elementor-widget elementor-widget-video" data-id="ac0b4ab" data-element_type="widget" data-e-type="widget" data-settings="{&quot;video_type&quot;:&quot;hosted&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;play_on_mobile&quot;:&quot;yes&quot;,&quot;mute&quot;:&quot;yes&quot;,&quot;loop&quot;:&quot;yes&quot;,&quot;controls&quot;:&quot;yes&quot;}" data-widget_type="video.default">
							<div class="e-hosted-video elementor-wrapper elementor-open-inline">
					<video class="elementor-video" src="https://bookings.dohaquest.com/wp-content/uploads/2026/05/doha-quest-intro.mp4" autoplay="" loop="" controls="" muted="muted" playsinline="" controlsList="nodownload"></video>
				</div>
						</div>
				</div>
		<div class="elementor-element elementor-element-083e442 e-flex e-con-boxed e-con e-parent" data-id="083e442" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-c87ac54 elementor-widget elementor-widget-shortcode" data-id="c87ac54" data-element_type="widget" data-e-type="widget" data-widget_type="shortcode.default">
							<div class="elementor-shortcode"><div class="woocommerce"></div></div>
						</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-1aafcb3 e-flex e-con-boxed e-con e-parent" data-id="1aafcb3" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-a20fa04 e-con-full e-flex e-con e-child" data-id="a20fa04" data-element_type="container" data-e-type="container">
		<div class="elementor-element elementor-element-76eb6a0 e-con-full e-flex e-con e-child" data-id="76eb6a0" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-1b7f657 elementor-view-default elementor-widget elementor-widget-icon" data-id="1b7f657" data-element_type="widget" data-e-type="widget" data-widget_type="icon.default">
							<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg aria-hidden="true" class="e-font-icon-svg e-fas-location-arrow" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M444.52 3.52L28.74 195.42c-47.97 22.39-31.98 92.75 19.19 92.75h175.91v175.91c0 51.17 70.36 67.17 92.75 19.19l191.9-415.78c15.99-38.39-25.59-79.97-63.97-63.97z"></path></svg>			</div>
		</div>
						</div>
				<div class="elementor-element elementor-element-8833338 e-con e-atomic-element e-div-block-base" data-id="8833338" data-element_type="e-div-block" data-e-type="e-div-block" data-interaction-id="8833338">
				<div class="elementor-element elementor-element-5ad107e elementor-widget elementor-widget-heading" data-id="5ad107e" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h2 class="elementor-heading-title elementor-size-default">Drop a visit</h2>				</div>
								<p class="e-ce81241-cc9766e e-paragraph-base" data-interaction-id="ce81241"  >
								Al Khaleej Street, Doha Oasis Gate 2, Msheireb
					</p>
				</div>
				</div>
		<div class="elementor-element elementor-element-a1935b5 e-con-full e-flex e-con e-child" data-id="a1935b5" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-6f79e73 elementor-view-default elementor-widget elementor-widget-icon" data-id="6f79e73" data-element_type="widget" data-e-type="widget" data-widget_type="icon.default">
							<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg class="ekit-svg-icon icon-mail" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><path d="M31.977 13.216c-0-0.384-0.151-0.745-0.423-1.016s-0.632-0.42-1.015-0.42c-0.001 0-0.001 0-0.002 0l-29.101 0.040c-0.384 0.001-0.745 0.151-1.016 0.423s-0.42 0.633-0.42 1.017l0.023 16.445c0.001 0.792 0.646 1.436 1.438 1.436 0.001 0 0.001 0 0.002 0l29.101-0.040c0.384-0 0.745-0.151 1.016-0.423s0.42-0.633 0.42-1.017l-0.023-16.445zM28.959 13.22l-12.957 9.008-12.983-8.972 25.941-0.036zM21.403 23.671l7.728 5.994-26.284 0.036 7.774-6.030c0.314-0.243 0.371-0.695 0.127-1.009s-0.695-0.371-1.009-0.127l-8.28 6.423-0.021-15.045 14.155 9.782c0.123 0.085 0.266 0.128 0.409 0.128s0.287-0.043 0.41-0.129l14.127-9.821 0.022 15.082-8.277-6.42c-0.314-0.243-0.765-0.186-1.009 0.128s-0.186 0.765 0.127 1.009zM19.407 4.298l-2.616-2.337c-0.451-0.403-1.131-0.403-1.582 0l-2.616 2.337c-0.296 0.265-0.322 0.719-0.057 1.015s0.719 0.322 1.015 0.057l1.73-1.545v5.542c0 0.397 0.322 0.719 0.719 0.719s0.719-0.322 0.719-0.719v-5.542l1.73 1.545c0.137 0.122 0.308 0.183 0.479 0.183 0.198 0 0.395-0.081 0.537-0.24 0.265-0.296 0.239-0.751-0.057-1.015z"></path></svg>			</div>
		</div>
						</div>
				<div class="elementor-element elementor-element-4bda410 e-con e-atomic-element e-div-block-base" data-id="4bda410" data-element_type="e-div-block" data-e-type="e-div-block" data-interaction-id="4bda410">
				<div class="elementor-element elementor-element-46a5393 elementor-widget elementor-widget-heading" data-id="46a5393" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h2 class="elementor-heading-title elementor-size-default">Email us</h2>				</div>
								<p class="e-0958ade-c577739 e-paragraph-base" data-interaction-id="0958ade"  >
								<a target="_blank" href="mailto:sales@dohaquest.com">sales@dohaquest.com</a>
					</p>
				</div>
				</div>
		<div class="elementor-element elementor-element-c4dca41 e-con-full e-flex e-con e-child" data-id="c4dca41" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-35b3bd3 elementor-view-default elementor-widget elementor-widget-icon" data-id="35b3bd3" data-element_type="widget" data-e-type="widget" data-widget_type="icon.default">
							<div class="elementor-icon-wrapper">
			<div class="elementor-icon">
			<svg aria-hidden="true" class="e-font-icon-svg e-fas-phone" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M493.4 24.6l-104-24c-11.3-2.6-22.9 3.3-27.5 13.9l-48 112c-4.2 9.8-1.4 21.3 6.9 28l60.6 49.6c-36 76.7-98.9 140.5-177.2 177.2l-49.6-60.6c-6.8-8.3-18.2-11.1-28-6.9l-112 48C3.9 366.5-2 378.1.6 389.4l24 104C27.1 504.2 36.7 512 48 512c256.1 0 464-207.5 464-464 0-11.2-7.7-20.9-18.6-23.4z"></path></svg>			</div>
		</div>
						</div>
				<div class="elementor-element elementor-element-108e10b e-con e-atomic-element e-div-block-base" data-id="108e10b" data-element_type="e-div-block" data-e-type="e-div-block" data-interaction-id="108e10b">
				<div class="elementor-element elementor-element-6459121 elementor-widget elementor-widget-heading" data-id="6459121" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h2 class="elementor-heading-title elementor-size-default">Reach us on</h2>				</div>
								<p class="e-b65d113-6e82c03 e-paragraph-base" data-interaction-id="b65d113"  >
								WhatsApp or Mobile: +974 5096 1834
					</p>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-6390caf e-con-full e-flex e-con e-child" data-id="6390caf" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-f632995 elementor-widget elementor-widget-google_maps" data-id="f632995" data-element_type="widget" data-e-type="widget" data-widget_type="google_maps.default">
							<div class="elementor-custom-embed">
			<iframe loading="lazy"
					src="https://maps.google.com/maps?q=Doha%20Quest&#038;t=m&#038;z=16&#038;output=embed&#038;iwloc=near"
					title="Doha Quest"
					aria-label="Doha Quest"
			></iframe>
		</div>
						</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-020476b e-flex e-con-boxed e-con e-parent" data-id="020476b" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-45c3442 elementor-widget elementor-widget-heading" data-id="45c3442" data-element_type="widget" data-e-type="widget" data-widget_type="heading.default">
					<h3 class="elementor-heading-title elementor-size-default">Help &amp; FAQs</h3>				</div>
								<p class="e-6d14a04-8455d5b e-paragraph-base" data-interaction-id="6d14a04"  >
								<strong>Quick answers to help you get what you need faster.</strong>
					</p>
				<div class="elementor-element elementor-element-74cb5dd elementor-widget elementor-widget-n-accordion" data-id="74cb5dd" data-element_type="widget" data-e-type="widget" data-settings="{&quot;default_state&quot;:&quot;all_collapsed&quot;,&quot;max_items_expended&quot;:&quot;one&quot;,&quot;n_accordion_animation_duration&quot;:{&quot;unit&quot;:&quot;ms&quot;,&quot;size&quot;:400,&quot;sizes&quot;:[]}}" data-widget_type="nested-accordion.default">
							<div class="e-n-accordion" aria-label="Accordion. Open links with Enter or Space, close with Escape, and navigate with Arrow Keys">
						<details id="e-n-accordion-item-1220" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="1" tabindex="0" aria-expanded="false" aria-controls="e-n-accordion-item-1220" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> How many rides are there in Doha Quest? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1220" class="elementor-element elementor-element-ac6251c e-con-full e-flex e-con e-child" data-id="ac6251c" data-element_type="container" data-e-type="container">
		<div role="region" aria-labelledby="e-n-accordion-item-1220" class="elementor-element elementor-element-e3785fe e-flex e-con-boxed e-con e-child" data-id="e3785fe" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-56304a4 elementor-widget elementor-widget-text-editor" data-id="56304a4" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Doha Quest features over 30 rides and attractions, catering to toddlers, families, and thrill-seekers of all ages. To know more, check out the full list of our <a href="https://dohaquest.com/en/rides">rides and attractions</a>!</p>								</div>
					</div>
				</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1221" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="2" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1221" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> How long do people usually stay? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1221" class="elementor-element elementor-element-6b5f61d e-con-full e-flex e-con e-child" data-id="6b5f61d" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-69b87c6 elementor-widget elementor-widget-text-editor" data-id="69b87c6" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Most visitors spend 3–4 hours exploring our indoor theme park in Doha to enjoy a mix of thrill rides, interactive zones, and Time Realms. There’s no rush – you’re free to explore at your own pace and make the day your own adventure!</p>								</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1222" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="3" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1222" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> What are the age/height requirements? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1222" class="elementor-element elementor-element-7dd8490 e-con-full e-flex e-con e-child" data-id="7dd8490" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-ac6b4cd elementor-widget elementor-widget-text-editor" data-id="ac6b4cd" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Each ride has its own safety criteria. For example, thrill rides such as EpiQ Coaster and Magma Blast require a minimum height of 140 cm for unaccompanied guests, and 130 cm for persons accompanied by an adult. Family rides such as the enchanting carousel are designed for riders aged 3+, with adult-accompanied options available. Exact requirements are posted on our <a href="https://dohaquest.com/en/rides">Rides page</a>.</p>								</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1223" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="4" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1223" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> Do you offer birthday packages? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1223" class="elementor-element elementor-element-96cb843 e-flex e-con-boxed e-con e-child" data-id="96cb843" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-6611d0f elementor-widget elementor-widget-text-editor" data-id="6611d0f" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Yes! We offer tailored birthday packages that include rides, themed decorations, cakes and special meals, and other special perks to make your child’s day unforgettable. To book, visit our <a href="https://dohaquest.com/en/celebrate">Celebrations page</a>.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1224" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="5" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1224" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> What is your refund policy? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1224" class="elementor-element elementor-element-1e8f44d e-flex e-con-boxed e-con e-child" data-id="1e8f44d" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-ee1a418 elementor-widget elementor-widget-text-editor" data-id="ee1a418" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>All ticket purchases are non-refundable and non-transferable, except in the case of an event cancellation by Doha Quest.<br /><br />If you experience an issue with your booking or visit, please <a href="https://dohaquest.com/en/contact">contact our Guest Services team</a> as soon as possible — we’ll do our best to help.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1225" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="6" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1225" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> Where is Doha Quest located? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1225" class="elementor-element elementor-element-c532b44 e-flex e-con-boxed e-con e-child" data-id="c532b44" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-3c79c50 elementor-widget elementor-widget-text-editor" data-id="3c79c50" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Doha Quest is located inside Doha Oasis, on Al Khaleej Street in Msheireb, Downtown Doha. We’re within walking distance of Msheireb Metro Station, and just minutes away from major hotels, Souq Waqif, and the Corniche. See <a href="https://dohaquest.com/en/contact">map and directions to Doha Quest here</a>.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1226" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="7" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1226" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> Is Doha Quest an Indoor theme park? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1226" class="elementor-element elementor-element-911dbac e-flex e-con-boxed e-con e-child" data-id="911dbac" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-f96cdb3 elementor-widget elementor-widget-text-editor" data-id="f96cdb3" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Yes! Doha Quest is Qatar’s first and largest indoor theme park, fully climate-controlled for year-round comfort.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1227" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="8" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1227" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> What is Doha Quest known for? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1227" class="elementor-element elementor-element-22bace8 e-flex e-con-boxed e-con e-child" data-id="22bace8" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-8253d6f elementor-widget elementor-widget-text-editor" data-id="8253d6f" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Doha Quest boasts the world’s tallest indoor roller coaster and drop tower, along with immersive rides and a combination of thrill, edutainment, and family fun. And let’s not forget iFLY Quest — the ultimate <a href="https://dohaquest.com/en/ifly">indoor skydiving</a> experience.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1228" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="9" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1228" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> Is there transportation available from major hotels or malls in Doha? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1228" class="elementor-element elementor-element-7204cde e-flex e-con-boxed e-con e-child" data-id="7204cde" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-164b93d elementor-widget elementor-widget-text-editor" data-id="164b93d" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>We don’t offer direct shuttle services, but Doha Quest is conveniently accessible via taxi, rideshare, and especially the Doha Metro. Hop off at Msheireb Station — just a short walk away — and you’ll find Doha Quest in Doha Oasis</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-1229" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="10" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-1229" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> Are there attractions accessible to children and families? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-1229" class="elementor-element elementor-element-807b5bc e-flex e-con-boxed e-con e-child" data-id="807b5bc" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-900171a elementor-widget elementor-widget-text-editor" data-id="900171a" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Yes! The park includes a wide variety of attractions for kids, families, and adults. Some rides have height and safety restrictions, which are clearly displayed.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-12210" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="11" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-12210" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> What types of food and dining options are available inside the park? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-12210" class="elementor-element elementor-element-680f2f0 e-flex e-con-boxed e-con e-child" data-id="680f2f0" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-0c9e3c7 elementor-widget elementor-widget-text-editor" data-id="0c9e3c7" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Doha Quest offers <a href="https://dohaquest.com/en/dine">casual dining and snack options</a>, including Quest Cafe, Sarab Kiosk and Space Cantina. Planet Hollywood Doha is also easily accessible through Quest grounds.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-12211" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="12" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-12211" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> Can I purchase official Doha Quest merchandise at the park? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-12211" class="elementor-element elementor-element-94c6a6e e-flex e-con-boxed e-con e-child" data-id="94c6a6e" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-da4653e elementor-widget elementor-widget-text-editor" data-id="da4653e" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Definitely! Our Time Quest retail store offers exclusive Doha Quest merchandise, apparel, souvenirs, and gifts. You can also <a href="https://store.dohaquest.com/">shop cool Quest gear online</a>.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-12212" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="13" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-12212" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> What are the ticket types and admission policies? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-12212" class="elementor-element elementor-element-975f1ee e-flex e-con-boxed e-con e-child" data-id="975f1ee" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-285d3dd elementor-widget elementor-widget-text-editor" data-id="285d3dd" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>We offer the following General Admission tickets:<br /><br />Adults (13 years and up): QAR 235)<br />Juniors (4 to 12 years): QAR 160<br />Children under 4: Free to enter<br /><br />Want to skip queues on specific rides? For an additional QAR 100, you can purchase a Time Portal fast-track ticket.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-12213" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="14" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-12213" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> Is there parking available at Doha Oasis for Doha Quest visitors? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-12213" class="elementor-element elementor-element-6fd678a e-flex e-con-boxed e-con e-child" data-id="6fd678a" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-fa99115 elementor-widget elementor-widget-text-editor" data-id="fa99115" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Yes, ample underground parking is available at Doha Oasis, with direct access to Doha Quest via elevators and escalators.<br /><br />Don’t forget to get your parking ticket stamped at the Quest Info Desk to enjoy free parking.</p>								</div>
					</div>
				</div>
					</details>
						<details id="e-n-accordion-item-12214" class="e-n-accordion-item" >
				<summary class="e-n-accordion-item-title" data-accordion-index="15" tabindex="-1" aria-expanded="false" aria-controls="e-n-accordion-item-12214" >
					<span class=\'e-n-accordion-item-title-header\'><div class="e-n-accordion-item-title-text"> How can I apply for a job or learn about careers at Doha Quest? </div></span>
							<span class=\'e-n-accordion-item-title-icon\'>
			<span class=\'e-opened\' ><svg aria-hidden="true" class="e-font-icon-svg e-fas-minus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
			<span class=\'e-closed\'><svg aria-hidden="true" class="e-font-icon-svg e-fas-plus" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg></span>
		</span>

						</summary>
				<div role="region" aria-labelledby="e-n-accordion-item-12214" class="elementor-element elementor-element-422d54a e-flex e-con-boxed e-con e-child" data-id="422d54a" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-25e44b4 elementor-widget elementor-widget-text-editor" data-id="25e44b4" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>We’re always on the lookout for passionate and talented individuals to join our team.<br /><br />To explore career opportunities, please visit the Careers section on our website or send your CV to <a href="mailto:careers@dohaquest.com">careers@dohaquest.com</a>.</p>								</div>
					</div>
				</div>
					</details>
					</div>
						</div>
					</div>
				</div>
				</div>
		', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?page_id=79', 0, 'page', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(78, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '<div class="woocommerce"></div>
', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?page_id=78', 0, 'page', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(77, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '
', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?page_id=77', 0, 'page', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(76, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?page_id=76', 0, 'page', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(15, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '<style type="text/css">.wpos-wcb-datepicker td.wpos-wc-bw-h-close span{background-color: #f67c10; color: #ffffff;}.wpos-wcb-datepicker td.wpos-wc-bw-eg-close span{background-color: #c42a2a; color: #ffffff;}.wpos-wcb-booking-status-closed .wpos-wcb-booking-status-mark{background-color: #c42a2a;}.wpos-wcb-booking-status-holiday .wpos-wcb-booking-status-mark{background-color: #f67c10;}</style>
	<div class="wpos-wc-bw-step-timer-wrp">
		<div class="wpos-wc-bw-bkn-wrap">
				<ul><li class="wpos-wc-bw-bkn active wpos-wc-bw-bkn-link">
					<a href="https://bookings.dohaquest.com/"><i class="fa-solid fa-bars wpos-wc-bw-icon-left"></i> <span>Category</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li><li class="wpos-wc-bw-bkn  wpos-wc-bw-bkn-link">
					<a href="https://bookings.dohaquest.com/?cid=20"><i class="fa-solid fa-ticket wpos-wc-bw-icon-left"></i> <span>Tickets</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li><li class="wpos-wc-bw-bkn ">
					<a href="javascript:void(0);"><i class="fa-solid fa-cart-plus wpos-wc-bw-icon-left"></i> <span>Cart</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li><li class="wpos-wc-bw-bkn ">
					<a href="javascript:void(0);"><i class="fa-solid fa-credit-card wpos-wc-bw-icon-left"></i> <span>Checkout</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li><li class="wpos-wc-bw-bkn ">
					<a href="javascript:void(0);"><i class="fa-solid fa-lock wpos-wc-bw-icon-left"></i> <span>Confirmation</span></a> <i class="fa fa-chevron-right wpos-wc-bw-icon-right"></i>
				</li></ul>
			</div>	</div>
			<div class="wpos-wc-bw-product-cat-wrap">
			<div class="wpos-wc-bw-product-cat-inr">
				
<div class="wpos-wc-bw-product-pcat wpos-wc-bw-product-cat wpos-wc-bw-cat-20 wpos-wc-bw-has-cat-img" id="wpos-wc-bw-cat-20">
	<div class="wpos-wc-bw-product-cat-list">
					<div class="wpos-wc-bw-cat-img-wrp">
				<a href="https://bookings.dohaquest.com/?cid=20">
					<div class="wpos-wc-bw-cat-img-inr">
						<img decoding="async" src="https://bookings.dohaquest.com/wp-content/uploads/2025/12/cat-1.png" class="wpos-wc-bw-cat-img" alt="Admission Tickets" />
					</div>
				</a>
			</div>
				
		<div class="wpos-wc-bw-cat-cnt-wrp">
			<div class="wpos-wc-bw-cat-ttl"><a href="https://bookings.dohaquest.com/?cid=20">Admission Tickets</a></div>
			
			<a href="https://bookings.dohaquest.com/?cid=20" class="mwbook-book-btn">Book Now <i class="fa fa-arrow-right"></i></a>
		</div>
	</div>
</div>			</div>
		</div>
		
', 'Tickets', '', 'publish', 'closed', 'closed', '', 'bookings', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?page_id=15', 0, 'page', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '<h2><u><strong>What Personal Information do we collect?</strong></u></h2>
<p>When you visit our Site, we automatically collect certain information about your device, including information about your web browser, IP address, time zone, and some of the cookies that are installed on your device.</p>
<p>Additionally, as you browse the site, we collect information about the individual web pages or products that you view, the websites or search terms which referred you to the Site, and information about how you interact with the Site.</p>
<p>We refer to this automatically collected information as <strong>Device Information.</strong></p>
<p>We collect <strong>Device Information </strong>using the following technologies:</p>
<ul>
<li><strong>Cookies </strong>are data files that are placed on your device or computer and often include an anonymous unique identifier. Cookies help us provide you with a better website and browsing experience, by enabling us to monitor which pages you find useful and which you do not. You can choose to accept or decline cookies; most web browsers will automatically accept them but you can usually modify your browser settings to decline cookies if you wish to; however, this may prevent you from taking full advantage of the website.</li>
<li><strong>Log files</strong> track actions occurring on the Site, and collect data including your IP address, browser type, Internet service provider, referring/exit pages, and date/time stamps.</li>
</ul>
<p>Also, when you make a purchase or attempt to make a purchase through the Site, we collect certain information from you, including your <strong>name, DOB or age, billing address, payment information</strong> (credit card number, security number and date of expiry), <strong>email address</strong>, and <strong>phone number</strong>. This is called <strong>Order Information</strong>.</p>
<p>In this <strong>Privacy Policy, Personal Information </strong>refers to both Device Information and Order Information.</p>
<h2><u><strong>How do we use your Order &amp; Device Information?</strong></u></h2>
<p>We use the<strong> Order Information</strong> that we collect generally to fulfill any orders placed through the Site (including processing your payment information, and providing you with invoices and/or order confirmations).</p>
<p>Additionally, we use this <strong>Order Information</strong>:</p>
<p>&#8211; To communicate with you,</p>
<p>&#8211; <strong>to screen our orders for potential risk or fraud,</strong></p>
<p>&#8211; provide you with information or advertising related to our products or services, in line with the preferences you have shared with us.<br /> </p>
<p>We use the <strong>Device Information</strong> that we collect to help us screen for potential risk and fraud (in particular, your<strong> IP address</strong>), and more generally to improve and optimize our Site.<br /> </p>
<p><strong>Sharing your Information</strong></p>
<p>We share your Personal Information with third parties to help us use your Personal Information, as described above.</p>
<p>We also use Google Analytics to help us understand how our customers use <a href="http://www.tickets.dohaquest.com" target="_blank" rel="noopener">www.tickets.dohaquest.com</a>. Finally, we may also share your personal information to comply with applicable laws and regulations, to respond to a subpoena, search warrant or other lawful requests for information we receive, or to otherwise protect our rights.<br /> </p>
<p><strong>Data Retention</strong></p>
<p>When you place an order through the Site, we will maintain your <strong>Order Information </strong>for our records unless and until you ask us to delete this information.<br /> </p>
<p><strong>Where do we store your information?</strong></p>
<p>We store your personal data in a centralised database hosted in the cloud, and affiliates or partners might have access to this database where such entities make use of MyPass.<br /> </p>
<p>We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure, we have put in place appropriate technical and organisational security measures to safeguard and secure the information we collect.<br /> </p>
<p>You are responsible for maintaining the confidentiality of any password or account details (as may be applicable from time to time) and are fully responsible for all activities that occur under your password or account.<br /> </p>
<p><strong>Marketing</strong></p>
<p>If you have provided your consent by opting in on registration or when contacting us or purchasing our services, we may send you our latest updates, news and promotions by email, SMS, or occasionally contact you by telephone. You may withdraw your consent to receiving such materials at any time by using the [‘unsubscribe’] link in any communication received, or by contacting us at <a href="mailto:info@dohauqest.com">info@dohauqest.com</a>.<br /> </p>
<p><strong>Minors</strong></p>
<p>The Site is not intended for individuals under the age of 10.<br /> </p>
<p><strong>Changes</strong></p>
<p>We may update this privacy policy from time to time in order to reflect, for example, changes to our practices or for other operational, legal or regulatory reasons.</p>
<p>If you have questions and/or require more information, do not hesitate to contact us on:</p>
<p><a href="mailto:info@dohaquest.com">info@dohaquest.com</a></p>
<p><a href="mailto:sales@dohaquest.com">sales@dohaquest.com</a></p>
<p><a href="mailto:marketing@dohaquest.com">marketing@dohaquest.com</a></p>
<p>+974 4410 3444</p>
', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?page_id=3', 0, 'page', '', 0);

-- ============================================================
-- WooCommerce Products
-- ============================================================
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1602, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '<p>Overview:</p>
<ul>
<li>Persons that are 4-12 years old are considered &#8220;Junior&#8221;</li>
<li>Guests 12 years and below must be accompanied by a paying adult of at least 18 years old to allow access or admission.</li>
<li>Full day access to all rides and attractions (iFLY Quest, iFly Quest &amp; racing simulators are at a separate cost)</li>
<li>Ticket is only valid on selected date</li>
<li>Booking amendments could be done only by calling 44103444 or sending an email to: sales@dohaquest.com</li>
<li>Terms and conditions apply</li>
</ul>', 'Eid Early Bird – Junior', '<p>Overview:</p>
<ul>
<li>Persons that are 4-12 years old are considered &#8220;Junior&#8221;</li>
<li>Guests 12 years and below must be accompanied by a paying adult of at least 18 years old to allow access or admission.</li>
<li>Full day access to all rides and attractions (iFLY Quest, iFly Quest &amp; racing simulators are at a separate cost)</li>
<li>Ticket is only valid on selected date</li>
<li>Booking amendments could be done only by calling 44103444 or sending an email to: sales@dohaquest.com</li>
<li>Terms and conditions apply</li>
</ul>', 'publish', 'closed', 'closed', '', 'eid-early-bird-junior', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?product=eid-early-bird-junior', 0, 'product', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1600, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '<p>Overview:</p>
<ul>
<li>Persons of the age 13 and above are considered &#8220;Adult&#8221;</li>
<li>Guests 12 years and below must be accompanied by a paying adult of at least 18 years old to allow access or admission.</li>
<li>Full day access to all rides and attractions (iFLY Quest, iFly Quest &amp; racing simulators are at a separate cost)</li>
<li>Ticket is only valid on selected date</li>
<li>Booking amendments could be done only by calling 44103444 or sending an email to: sales@dohaquest.com</li>
<li>Terms and conditions apply</li>
</ul>', 'Eid Early Bird – Adult', '<p>Overview:</p>
<ul>
<li>Persons of the age 13 and above are considered &#8220;Adult&#8221;</li>
<li>Guests 12 years and below must be accompanied by a paying adult of at least 18 years old to allow access or admission.</li>
<li>Full day access to all rides and attractions (iFLY Quest, iFly Quest &amp; racing simulators are at a separate cost)</li>
<li>Ticket is only valid on selected date</li>
<li>Booking amendments could be done only by calling 44103444 or sending an email to: sales@dohaquest.com</li>
<li>Terms and conditions apply</li>
</ul>', 'publish', 'closed', 'closed', '', 'eid-early-bird-adult', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?product=eid-early-bird-adult', 0, 'product', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1361, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '<p>Overview:</p>
<ul>
<li style="list-style-type: none">
<ul>
<li>iFLY Quest is an interactive indoor skydiving flight experience that simulates freefall skydiving using controlled vertical wind technology.</li>
<li>Guests must be at least 3 years old and have a minimum height of 100 cm to participate in the iFLY Quest indoor skydiving experience.</li>
<li>All flyers must complete registration and sign the mandatory waiver prior to participation.</li>
<li>Flyers must comply with all safety rules, regulations, and instructor instructions at all times.</li>
<li>Flyers will be in physical contact with an instructor for guidance, body positioning, and movement control. Female instructors are available upon request.</li>
<li>Participation involves inherent risks, and flyers acknowledge and accept full responsibility for participation for themselves and/or their child(ren).</li>
<li>Flyers confirm that they do not have any medical condition that may affect safe participation. Any prior injuries, shoulder dislocations, or medical concerns must be disclosed to staff before flying.</li>
<li>Flyers with a history of nosebleeds must inform the instructor due to exposure to high atmospheric pressure.</li>
<li>Guardians must be 18 years old or above. Minimum age and participation eligibility are determined by iFLY Quest management.</li>
<li>All flight gear must be handled with care. Misuse may result in removal from the session.</li>
<li>Doha Quest shall not be held liable for any injury, loss, or damage arising from participation, except as required by applicable law.</li>
<li>Doha Quest reserves the right to suspend, delay, or cancel sessions for safety, operational, or technical reasons.</li>
<li>Any flyer deemed by management to be behaving in an unsafe or disorderly manner may be removed from the session without refund.</li>
<li>All other applicable Doha Quest and iFLY Quest Terms &amp; Conditions apply.</li>
</ul>
</li>
</ul>', 'iFLY Quest – Non-Quest Ticket Holder', '<p>Overview:</p>
<ul>
<li>Persons that are 4-12 years old are considered &#8220;Junior&#8221;</li>
<li>Guests 12 years and below must be accompanied by a paying adult of at least 18 years old to allow access or admission.</li>
<li>Full day access to all rides and attractions (iFLY Quest, iFly Quest &amp; racing simulators are at a separate cost)</li>
<li>Ticket is only valid on selected date</li>
<li>Booking amendments could be done only by calling 44103444 or sending an email to: sales@dohaquest.com</li>
<li>Terms and conditions apply</li>
</ul>', 'publish', 'closed', 'closed', '', 'ifly-non-quest-ticket-holder', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?product=ifly-non-quest-ticket-holder', 0, 'product', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1347, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '<p>Overview:</p>
<ul>
<li>iFLY Quest is an interactive indoor skydiving flight experience that simulates freefall skydiving using controlled vertical wind technology.</li>
<li>Guests must be at least 3 years old and have a minimum height of 100 cm to participate in the iFLY Quest indoor skydiving experience.</li>
<li>All flyers must complete registration and sign the mandatory waiver prior to participation.</li>
<li>Flyers must comply with all safety rules, regulations, and instructor instructions at all times.</li>
<li>Flyers will be in physical contact with an instructor for guidance, body positioning, and movement control. Female instructors are available upon request.</li>
<li>Participation involves inherent risks, and flyers acknowledge and accept full responsibility for participation for themselves and/or their child(ren).</li>
<li>Flyers confirm that they do not have any medical condition that may affect safe participation. Any prior injuries, shoulder dislocations, or medical concerns must be disclosed to staff before flying.</li>
<li>Flyers with a history of nosebleeds must inform the instructor due to exposure to high atmospheric pressure.</li>
<li>Guardians must be 18 years old or above. Minimum age and participation eligibility are determined by iFLY Quest management.</li>
<li>All flight gear must be handled with care. Misuse may result in removal from the session.</li>
<li>Doha Quest shall not be held liable for any injury, loss, or damage arising from participation, except as required by applicable law.</li>
<li>Doha Quest reserves the right to suspend, delay, or cancel sessions for safety, operational, or technical reasons.</li>
<li>Any flyer deemed by management to be behaving in an unsafe or disorderly manner may be removed from the session without refund.</li>
<li>All other applicable Doha Quest and iFLY Quest Terms &amp; Conditions apply.</li>
</ul>', 'iFLY – Quest Ticket Holder', '<p>Overview:</p>
<ul>
<li>Persons that are 4-12 years old are considered &#8220;Junior&#8221;</li>
<li>Guests 12 years and below must be accompanied by a paying adult of at least 18 years old to allow access or admission.</li>
<li>Full day access to all rides and attractions (iFLY Quest, iFly Quest &amp; racing simulators are at a separate cost)</li>
<li>Ticket is only valid on selected date</li>
<li>Booking amendments could be done only by calling 44103444 or sending an email to: sales@dohaquest.com</li>
<li>Terms and conditions apply</li>
</ul>', 'publish', 'closed', 'closed', '', 'ifly-quest-ticket-holder', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?product=ifly-quest-ticket-holder', 0, 'product', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1072, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '', 'B2B Test Child Ticket ABC Travel', '', 'publish', 'closed', 'closed', '', 'b2b-test-child-ticket-abc-travel', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?product=b2b-test-child-ticket-abc-travel', 0, 'product', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1071, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '', 'B2B Test Adult Ticket ABC Travel', '', 'publish', 'closed', 'closed', '', 'b2b-test-adult-ticket-abc-travel', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?product=b2b-test-adult-ticket-abc-travel', 0, 'product', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1062, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '', 'B2B Group Booking Junior Online Portal', '', 'publish', 'closed', 'closed', '', 'b2b-group-booking-junior-online-portal', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?product=b2b-group-booking-junior-online-portal', 0, 'product', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1061, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '', 'B2B Group Booking Adult Online Portal', '', 'publish', 'closed', 'closed', '', 'b2b-group-booking-adult-online-portal', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?product=b2b-group-booking-adult-online-portal', 0, 'product', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(130, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '<p>Overview:</p>
<ul>
<li>Persons that are 4-12 years old are considered &#8220;Junior&#8221;</li>
<li>Guests 12 years and below must be accompanied by a paying adult of at least 18 years old to allow access or admission.</li>
<li>Full day access to all rides and attractions (iFLY Quest, iFly Quest &amp; racing simulators are at a separate cost)</li>
<li>Ticket is only valid on selected date</li>
<li>Booking amendments could be done only by calling 44103444 or sending an email to: sales@dohaquest.com</li>
<li>Terms and conditions apply</li>
</ul>', 'Online Admission – Junior', '<p>Overview:</p>
<ul>
<li>Persons that are 4-12 years old are considered &#8220;Junior&#8221;</li>
<li>Guests 12 years and below must be accompanied by a paying adult of at least 18 years old to allow access or admission.</li>
<li>Full day access to all rides and attractions (iFLY Quest, iFly Quest &amp; racing simulators are at a separate cost)</li>
<li>Ticket is only valid on selected date</li>
<li>Booking amendments could be done only by calling 44103444 or sending an email to: sales@dohaquest.com</li>
<li>Terms and conditions apply</li>
</ul>', 'publish', 'closed', 'closed', '', 'online-admission-junior', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?product=online-admission-junior', 0, 'product', '', 0);
INSERT IGNORE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(131, 1, '2025-12-01 00:00:00', '2025-12-01 00:00:00', '<p>Overview:</p>
<ul>
<li>Persons of the age 13 and above are considered &#8220;Adult&#8221;</li>
<li>Guests 12 years and below must be accompanied by a paying adult of at least 18 years old to allow access or admission.</li>
<li>Full day access to all rides and attractions (iFLY Quest, iFly Quest &amp; racing simulators are at a separate cost)</li>
<li>Ticket is only valid on selected date</li>
<li>Booking amendments could be done only by calling 44103444 or sending an email to: sales@dohaquest.com</li>
<li>Terms and conditions apply</li>
</ul>', 'Online Admission – Adult', '<p>Overview:</p>
<ul>
<li>Persons of the age 13 and above are considered &#8220;Adult&#8221;</li>
<li>Guests 12 years and below must be accompanied by a paying adult of at least 18 years old to allow access or admission.</li>
<li>Full day access to all rides and attractions (iFLY Quest, iFly Quest &amp; racing simulators are at a separate cost)</li>
<li>Ticket is only valid on selected date</li>
<li>Booking amendments could be done only by calling 44103444 or sending an email to: sales@dohaquest.com</li>
<li>Terms and conditions apply</li>
</ul>', 'publish', 'closed', 'closed', '', 'online-admission-adult', '', '', '2026-05-25 00:00:00', '2026-05-25 00:00:00', '', 0, 'SITE_URL_PLACEHOLDER/?product=online-admission-adult', 0, 'product', '', 0);

-- ============================================================
-- wp_postmeta
-- ============================================================

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_price', '125.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_regular_price', '125.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_sale_price', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_sku', 'DQ-1602');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_manage_stock', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_stock_status', 'instock');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_virtual', 'yes');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_downloadable', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_tax_status', 'none');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_tax_class', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_visibility', 'visible');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_featured', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_product_version', '9.0.0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_wc_average_rating', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_wc_review_count', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, 'total_sales', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1602, '_thumbnail_id', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_price', '175.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_regular_price', '175.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_sale_price', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_sku', 'DQ-1600');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_manage_stock', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_stock_status', 'instock');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_virtual', 'yes');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_downloadable', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_tax_status', 'none');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_tax_class', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_visibility', 'visible');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_featured', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_product_version', '9.0.0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_wc_average_rating', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_wc_review_count', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, 'total_sales', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1600, '_thumbnail_id', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_price', '200.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_regular_price', '200.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_sale_price', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_sku', 'DQ-1361');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_manage_stock', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_stock_status', 'instock');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_virtual', 'yes');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_downloadable', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_tax_status', 'none');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_tax_class', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_visibility', 'visible');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_featured', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_product_version', '9.0.0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_wc_average_rating', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_wc_review_count', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, 'total_sales', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1361, '_thumbnail_id', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_price', '150.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_regular_price', '150.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_sale_price', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_sku', 'DQ-1347');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_manage_stock', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_stock_status', 'instock');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_virtual', 'yes');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_downloadable', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_tax_status', 'none');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_tax_class', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_visibility', 'visible');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_featured', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_product_version', '9.0.0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_wc_average_rating', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_wc_review_count', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, 'total_sales', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1347, '_thumbnail_id', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_price', '100.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_regular_price', '100.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_sale_price', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_sku', 'DQ-1072');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_manage_stock', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_stock_status', 'instock');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_virtual', 'yes');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_downloadable', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_tax_status', 'none');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_tax_class', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_visibility', 'visible');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_featured', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_product_version', '9.0.0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_wc_average_rating', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, '_wc_review_count', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1072, 'total_sales', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_price', '150.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_regular_price', '150.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_sale_price', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_sku', 'DQ-1071');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_manage_stock', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_stock_status', 'instock');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_virtual', 'yes');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_downloadable', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_tax_status', 'none');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_tax_class', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_visibility', 'visible');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_featured', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_product_version', '9.0.0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_wc_average_rating', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, '_wc_review_count', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1071, 'total_sales', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_price', '160.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_regular_price', '160.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_sale_price', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_sku', 'DQ-1062');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_manage_stock', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_stock_status', 'instock');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_virtual', 'yes');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_downloadable', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_tax_status', 'none');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_tax_class', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_visibility', 'visible');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_featured', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_product_version', '9.0.0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_wc_average_rating', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, '_wc_review_count', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1062, 'total_sales', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_price', '235.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_regular_price', '235.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_sale_price', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_sku', 'DQ-1061');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_manage_stock', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_stock_status', 'instock');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_virtual', 'yes');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_downloadable', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_tax_status', 'none');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_tax_class', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_visibility', 'visible');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_featured', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_product_version', '9.0.0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_wc_average_rating', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, '_wc_review_count', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (1061, 'total_sales', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_price', '160.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_regular_price', '160.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_sale_price', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_sku', 'DQ-130');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_manage_stock', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_stock_status', 'instock');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_virtual', 'yes');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_downloadable', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_tax_status', 'none');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_tax_class', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_visibility', 'visible');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_featured', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_product_version', '9.0.0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_wc_average_rating', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_wc_review_count', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, 'total_sales', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (130, '_thumbnail_id', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_price', '235.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_regular_price', '235.00');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_sale_price', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_sku', 'DQ-131');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_manage_stock', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_stock_status', 'instock');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_virtual', 'yes');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_downloadable', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_tax_status', 'none');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_tax_class', '');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_visibility', 'visible');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_featured', 'no');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_product_version', '9.0.0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_wc_average_rating', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_wc_review_count', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, 'total_sales', '0');
INSERT IGNORE INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES (131, '_thumbnail_id', '0');

-- ============================================================
-- wp_terms and wp_term_taxonomy
-- ============================================================

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(200))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT IGNORE INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES (20, 'Admission Tickets', 'admission-tickets', 0);
INSERT IGNORE INTO `wp_term_taxonomy` (`term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES (20, 'product_cat', '', 0, 3);
INSERT IGNORE INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES (21, 'B2B Admission Tickets', 'b2b-admission-tickets', 0);
INSERT IGNORE INTO `wp_term_taxonomy` (`term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES (21, 'product_cat', '', 0, 3);
INSERT IGNORE INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES (22, 'Eid Early Bird Offer', 'eid-early-bird-offer', 0);
INSERT IGNORE INTO `wp_term_taxonomy` (`term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES (22, 'product_cat', '', 0, 3);
INSERT IGNORE INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES (131, 20, 0);
INSERT IGNORE INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES (130, 20, 0);
INSERT IGNORE INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES (1361, 20, 0);
INSERT IGNORE INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES (1347, 20, 0);
INSERT IGNORE INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES (1061, 21, 0);
INSERT IGNORE INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES (1062, 21, 0);
INSERT IGNORE INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES (1071, 21, 0);
INSERT IGNORE INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES (1072, 21, 0);
INSERT IGNORE INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES (1600, 22, 0);
INSERT IGNORE INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES (1602, 22, 0);


CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT IGNORE INTO `wp_termmeta` (`term_id`, `meta_key`, `meta_value`) VALUES (20, 'thumbnail_id', '0');
INSERT IGNORE INTO `wp_termmeta` (`term_id`, `meta_key`, `meta_value`) VALUES (20, 'display_type', '');
INSERT IGNORE INTO `wp_termmeta` (`term_id`, `meta_key`, `meta_value`) VALUES (21, 'thumbnail_id', '0');
INSERT IGNORE INTO `wp_termmeta` (`term_id`, `meta_key`, `meta_value`) VALUES (21, 'display_type', '');
INSERT IGNORE INTO `wp_termmeta` (`term_id`, `meta_key`, `meta_value`) VALUES (22, 'thumbnail_id', '0');
INSERT IGNORE INTO `wp_termmeta` (`term_id`, `meta_key`, `meta_value`) VALUES (22, 'display_type', '');


CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- WooCommerce Tables
-- ============================================================
CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) NOT NULL,
  `session_value` longtext NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `permissions` varchar(10) NOT NULL,
  `consumer_key` char(64) NOT NULL,
  `consumer_secret` char(43) NOT NULL,
  `nonces` longtext,
  `truncated_key` char(7) NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` varchar(200) DEFAULT NULL,
  `attribute_type` varchar(20) NOT NULL,
  `attribute_orderby` varchar(20) NOT NULL,
  `attribute_public` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(8) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` mediumint(4) NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`),
  KEY `tax_rate_class` (`tax_rate_class`),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) NOT NULL,
  `zone_order` mediumint(4) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `zone_id` (`zone_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(255) NOT NULL,
  `method_order` mediumint(4) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) NOT NULL,
  `token` text NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` varchar(200) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- Update site URL (will be set dynamically)
-- ============================================================
-- The SITE_URL_PLACEHOLDER will be replaced by wp-config.php dynamically
-- Delete existing theme_mods_kadence and re-insert with correct values
DELETE FROM `wp_options` WHERE `option_name` = 'theme_mods_kadence';
INSERT INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES 
('theme_mods_kadence', 'a:24:{s:13;\"content_width\";s:6;\"normal\";s:13;\"content_style\";s:5;\"boxed\";s:10;\"link_style\";s:12;\"no-underline\";s:10;\"page_title\";b:1;s:17;\"page_title_layout\";s:5;\"above\";s:23;\"page_title_inner_layout\";s:9;\"fullwidth\";s:17;\"page_title_height\";a:2:{s:4;\"size\";a:3:{i:0;i:380;i:1;s:0;\"\";i:2;s:0;\"\";}s:4;\"unit\";a:3:{i:0;s:2;\"px\";i:1;s:2;\"px\";i:2;s:2;\"px\";}}s:16;\"page_title_align\";s:6;\"center\";s:19;\"page_title_elements\";a:1:{i:0;s:5;\"title\";}s:16;\"page_title_color\";a:2:{s:5;\"color\";s:0;\"\";s:7;\"palette\";s:8;\"palette9\";}s:12;\"page_feature\";b:1;s:21;\"page_feature_position\";s:6;\"behind\";s:18;\"page_feature_ratio\";s:7;\"inherit\";s:24;\"content_vertical_padding\";s:4;\"show\";s:16;\"footer_on_bottom\";b:1;s:15;\"palette_color_1\";s:7;\"#510c76\";s:15;\"palette_color_2\";s:7;\"#215387\";s:15;\"palette_color_3\";s:7;\"#1A202C\";s:15;\"palette_color_4\";s:7;\"#2D3748\";s:15;\"palette_color_5\";s:7;\"#4A5568\";s:15;\"palette_color_6\";s:7;\"#718096\";s:15;\"palette_color_7\";s:7;\"#EDF2F7\";s:15;\"palette_color_8\";s:7;\"#F7FAFC\";s:15;\"palette_color_9\";s:7;\"#ffffff\";}', 'yes');

-- Page meta for front page (ID=15)
DELETE FROM `wp_postmeta` WHERE `post_id` = 15 AND `meta_key` IN (
    '_kad_post_title', '_kad_post_layout', '_kad_post_title_layout',
    '_kad_post_title_inner_layout', '_kad_post_feature', '_kad_post_feature_position',
    '_kad_post_vertical_padding'
);
INSERT INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES
(15, '_kad_post_title', 'show'),
(15, '_kad_post_layout', 'fullwidth'),
(15, '_kad_post_title_layout', 'above'),
(15, '_kad_post_title_inner_layout', 'fullwidth'),
(15, '_kad_post_feature', 'above'),
(15, '_kad_post_feature_position', 'behind'),
(15, '_kad_post_vertical_padding', 'show');


-- Delete existing theme_mods_kadence and re-insert with correct values
DELETE FROM `wp_options` WHERE `option_name` = 'theme_mods_kadence';
INSERT INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES 
('theme_mods_kadence', 'a:24:{s:13:\"content_width\";s:6:\"normal\";s:13:\"content_style\";s:5:\"boxed\";s:10:\"link_style\";s:12:\"no-underline\";s:10:\"page_title\";b:1;s:17:\"page_title_layout\";s:5:\"above\";s:23:\"page_title_inner_layout\";s:9:\"fullwidth\";s:17:\"page_title_height\";a:2:{s:4:\"size\";a:3:{i:0;i:380;i:1;s:0:\"\";i:2;s:0:\"\";}s:4:\"unit\";a:3:{i:0;s:2:\"px\";i:1;s:2:\"px\";i:2;s:2:\"px\";}}s:16:\"page_title_align\";s:6:\"center\";s:19:\"page_title_elements\";a:1:{i:0;s:5:\"title\";}s:16:\"page_title_color\";a:2:{s:5:\"color\";s:0:\"\";s:7:\"palette\";s:8:\"palette9\";}s:12:\"page_feature\";b:1;s:21:\"page_feature_position\";s:6:\"behind\";s:18:\"page_feature_ratio\";s:7:\"inherit\";s:24:\"content_vertical_padding\";s:4:\"show\";s:16:\"footer_on_bottom\";b:1;s:15:\"palette_color_1\";s:7:\"#510c76\";s:15:\"palette_color_2\";s:7:\"#215387\";s:15:\"palette_color_3\";s:7:\"#1A202C\";s:15:\"palette_color_4\";s:7:\"#2D3748\";s:15:\"palette_color_5\";s:7:\"#4A5568\";s:15:\"palette_color_6\";s:7:\"#718096\";s:15:\"palette_color_7\";s:7:\"#EDF2F7\";s:15:\"palette_color_8\";s:7:\"#F7FAFC\";s:15:\"palette_color_9\";s:7:\"#ffffff\";}', 'yes');

-- Page meta for front page (ID=15)
DELETE FROM `wp_postmeta` WHERE `post_id` = 15 AND `meta_key` IN (
    '_kad_post_title', '_kad_post_layout', '_kad_post_title_layout',
    '_kad_post_title_inner_layout', '_kad_post_feature', '_kad_post_feature_position',
    '_kad_post_vertical_padding'
);
INSERT INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES
(15, '_kad_post_title', 'show'),
(15, '_kad_post_layout', 'fullwidth'),
(15, '_kad_post_title_layout', 'above'),
(15, '_kad_post_title_inner_layout', 'fullwidth'),
(15, '_kad_post_feature', 'above'),
(15, '_kad_post_feature_position', 'behind'),
(15, '_kad_post_vertical_padding', 'show');


-- ============================================================
-- Kadence theme settings
-- ============================================================

-- Delete existing theme_mods_kadence and re-insert with correct values
DELETE FROM `wp_options` WHERE `option_name` = 'theme_mods_kadence';
INSERT INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES 
('theme_mods_kadence', 'a:24:{s:13:\"content_width\";s:6:\"normal\";s:13:\"content_style\";s:5:\"boxed\";s:10:\"link_style\";s:12:\"no-underline\";s:10:\"page_title\";b:1;s:17:\"page_title_layout\";s:5:\"above\";s:23:\"page_title_inner_layout\";s:9:\"fullwidth\";s:17:\"page_title_height\";a:2:{s:4:\"size\";a:3:{i:0;i:380;i:1;s:0:\"\";i:2;s:0:\"\";}s:4:\"unit\";a:3:{i:0;s:2:\"px\";i:1;s:2:\"px\";i:2;s:2:\"px\";}}s:16:\"page_title_align\";s:6:\"center\";s:19:\"page_title_elements\";a:1:{i:0;s:5:\"title\";}s:16:\"page_title_color\";a:2:{s:5:\"color\";s:0:\"\";s:7:\"palette\";s:8:\"palette9\";}s:12:\"page_feature\";b:1;s:21:\"page_feature_position\";s:6:\"behind\";s:18:\"page_feature_ratio\";s:7:\"inherit\";s:24:\"content_vertical_padding\";s:4:\"show\";s:16:\"footer_on_bottom\";b:1;s:15:\"palette_color_1\";s:7:\"#510c76\";s:15:\"palette_color_2\";s:7:\"#215387\";s:15:\"palette_color_3\";s:7:\"#1A202C\";s:15:\"palette_color_4\";s:7:\"#2D3748\";s:15:\"palette_color_5\";s:7:\"#4A5568\";s:15:\"palette_color_6\";s:7:\"#718096\";s:15:\"palette_color_7\";s:7:\"#EDF2F7\";s:15:\"palette_color_8\";s:7:\"#F7FAFC\";s:15:\"palette_color_9\";s:7:\"#ffffff\";}', 'yes');

-- Page meta for front page (ID=15)
DELETE FROM `wp_postmeta` WHERE `post_id` = 15 AND `meta_key` IN (
    '_kad_post_title', '_kad_post_layout', '_kad_post_title_layout',
    '_kad_post_title_inner_layout', '_kad_post_feature', '_kad_post_feature_position',
    '_kad_post_vertical_padding'
);
INSERT INTO `wp_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES
(15, '_kad_post_title', 'show'),
(15, '_kad_post_layout', 'fullwidth'),
(15, '_kad_post_title_layout', 'above'),
(15, '_kad_post_title_inner_layout', 'fullwidth'),
(15, '_kad_post_feature', 'above'),
(15, '_kad_post_feature_position', 'behind'),
(15, '_kad_post_vertical_padding', 'show');

