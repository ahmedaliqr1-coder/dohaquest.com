<?php
/**
 * Custom Footer Injection for DohaQuest
 * Injects the Elementor footer template HTML and CSS directly
 */

// Load Elementor CSS
add_action('wp_enqueue_scripts', function() {
    // Elementor frontend CSS
    if (file_exists(WP_CONTENT_DIR . '/plugins/elementor/assets/css/frontend.min.css')) {
        wp_enqueue_style(
            'elementor-frontend',
            content_url('plugins/elementor/assets/css/frontend.min.css'),
            array(),
            '4.0.8'
        );
    }
    // Elementor social icons CSS
    if (file_exists(WP_CONTENT_DIR . '/plugins/elementor/assets/css/widget-social-icons.min.css')) {
        wp_enqueue_style(
            'elementor-social-icons',
            content_url('plugins/elementor/assets/css/widget-social-icons.min.css'),
            array(),
            '4.0.8'
        );
    }
    // Elementor animation CSS
    if (file_exists(WP_CONTENT_DIR . '/plugins/elementor/assets/lib/animations/styles/e-animation-grow.min.css')) {
        wp_enqueue_style(
            'elementor-animation-grow',
            content_url('plugins/elementor/assets/lib/animations/styles/e-animation-grow.min.css'),
            array(),
            '4.0.8'
        );
    }
}, 5);

// Add footer CSS inline (post-1011.css)
add_action('wp_head', function() {
    echo '<style id="elementor-post-1011-css">';
    echo <<<'FOOTER_CSS'
.elementor-1011 .elementor-element.elementor-element-b2541fb{--display:flex;border-style:solid;--border-style:solid;border-width:0px 0px 1px 0px;--border-top-width:0px;--border-right-width:0px;--border-bottom-width:1px;--border-left-width:0px;border-color:#DDDCDC;--border-color:#DDDCDC;}.elementor-1011 .elementor-element.elementor-element-b2541fb:not(.elementor-motion-effects-element-type-background), .elementor-1011 .elementor-element.elementor-element-b2541fb > .elementor-motion-effects-container > .elementor-motion-effects-layer{background-color:transparent;background-image:linear-gradient(54deg, #450A61 1%, #611088 100%);}.elementor-1011 .elementor-element.elementor-element-376bd4b{--display:grid;--e-con-grid-template-columns:repeat(2, 1fr);--e-con-grid-template-rows:repeat(1, 1fr);--grid-auto-flow:row;--margin-top:0px;--margin-bottom:0px;--margin-left:0px;--margin-right:0px;--padding-top:0px;--padding-bottom:0px;--padding-left:0px;--padding-right:0px;}.elementor-widget-text-editor{font-family:var( --e-global-typography-text-font-family ), Sans-serif;font-weight:var( --e-global-typography-text-font-weight );color:var( --e-global-color-text );}.elementor-widget-text-editor.elementor-drop-cap-view-stacked .elementor-drop-cap{background-color:var( --e-global-color-primary );}.elementor-widget-text-editor.elementor-drop-cap-view-framed .elementor-drop-cap, .elementor-widget-text-editor.elementor-drop-cap-view-default .elementor-drop-cap{color:var( --e-global-color-primary );border-color:var( --e-global-color-primary );}.elementor-1011 .elementor-element.elementor-element-b3ac62b{font-family:"Roboto Condensed", Sans-serif;font-size:16px;font-weight:400;color:#FEF9F9;}.elementor-1011 .elementor-element.elementor-element-491f71a{margin:8px 0px calc(var(--kit-widget-spacing, 0px) + 0px) 0px;}.elementor-1011 .elementor-element.elementor-element-009b7d1{--display:grid;--e-con-grid-template-columns:repeat(4, 1fr);--e-con-grid-template-rows:repeat(1, 1fr);--grid-auto-flow:row;border-style:solid;--border-style:solid;border-width:0px 0px 1px 0px;--border-top-width:0px;--border-right-width:0px;--border-bottom-width:1px;--border-left-width:0px;border-color:#AFA4A4;--border-color:#AFA4A4;--border-radius:0px 0px 0px 0px;}.elementor-1011 .elementor-element.elementor-element-009b7d1:not(.elementor-motion-effects-element-type-background), .elementor-1011 .elementor-element.elementor-element-009b7d1 > .elementor-motion-effects-container > .elementor-motion-effects-layer{background-color:transparent;background-image:linear-gradient(165deg, #450A61 0%, #661C8B 100%);}.elementor-1011 .elementor-element.elementor-element-abf6063{column-gap:0px;text-align:justify;font-family:"Roboto Condensed", Sans-serif;font-size:16px;font-weight:400;text-shadow:0px 0px 10px rgba(0,0,0,0.3);color:#FFFCFC;}.elementor-1011 .elementor-element.elementor-element-abf6063 a{color:#F6F6F6;}.elementor-1011 .elementor-element.elementor-element-0196af9{column-gap:0px;text-align:justify;font-family:"Roboto Condensed", Sans-serif;font-size:16px;font-weight:500;color:#FFFCFC;}.elementor-1011 .elementor-element.elementor-element-0196af9 a{color:#F6F6F6;}.elementor-1011 .elementor-element.elementor-element-678cc3c{column-gap:0px;text-align:justify;font-family:"Roboto", Sans-serif;font-size:16px;font-weight:400;color:#FFFCFC;}.elementor-1011 .elementor-element.elementor-element-678cc3c a{color:#F6F6F6;}.elementor-1011 .elementor-element.elementor-element-8916e63{column-gap:0px;text-align:justify;font-family:"Roboto Condensed", Sans-serif;font-size:16px;font-weight:400;color:#FFFCFC;}.elementor-1011 .elementor-element.elementor-element-8916e63 a{color:#F6F6F6;}.elementor-1011 .elementor-element.elementor-element-5f4aef3{--display:grid;--e-con-grid-template-columns:repeat(4, 1fr);--e-con-grid-template-rows:repeat(1, 1fr);--grid-auto-flow:row;border-style:solid;--border-style:solid;border-width:0px 0px 1px 0px;--border-top-width:0px;--border-right-width:0px;--border-bottom-width:1px;--border-left-width:0px;border-color:#AFA4A4;--border-color:#AFA4A4;--border-radius:0px 0px 0px 0px;}.elementor-1011 .elementor-element.elementor-element-5f4aef3:not(.elementor-motion-effects-element-type-background), .elementor-1011 .elementor-element.elementor-element-5f4aef3 > .elementor-motion-effects-container > .elementor-motion-effects-layer{background-color:transparent;background-image:radial-gradient(at bottom left, #450A61 0%, #640094 100%);}.elementor-1011 .elementor-element.elementor-element-5caae56{column-gap:0px;text-align:justify;font-family:"Roboto Condensed", Sans-serif;font-size:16px;font-weight:400;color:#FFFFFF;}.elementor-1011 .elementor-element.elementor-element-5caae56 a{color:#F6F6F6;}.elementor-1011 .elementor-element.elementor-element-03cc0a0{column-gap:0px;text-align:justify;font-family:"Roboto Condensed", Sans-serif;font-size:16px;font-weight:400;color:#FFFCFC;}.elementor-1011 .elementor-element.elementor-element-03cc0a0 a{color:#F6F6F6;}.elementor-1011 .elementor-element.elementor-element-1945f8b{--display:flex;--min-height:0px;grid-column:span 1;grid-row:span 1;}.elementor-1011 .elementor-element.elementor-element-1945f8b.e-con{--align-self:flex-start;}.elementor-1011 .elementor-element.elementor-element-db807eb{column-gap:0px;text-align:justify;font-family:"Roboto Condensed", Sans-serif;font-size:18px;font-weight:500;color:#FFFCFC;}.elementor-1011 .elementor-element.elementor-element-db807eb p{margin-block-end:0px;}.elementor-1011 .elementor-element.elementor-element-db807eb a{color:#F6F6F6;}.elementor-1011 .elementor-element.elementor-element-0b438ce{--grid-template-columns:repeat(5, auto);text-align:left;--icon-size:11px;--grid-column-gap:3px;--grid-row-gap:0px;}.elementor-1011 .elementor-element.elementor-element-0b438ce .elementor-social-icon{--icon-padding:0.4em;}.elementor-1011 .elementor-element.elementor-element-876f7f8{column-gap:0px;text-align:justify;font-family:"Roboto Condensed", Sans-serif;font-size:16px;font-weight:400;color:#FFFCFC;}.elementor-1011 .elementor-element.elementor-element-876f7f8 a{color:#F6F6F6;}.elementor-1011 .elementor-element.elementor-element-98aaf75{--display:grid;--min-height:0px;--e-con-grid-template-columns:repeat(1, 1fr);--e-con-grid-template-rows:repeat(1, 1fr);--gap:0px 0px;--row-gap:0px;--column-gap:0px;--grid-auto-flow:row;--justify-items:center;--align-items:center;border-style:solid;--border-style:solid;border-width:0px 0px 1px 0px;--border-top-width:0px;--border-right-width:0px;--border-bottom-width:1px;--border-left-width:0px;border-color:#AFA4A4;--border-color:#AFA4A4;--border-radius:0px 0px 0px 0px;--padding-top:0px;--padding-bottom:0px;--padding-left:0px;--padding-right:0px;}.elementor-1011 .elementor-element.elementor-element-98aaf75:not(.elementor-motion-effects-element-type-background), .elementor-1011 .elementor-element.elementor-element-98aaf75 > .elementor-motion-effects-container > .elementor-motion-effects-layer{background-color:transparent;background-image:linear-gradient(180deg, #450A61 0%, #681092 100%);}.elementor-1011 .elementor-element.elementor-element-98aaf75.e-con{--align-self:flex-start;--flex-grow:0;--flex-shrink:0;}.elementor-1011 .elementor-element.elementor-element-68c5d6c{column-gap:0px;text-align:justify;font-family:"Arimo", Sans-serif;font-size:13px;font-weight:400;color:#FFFFFF;}.elementor-1011 .elementor-element.elementor-element-68c5d6c a{color:#F6F6F6;}@media(min-width:768px){.elementor-1011 .elementor-element.elementor-element-1945f8b{--content-width:672px;}.elementor-1011 .elementor-element.elementor-element-98aaf75{--content-width:500px;}}@media(max-width:1024px){.elementor-1011 .elementor-element.elementor-element-376bd4b{--grid-auto-flow:row;}.elementor-1011 .elementor-element.elementor-element-009b7d1{--grid-auto-flow:row;}.elementor-1011 .elementor-element.elementor-element-5f4aef3{--grid-auto-flow:row;}.elementor-1011 .elementor-element.elementor-element-98aaf75{--grid-auto-flow:row;}}@media(max-width:767px){.elementor-1011 .elementor-element.elementor-element-376bd4b{--e-con-grid-template-columns:repeat(1, 1fr);--grid-auto-flow:row;}.elementor-1011 .elementor-element.elementor-element-009b7d1{--e-con-grid-template-columns:repeat(1, 1fr);--grid-auto-flow:row;}.elementor-1011 .elementor-element.elementor-element-5f4aef3{--e-con-grid-template-columns:repeat(1, 1fr);--grid-auto-flow:row;}.elementor-1011 .elementor-element.elementor-element-98aaf75{--e-con-grid-template-columns:repeat(1, 1fr);--grid-auto-flow:row;}}
FOOTER_CSS;
    echo '</style>';
    // Hide theme footer
    echo '<style>
    body.tahefobu-hide-theme-footer footer,
    body.tahefobu-hide-theme-footer .site-footer,
    body.tahefobu-hide-theme-footer #colophon {
        display: none !important;
    }
    </style>';
}, 5);

// Inject footer HTML
add_action('wp_footer', function() {
    echo '<div class="turbo-footer-template">';
    echo <<<'FOOTER_HTML'
<div data-elementor-type="wp-post" data-elementor-id="1011" class="elementor elementor-1011">
				<div class="elementor-element elementor-element-b2541fb e-flex e-con-boxed e-con e-parent" data-id="b2541fb" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;gradient&quot;}">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-376bd4b e-con-full e-grid e-con e-child" data-id="376bd4b" data-element_type="container" data-e-type="container">
				<div class="elementor-element elementor-element-b3ac62b elementor-widget elementor-widget-text-editor" data-id="b3ac62b" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p><strong style="font-size: 20px;">STAY UP TO DATE</strong></p><p>Be the first to know about new rides, hot promos and upcoming events at Doha Quest! Sign up to get first access now!</p>								</div>
				<div class="elementor-element elementor-element-491f71a elementor-widget elementor-widget-shortcode" data-id="491f71a" data-element_type="widget" data-e-type="widget" data-widget_type="shortcode.default">
							<div class="elementor-shortcode"><div class="forminator-ui forminator-custom-form forminator-custom-form-1139 forminator-design--default  forminator_ajax" data-forminator-render="0" data-form="forminator-module-1139" data-uid="6a3edea193f70"><br/></div><form
				id="forminator-module-1139"
				class="forminator-ui forminator-custom-form forminator-custom-form-1139 forminator-design--default  forminator_ajax"
				method="post"
				data-forminator-render="0"
				data-form-id="1139"
				 data-color-option="default" data-design="default" data-grid="open" style="display: none;"
				data-uid="6a3edea193f70"
			><div role="alert" aria-live="polite" class="forminator-response-message forminator-error" aria-hidden="true"></div><div class="forminator-row"><div id="email-1" class="forminator-field-email forminator-col forminator-col-12 "><div class="forminator-field"><input type="email" name="email-1" value="" placeholder="Email Address" id="forminator-field-email-1_6a3edea193f70" class="forminator-input forminator-email--field" data-required="true" aria-required="true" autocomplete="email" /></div></div></div><input type="hidden" name="referer_url" value="" /><div class="forminator-row forminator-row-last"><div class="forminator-col"><div class="forminator-field"><button class="forminator-button forminator-button-submit subformbutton">Subscribe</button></div></div></div><input type="hidden" id="forminator_nonce" name="forminator_nonce" value="6edf2e82b1" /><input type="hidden" name="_wp_http_referer" value="/wp-json/wp/v2/tahefobu_footer/1011" /><input type="hidden" name="form_id" value="1139"><input type="hidden" name="page_id" value="1011"><input type="hidden" name="form_type" value="default"><input type="hidden" name="current_url" value="https://bookings.dohaquest.com/?tahefobu_footer=questfooter"><input type="hidden" name="render_id" value="0"><input type="hidden" name="action" value="forminator_submit_form_custom-forms"></form></div>
						</div>
				</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-009b7d1 e-grid e-con-boxed e-con e-parent" data-id="009b7d1" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;gradient&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-abf6063 elementor-widget elementor-widget-text-editor" data-id="abf6063" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<div class="menu"><div class="menu" style="font-size: 20px; font-family: 'Roboto Condensed', sans-serif !important;"><strong>EXPERIENCES</strong></div><p><a href="https://dohaquest.com/en/rides">Rides &amp; Attractions</a><br /><a href="https://dohaquest.com/en/characters">Characters</a><br /><a href="https://dohaquest.com/en/shows">Shows</a><br /><a href="https://dohaquest.com/en/ifly">iFly</a><br /><a href="https://dohaquest.com/en/park">Park</a></p></div>								</div>
				<div class="elementor-element elementor-element-0196af9 elementor-widget elementor-widget-text-editor" data-id="0196af9" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<div class="menu"><div class="menu" style="font-size: 20px; font-family: 'Roboto Condensed', sans-serif !important;"><strong>PLAN YOUR VISIT</strong></div><p><a class="tickets-btn" href="https://bookings.dohaquest.com/" target="_blank" rel="noopener">Buy Tickets</a><br /><a href="https://store.dohaquest.com/" target="_blank" rel="noopener">Shop</a><br /><a href="https://dohaquest.com/en/dine">Dine</a><br /><a href="https://dohaquest.com/en/gift-cards">Gift Cards</a></p></div>								</div>
				<div class="elementor-element elementor-element-678cc3c elementor-widget elementor-widget-text-editor" data-id="678cc3c" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<div class="menu"><div class="menu"><strong style="font-size: 20px; font-family: 'Roboto Condensed', sans-serif !important;">EVENTS</strong></div><p><a href="https://dohaquest.com/en/celebrate">Celebrate</a><br /><a href="https://dohaquest.com/en/corporate-bookings">Corporate Bookings</a><br /><a href="https://dohaquest.com/en/school-bookings">School Bookings</a></p></div>								</div>
				<div class="elementor-element elementor-element-8916e63 elementor-widget elementor-widget-text-editor" data-id="8916e63" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<div class="menu"><div class="menu" style="font-size: 20px; font-family: 'Roboto Condensed', sans-serif !important;"><strong>ABOUT US</strong></div><p><a href="https://dohaquest.com/en/who-we-are">Who We Are</a><br /><a href="https://dohaquest.com/en/awards">Awards</a><br /><a href="https://dohaquest.com/en/faqs">FAQs</a><br /><a href="https://dohaquest.com/en/press-release">Press Release</a><br /><a href="https://dohaquest.com/en/contact">Contact Us</a></p></div>								</div>
					</div>
				</div>
		<div class="elementor-element elementor-element-5f4aef3 e-grid e-con-boxed e-con e-parent" data-id="5f4aef3" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;gradient&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-5caae56 elementor-widget elementor-widget-text-editor" data-id="5caae56" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p><strong style="font-size: 20px;">SAY HELLO</strong><br />Doha Oasis,Al Khaleej Street,<br />Doha, Qatar</p>								</div>
				<div class="elementor-element elementor-element-03cc0a0 elementor-widget elementor-widget-text-editor" data-id="03cc0a0" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p><strong style="font-size: 20px;">CONTACT SALES TEAM</strong><br />For FIT and Group, please email:<br /><a href="mailto:sales@dohaquest.com">sales@dohaquest.com</a></p>								</div>
		<div class="elementor-element elementor-element-1945f8b e-flex e-con-boxed e-con e-child" data-id="1945f8b" data-element_type="container" data-e-type="container">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-db807eb elementor-widget elementor-widget-text-editor" data-id="db807eb" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p class="text"><strong>FOLLOW US ON</strong></p>								</div>
				<div class="elementor-element elementor-element-0b438ce elementor-shape-circle elementor-grid-5 e-grid-align-left elementor-widget elementor-widget-social-icons" data-id="0b438ce" data-element_type="widget" data-e-type="widget" data-widget_type="social-icons.default">
							<div class="elementor-social-icons-wrapper elementor-grid" role="list">
							<span class="elementor-grid-item" role="listitem">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-facebook elementor-animation-grow elementor-repeater-item-26f7afe" href="https://www.facebook.com/dohaoasisquest" target="_blank">
						<span class="elementor-screen-only">Facebook</span>
						<svg aria-hidden="true" class="e-font-icon-svg e-fab-facebook" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M504 256C504 119 393 8 256 8S8 119 8 256c0 123.78 90.69 226.38 209.25 245V327.69h-63V256h63v-54.64c0-62.15 37-96.48 93.67-96.48 27.14 0 55.52 4.84 55.52 4.84v61h-31.28c-30.8 0-40.41 19.12-40.41 38.73V256h68.78l-11 71.69h-57.78V501C413.31 482.38 504 379.78 504 256z"></path></svg>					</a>
				</span>
							<span class="elementor-grid-item" role="listitem">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-instagram elementor-animation-grow elementor-repeater-item-c557d81" href="https://www.instagram.com/dohaquest/" target="_blank">
						<span class="elementor-screen-only">Instagram</span>
						<svg aria-hidden="true" class="e-font-icon-svg e-fab-instagram" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"></path></svg>					</a>
				</span>
							<span class="elementor-grid-item" role="listitem">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-tripadvisor elementor-animation-grow elementor-repeater-item-002f540" href="https://www.tripadvisor.com/Attraction_Review-g294009-d23451528-Reviews-Doha_Quest-Doha.html" target="_blank">
						<span class="elementor-screen-only">Tripadvisor</span>
						<svg aria-hidden="true" class="e-font-icon-svg e-fab-tripadvisor" viewBox="0 0 576 512" xmlns="http://www.w3.org/2000/svg"><path d="M528.91,178.82,576,127.58H471.66a326.11,326.11,0,0,0-367,0H0l47.09,51.24A143.911,143.911,0,0,0,241.86,390.73L288,440.93l46.11-50.17A143.94,143.94,0,0,0,575.88,285.18h-.03A143.56,143.56,0,0,0,528.91,178.82ZM144.06,382.57a97.39,97.39,0,1,1,97.39-97.39A97.39,97.39,0,0,1,144.06,382.57ZM288,282.37c0-64.09-46.62-119.08-108.09-142.59a281,281,0,0,1,216.17,0C334.61,163.3,288,218.29,288,282.37Zm143.88,100.2h-.01a97.405,97.405,0,1,1,.01,0ZM144.06,234.12h-.01a51.06,51.06,0,1,0,51.06,51.06v-.11A51,51,0,0,0,144.06,234.12Zm287.82,0a51.06,51.06,0,1,0,51.06,51.06A51.06,51.06,0,0,0,431.88,234.12Z"></path></svg>					</a>
				</span>
							<span class="elementor-grid-item" role="listitem">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-tiktok elementor-animation-grow elementor-repeater-item-a47526d" href="https://www.tiktok.com/@dohaoasisquest?lang=en" target="_blank">
						<span class="elementor-screen-only">Tiktok</span>
						<svg aria-hidden="true" class="e-font-icon-svg e-fab-tiktok" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M448,209.91a210.06,210.06,0,0,1-122.77-39.25V349.38A162.55,162.55,0,1,1,185,188.31V278.2a74.62,74.62,0,1,0,52.23,71.18V0l88,0a121.18,121.18,0,0,0,1.86,22.17h0A122.18,122.18,0,0,0,381,102.39a121.43,121.43,0,0,0,67,20.14Z"></path></svg>					</a>
				</span>
							<span class="elementor-grid-item" role="listitem">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-linkedin elementor-animation-grow elementor-repeater-item-cc74216" href="https://www.linkedin.com/company/doha-oasis-quest" target="_blank">
						<span class="elementor-screen-only">Linkedin</span>
						<svg aria-hidden="true" class="e-font-icon-svg e-fab-linkedin" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M416 32H31.9C14.3 32 0 46.5 0 64.3v383.4C0 465.5 14.3 480 31.9 480H416c17.6 0 32-14.5 32-32.3V64.3c0-17.8-14.4-32.3-32-32.3zM135.4 416H69V202.2h66.5V416zm-33.2-243c-21.3 0-38.5-17.3-38.5-38.5S80.9 96 102.2 96c21.2 0 38.5 17.3 38.5 38.5 0 21.3-17.2 38.5-38.5 38.5zm282.1 243h-66.4V312c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9V416h-66.4V202.2h63.7v29.2h.9c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9V416z"></path></svg>					</a>
				</span>
					</div>
						</div>
					</div>
				</div>
				<div class="elementor-element elementor-element-876f7f8 elementor-widget elementor-widget-text-editor" data-id="876f7f8" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p><a class="" href="https://dohaquest.com/en/privacy">Privacy Policy</a><br /><a class="" href="https://dohaquest.com/en/terms">Terms and conditions</a></p>								</div>
					</div>
				</div>
		<footer class="elementor-element elementor-element-98aaf75 e-grid e-con-boxed e-con e-parent" data-id="98aaf75" data-element_type="container" data-e-type="container" data-settings="{&quot;background_background&quot;:&quot;gradient&quot;}">
					<div class="e-con-inner">
				<div class="elementor-element elementor-element-68c5d6c elementor-widget elementor-widget-text-editor" data-id="68c5d6c" data-element_type="widget" data-e-type="widget" data-widget_type="text-editor.default">
									<p>Powered by <a href="https://www.dohaoasis.com/" target="_blank" rel="noopener">Doha Oasis Technology Department</a></p>								</div>
					</div>
				</footer>
				</div>
FOOTER_HTML;
    echo '</div>';
}, 5);

// Hide default theme footer
add_filter('body_class', function($classes) {
    $classes[] = 'tahefobu-hide-theme-footer';
    $classes[] = 'ta-custom-footer-enabled';
    return $classes;
});
