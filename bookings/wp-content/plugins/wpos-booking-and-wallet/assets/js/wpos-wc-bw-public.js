(function ($){

	"use strict";

	/* Check mousemove event to  create a cookie */
	$(document).mousemove( function( event ) {
		wpos_wc_bw_create_cookie( 'wpos_wc_bw_sess_cookie', 1, '', '', 'Lax' );
	});

	/* Initialize Timer */
	wpos_wc_bw_all_timer_init();

	/* Click on change button to show/hide datepicker */
	$(document).on('click', '.wpos-wcb-change-date-js', function() {

		var this_ele		= $(this);
		var cls_ele			= this_ele.closest( '.wpos-wc-bw-product-ccat' );

		cls_ele.find('.wpos-wc-bw-show-date-time').toggle('300');
	});

	$(document).on('click', '.wpos-wc-bw-acc-heading-js', function() {

		var this_ele		= $(this);
		var cls_ele			= this_ele.closest('.wpos-wc-bw-product-ccat');
		var child_cat_id	= this_ele.attr('data-ccat-id');

		var selected_date = cls_ele.find('.wpos-wc-bw-accordion-wrap').attr('data-visit-date');

		wpos_wc_bw_calendar( selected_date );

		if( selected_date != '' && ! cls_ele.hasClass('wpos-wc-bw-acc-active') ) {

			var datepicker_id = cls_ele.find( '.wpos-wcb-datepicker' ).attr('id');

			/* Function to get the timeslots of the selected date using ajax */
			wpos_wc_bw_datepicker_ajax( this_ele, selected_date, 'timeslot_select' );
		}

		cls_ele.find('.wpos-wc-bw-acc-content-'+ child_cat_id ).slideToggle();
		cls_ele.toggleClass("wpos-wc-bw-acc-active");
	});

	/* Check if cat_id is there to trigger first toggle */
	if( WposWcBwPublic.cat_id != '' ) {
		$('.wpos-wc-bw-acc-heading-js').first().trigger('click');
	}

	/* On click timeslot to submit the caleder */
	$(document).on('click', '.wpos-wcb-time-slot-js', function() {

		var this_ele	= $(this);
		var cls_ele		= this_ele.closest( '.wpos-wcb-timeslots-main' );
		var event_id	= this_ele.attr('data-event-id');

		cls_ele.find('.wpos-bw-event-id-js').val( event_id );

		if( ! this_ele.hasClass( 'active' ) ) {
			wpos_wc_bw_show_calender_popup( $(this), $('.wpos-wc-bconfirm-popup') );
		}
	});

	/* On click to Confirm Booking - JS */
	$(document).on('click', '.wpos-wc-bw-popup-accept-btn', function() {

		var this_ele	= $(this);
		var cls_ele		= this_ele.closest('.wpos-wc-bw-popup-data-wrp');
		var ccat_id		= cls_ele.attr('data-ccat-id');
		var event_id	= $('.wpos-wc-bw-cat-'+ccat_id).find('.wpos-bw-event-id-js').val();

		if( event_id != '' ) {
			$('.wpos-wc-bw-cat-'+ccat_id+' #wpos-wcb-timeslot-form').submit();
		}
	});

	/* Mini cart scroll on view cart button - JS */
	$(document).on('click', '.wpos-bw-product-list .added_to_cart', function(e) {

		e.preventDefault();

		$('html, body').animate({
			scrollTop: $('.wpos-bw-booking-right').offset().top
		}, 600);
	});

	$(document).on('submit', '#wpos-wcb-timeslot-form', function(e) {

		e.preventDefault();

		var this_ele		= $(this);
		var form_data		= this_ele.serialize();
		var cls_ele			= this_ele.closest('.wpos-wc-bw-product-ccat');
		var selected_date	= cls_ele.find('.wpos-wc-bw-accordion-wrap').attr('data-visit-date');

		/* Function to get the timeslots of the selected date using ajax */
		wpos_wc_bw_datepicker_ajax( this_ele, selected_date, 'timeslot_select', form_data );
	});

	/* On click to ajax cart button to return false */
	$(document).on('click', '.wpos-wcb-ajax-cart-btn', function() {
		return false;
	});

	/* Show product description popup - JS */
	$(document).on('click', '.wpos-bw-product-popup-js', function() {

		var this_ele	= $(this);
		var cls_ele		= this_ele.closest('.wpos-bw-product-list');
		var product_id	= cls_ele.attr('data-product-id');

		cls_ele.find('.wpos-bw-popup-'+product_id).removeClass('wpos-bw-hide');
	});

	/* On click to close popup */
	$(document).on('click', '.wpos-bw-popup-close-js', function() {

		var this_ele	= $(this);
		var cls_ele		= this_ele.closest('.wpos-bw-popup-wrap');

		cls_ele.addClass('wpos-bw-hide');
	});

	/* On click checkbox to copy visitor details to billing details */
	$(document).on('change', '#_wpos_wc_bw_copy_visitor_details', function() {

		var this_ele	= $(this);
		var cls_ele		= this_ele.closest('#customer_details');
		var first_name	= cls_ele.find('.wpos-bw-visitor-firstname input').val();
		var last_name	= cls_ele.find('.wpos-bw-visitor-lastname input').val();
		var email		= cls_ele.find('.wpos-bw-visitor-email input').val();

		/* Fill the billing details from visitor details */
		$('#billing_first_name').val('');
		$('#billing_last_name').val('');
		$('#billing_email').val('');

		if( $(this).is(":checked") ) {

			/* Fill the billing details from visitor details */
			$('#billing_first_name').val( first_name );
			$('#billing_last_name').val( last_name );
			$('#billing_email').val( email );
		}
	});

	/* Quantity Increase on change QTY */
	$(document).on('change wpos_bw_qty_change_trigger', '.wpos-bw-product-qty .qty', function( e, click_ele ) {

		var this_ele	= $(this);
			this_ele	= ( typeof( click_ele ) !== 'undefined' ) ? $(click_ele) : this_ele;
		var cls_ele		= this_ele.closest('.wpos-bw-product-list');
		var qty			= cls_ele.find('.qty');
		var qty_val		= qty.val();
		var min			= qty.attr('min');
		var price		= cls_ele.find('.wpos-bw-price').attr('data-price');
		var total_price	= Number( price );
		var qty_data	= qty_val;

		cls_ele.find('.wpos-bw-qty-err').hide();

		$('[name="update_cart"]').removeAttr('disabled');

		if( this_ele.is( '.wpos-bw-plus-qty-js' ) ) {

			qty_data = ++qty_val;

		} else if( this_ele.is( '.wpos-bw-minus-qty-js' ) ) {

			qty_data = --qty_val;
		}

		if( min && ( min >= qty_val ) ) {
			qty_data = min;

			cls_ele.find('.wpos-bw-qty-err').show();
		}

		total_price	= ( price * qty_data );
		total_price	= total_price.toFixed(2);

		qty.val( qty_data );
		cls_ele.find('.wpos-wc-add-to-cart-btn').attr('data-quantity', qty_data);

		cls_ele.find('.wpos-bw-total-price').text( total_price );
	});

	/* Update quantity on plus/minus JS */
	$(document).on('click', '.wpos-bw-minus-qty-js, .wpos-bw-plus-qty-js', function() {

		var this_ele	= $(this);
		var cls_ele		= this_ele.closest('.wpos-bw-product-list');

		cls_ele.find('.qty').trigger( 'wpos_bw_qty_change_trigger', this_ele );
	});

	/* On click more details to show/hide booking details */
	$(document).on('click', '.wpos-wcb-booking-details-js', function() {

		var this_ele	= $(this);
		var cls_ele		= this_ele.closest('.wpos-wcb-list');

		cls_ele.find('.wpos-wcb-product-desc').toggle( 300 );
		cls_ele.toggleClass('wpos-wcb-active');

		if( cls_ele.hasClass('wpos-wcb-active') ) {
			cls_ele.find('.wpos-wcb-more-detail-btn').hide();
			cls_ele.find('.wpos-wcb-less-detail-btn').show();
		} else {
			cls_ele.find('.wpos-wcb-more-detail-btn').show();
			cls_ele.find('.wpos-wcb-less-detail-btn').hide();
		}
	});

	/* Order more detail JS */
	$(document).on('click', '.wpos-wcb-view-detail-js', function() {

		var this_ele	= $(this);
		var order_id	= this_ele.attr('data-order-id');

		$('#wpos-wcb-order-detail-'+order_id).toggleClass('wpos-wcb-active');
	});

	/* Close text to close the toggle of order detail */
	$(document).on('click', '.wpos-wcb-close-toggle', function() {

		var this_ele	= $(this);
		var cls_ele		= this_ele.closest('.wpos-wcb-order-details-row');
		cls_ele.removeClass('wpos-wcb-active');
	});

	/* Booking Closed Popup - JS */
	$(document).on('click', '.wpos-wc-bw-eg-close', function() {
		wpos_wc_bw_show_calender_popup( $(this), $('.wpos-wc-bclosed-popup') );
	});

	/* Holiday Popup - JS */
	$(document).on('click', '.wpos-wc-bw-h-close', function() {
		wpos_wc_bw_show_calender_popup( $(this), $('.wpos-wc-holiday-popup') );
	});

	/* Closed Popup - JS */
	$(document).on('click', '.wpos-wc-bw-popup-close', function() {

		var this_ele	= $(this);
		var cls_ele		= this_ele.closest('.wpos-wc-bw-popup-data-wrp');

		cls_ele.removeClass('wpos-wc-bw-active');
		cls_ele.hide();

		$('.wpos-wc-bw-popup-overlay-js').hide();
		$('html').removeClass('wpos-wc-bw-overflow');
	});

	/* On Escape key to close the popup */
	$(document).on('keydown', function(event) {
		if( event.key == "Escape" ) {
			$('.wpos-wc-bw-popup-close').trigger('click');
		}
	});

	/* Session expire btn Click - JS */
	$(document).on('click', '.wpos-wc-bw-popup-session-btn', function() {

		var redirect_link = $(this).attr('href');

		window.location.href = redirect_link;
	});

	/* If caching is there */
	jQuery( '.wpos-wc-bw-timer-ajax' ).each(function( index ) {

		var cls_ele		= jQuery(this);
		var timer_conf	= JSON.parse( cls_ele.attr('data-conf') );
		var is_caching	= timer_conf.is_caching;

		if( is_caching == 1 ) {

			var timer_data = {
				'action'		: 'wpos_wc_bw_timer_caching_data',
				'timer_conf'	: timer_conf,
			};

			jQuery.post( WposWcBwPublic.ajax_url, timer_data, function( response ) {

				if( response.success == 1 ) {

					cls_ele.find('.wpos-wc-bw-timer-design').html( response.data );

					/* Initialize Timer */
					wpos_wc_bw_all_timer_init( response, cls_ele );
				}
			});
		}
	});

	/* On removed cart item to check empty cart to redirect ticket page */
	$( document ).on( 'removed_from_cart', function( event, fragments, cart_hash ) {

		if( cart_hash == '' ) {
			window.location.href = WposWcBwPublic.booking_page_url;
		}
	});
})(jQuery);

/* Initialize Calendar */
function wpos_wc_bw_calendar( selected_date ) {

	jQuery( '.wpos-wcb-datepicker' ).each(function( index ) {

		var datepicker_id = jQuery(this).attr('id');

		if( typeof( jQuery('#'+datepicker_id) ) !== 'undefined' ) {

			if( jQuery(this).hasClass('hasDatepicker') ) {
				return;
			}

			var ajax_flag		= 0;
			var ajax_fire		= 0;
			var curr_year		= '';
			var curr_month		= '';
			var is_timeslots	= WposWcBwPublic.timeslots_enable;
			var this_ele		= jQuery('#'+datepicker_id);
			var cls_ele			= this_ele.closest('.wpos-wc-bw-product-ccat');
			var event_type_id	= cls_ele.find('.wpos-wc-bw-acc-heading-js').attr('data-event-type-id');
				var holiday_dates	= [];
				var eg_dates		= [];
				var dates_arr		= [];

				jQuery('#'+datepicker_id).datepicker({
					minDate			: 0,
					dateFormat		: "yy-mm-dd",
					maxDate			: '+730d',
				isRTL			: ( WposWcBwPublic.is_rtl == 1 ) ? true : false,
				prevText		: WposWcBwPublic.cal_prev_text,
				nextText		: WposWcBwPublic.cal_next_text,
				monthNames		: WposWcBwPublic.cal_month_names,
				dayNamesMin 	: WposWcBwPublic.cal_day_names_min,
				dayNamesShort	: WposWcBwPublic.cal_day_names_short,
				firstDay		: 0,
				beforeShow		: function( input, inst ) {
									jQuery('#ui-datepicker-div').addClass( this.id );
								},
				onSelect		: function( date, picker ) {

									/* Function to get the timeslots of the selected date using ajax */
									wpos_wc_bw_datepicker_ajax( this_ele, date, 'date_select' );
								},
				beforeShowDay	: function(date) {

									if( ajax_flag == 0 && ajax_fire == 1 ) {

										jQuery('.wpos-wc-bw-overlay-wrap').css('display', 'flex');

										var month_date_data	= {
											'action'		: 'wpos_wc_bw_month_dates_process',
											'year'			: curr_year,
											'month'			: curr_month,
											'event_type_id'	: event_type_id,
										};

										jQuery.post(WposWcBwPublic.ajax_url, month_date_data, function(response) {

								if( response.success == 1 ) {

									// تجاهل التواريخ المغلقة من السيرفر - كل التواريخ مفتوحة
									eg_dates = [];
									dates_arr = [];

									/* Refresh datepicker */
									jQuery('#'+datepicker_id).datepicker( "refresh" );
								}

											jQuery('.wpos-wc-bw-overlay-wrap').hide();
										});
										ajax_flag = 1;
									}

									var date_string = jQuery.datepicker.formatDate( 'yy-mm-dd', date );

									var date_cls = 'wpos-wc-bw-date-'+date_string;

									/* Check if date is there into holiday array to add holiday date */
									if( jQuery.inArray( date_string, holiday_dates ) !== -1 ) {
										date_cls += ' wpos-wc-bw-h-close';
									}

									/* Check if date is there into eGalaxy date array to add eg date */
									if( jQuery.inArray( date_string, eg_dates ) !== -1 ) {
										date_cls += ' wpos-wc-bw-eg-close';
									}

	        						return [ dates_arr.indexOf(date_string) == -1, date_cls ]
								},
				onChangeMonthYear : function( year, month, widget ) {

									/* Override some variables value */
									ajax_flag	= 0;
									ajax_fire	= 1;
									curr_year	= year;
									curr_month	= month;
								}
			});

			/* Check if cookiwe */
			if( selected_date != '' ) {
				jQuery('#'+datepicker_id).datepicker('setDate', selected_date);
			}
		}
	});
}

/* Function to get the timeslots of the selected date using ajax */
function wpos_wc_bw_datepicker_ajax( this_ele, date, select_type, form_data ) {

	var cls_ele			= this_ele.closest( '.wpos-wc-bw-accordion-wrap' );
	var shrt_atts		= JSON.parse( jQuery('.wpos-bw-booking-wrap').attr( 'data-atts' ) );
	var parent_cat_id	= cls_ele.find('.wpos-wc-bw-acc-heading-js').attr('data-pcat-id');
	var child_cat_id	= cls_ele.find('.wpos-wc-bw-acc-heading-js').attr('data-ccat-id');
	var select_type		= select_type ? select_type : '';

	// cls_ele.find('.wpos-wcb-timeslot-wrap').empty();
	// cls_ele.find('.wpos-bw-eg-plus-wrap').empty();

	if( select_type == 'timeslot_select' ) {
		jQuery('.wpos-wc-bw-popup-close').trigger('click');
	}

	jQuery('.wpos-wc-bw-overlay-wrap').css('display', 'flex');

	jQuery.ajax({
		type	: "POST",
		url		: WposWcBwPublic.ajax_url+"?action=wpos_wc_bw_get_eg_data_process",
		data	: {
					'date' 			: date,
					'parent_cat_id'	: parent_cat_id,
					'child_cat_id'	: child_cat_id,
					'shrt_atts'		: shrt_atts,
					'type'			: select_type,
					'form_data'		: form_data ? form_data : '',
					'curr_page_url'	: WposWcBwPublic.current_page_url,
				},
		success	: function(result) {
							// Show timeslots wrapper only when enabled and in multiple mode
							var show_timeslots = ( parseInt(WposWcBwPublic.timeslots_enable, 10) === 1 && WposWcBwPublic.timeslots_mode === 'multiple' );
							if( show_timeslots ) {
								cls_ele.find('.wpos-wcb-timeslots-main').show();
							} else {
								cls_ele.find('.wpos-wcb-timeslots-main').hide();
							}

					if( result.success == 1 ) {

						if( result.timer_html != '' ) {
							jQuery('.wpos-wc-bw-step-timer-wrp').append( result.timer_html );

							/* Initialize Timer */
							wpos_wc_bw_all_timer_init();
						}

						cls_ele.find('.wpos-wcb-booking-date').val( result.date );
						cls_ele.attr( 'data-visit-date', result.date );
						cls_ele.find('.wpos-wcb-timeslot-wrap').html( result.time_slots );
						cls_ele.find('.wpos-bw-eg-plus-wrap').html( result.plu_html );

					} else {
						cls_ele.find('.wpos-wcb-timeslot-wrap').html('<div class="wpos-wcb-no-data-notice">'+ result.message +'</div>');
					}

					cls_ele.find('.wpos-wcb-selected-date').text( result.booking_date );
					cls_ele.find('.wpos-wcb-selected-time').text( result.booking_time );
							// Populate identifiers (required for booking flow)
							if( typeof result.event_id !== 'undefined' ) {
								cls_ele.find('.wpos-wcb-event-id-js').val( result.event_id );
							}
							if( typeof result.resource_id !== 'undefined' ) {
								cls_ele.find('.wpos-wcb-resource-id-js').val( result.resource_id );
							}

					jQuery('.wpos-wc-bw-overlay-wrap').hide();
				}
	});
}

/* Function to get the dates month wise */
function wpos_wc_bw_get_month_wise_dates( year, month ) {

	var month_date_data	= {
		'action'	: 'wpos_wc_bw_month_dates_process',
		'year'		: year,
		'month'		: month,
	};

	jQuery.post(WposWcBwPublic.ajax_url, month_date_data, function(response) {

		if( response.success == 1 ) {
			return response.dates;
		}
	});
}

/* Function to convert object to array */
function wpos_wc_bw_obj_to_arr( obj ) {

	var wpos_bw_arr = jQuery.map(obj, function( value, index ) {
		return [value];
	});

	return wpos_bw_arr;
}

/* Function to Create Cookie */
function wpos_wc_bw_create_cookie( name, value, time_val, type, samesite ) {

	var date, expires, expire_time, samesite;

	time_val	= time_val	? time_val	: false;
	type		= type		? type		: 'day';
	samesite	= samesite	? ";SameSite="+samesite : '';

	if( type == 'hour' ) {
		expire_time = (time_val * 60 * 60 * 1000);

	} else if( type == 'minutes' ) {
		expire_time = (time_val * 60 * 1000);

	} else {
		expire_time = (time_val * 24 * 60 * 60 * 1000);
	}

	if ( time_val ) {
		date = new Date();
		date.setTime( date.getTime() + expire_time );
		expires = "; expires="+date.toGMTString();
	} else {
		expires = "";
	}
	document.cookie = encodeURIComponent(name) + "=" + value + expires + "; path=/"+samesite;
}

/* Function to show calendar date popup */
function wpos_wc_bw_show_calender_popup( this_ele, popup_ele ) {

	var cls_ele			= this_ele.closest('.wpos-wc-bw-accordion-wrap');
	var ccat_id			= cls_ele.find('.wpos-wc-bw-acc-heading').attr( 'data-ccat-id' );
	var html_classes	= this_ele.attr("class").split(' ');

	jQuery.each(html_classes, function( class_key, class_val ) {

		var bdate_cls = class_val.indexOf('wpos-wc-bw-date-');

		if( bdate_cls >= 0 ) {

			var target_date = class_val.replace('wpos-wc-bw-date-', '');
				target_date = jQuery.datepicker.formatDate( "DD dd MM yy", new Date( target_date ) );

			var target_time = this_ele.attr('data-start-end-time');

			var popup_cnt = popup_ele.find('.wpos-wc-bw-popup-cnt').html();
				popup_cnt = popup_cnt.replace( "{date}", target_date );
				popup_cnt = popup_cnt.replace( "{time}", target_time );

			popup_ele.find('.wpos-wc-bw-popup-body').html( popup_cnt );
		}
	});

	jQuery('html').addClass('wpos-wc-bw-overflow');
	popup_ele.attr( 'data-ccat-id', ccat_id );
	jQuery('.wpos-wc-bw-popup-overlay-js').show();
	popup_ele.show();

	setTimeout(function() {
		popup_ele.addClass('wpos-wc-bw-active');
	}, 50);
}

/* Function to initialize all the timer */
function wpos_wc_bw_all_timer_init( caching_data, ele_obj ) {

	var timer_cls	= ' .wpos-wc-bw-clock';
	var shrt_atts	= caching_data	? caching_data.shrt_atts : '';

	/* Simple Timer Type Design 1 Timer Intialize */
	var timer_obj	= ele_obj	? ele_obj.find('.wpos-wc-bw-clock-simple') : jQuery( '.wpos-wc-bw-smpl-timer-wrap .wpos-wc-bw-clock-simple' );

	timer_obj.each(function( index ) {

		var cls_ele		= jQuery(this).closest('.wpos-wc-bw-smpl-timer-wrap');
		var timer_conf	= shrt_atts ? shrt_atts : JSON.parse( cls_ele.attr('data-conf') );
		var timer_id	= cls_ele.find('.wpos-wc-bw-timer-js').attr('id');
			timer_id	= timer_id + ' .wpos-wc-bw-clock-simple';

		var date_diff	= timer_conf.date_diff;
		var over_conf = wpos_wc_bw_timer_over_conf( timer_conf, timer_id );

		/* If check caching and ajax response is null */
		if( timer_conf.is_caching == 1 && ! caching_data ) {
			return;
		}

		/* Check Timer Initialize Class */
		if( jQuery('#'+timer_id).hasClass('wpos-wc-bw-timer-initialized') ) {
			return;
		}

		jQuery("#"+timer_id).WposWcBwtClock({
			currentDateTime	: timer_conf.date_c,
			day				: date_diff.day,
			month			: date_diff.month,
			year			: date_diff.year,
			hour			: date_diff.hour,
			minute			: date_diff.minute,
			second			: date_diff.second,
			daysLabel		: timer_conf.day_text,
			hoursLabel		: timer_conf.hour_text,
			minutesLabel	: timer_conf.minute_text,
			secondsLabel	: timer_conf.second_text,
			timeZone		: parseFloat( WposWcBwPublic.timezone ),
			onComplete		: function() {
								wpos_wc_bw_timer_over( over_conf, timer_conf );
							},
		}).addClass('wpos-wc-bw-timer-initialized');
	});
}

/* Function when clock timer is finished */
function wpos_wc_bw_timer_over( over_conf, timer_conf ) {

	var cls_ele = jQuery('#'+ over_conf.timer_id).closest('.wpos-wc-bw-timer-wrap');

	var data = {
		'action'		: 'wpos_wc_bw_end_timer',
		'timer_conf'	: timer_conf,
	};

	/* Trigger For Before Fire Ajax */
	jQuery('body').trigger('wpos_wc_bw_timer_before_finish', [ over_conf, timer_conf, cls_ele ] );

	jQuery.post( WposWcBwPublic.ajax_url, data, function( response ) {

		// if( response.success == 1 ) {

		// 	jQuery('html').addClass('wpos-wc-bw-overflow');
		// 	jQuery('.wpos-wc-bw-spopup-overlay-js').show();
		// 	jQuery('.wpos-wc-session-popup').show();

		// 	/* Trigger fire to close the Freedom Pay payment gateway popup */
		// 	jQuery('.fdppg-popup-close').trigger('click');

		// 	/* Trigger For After Finish Ajax */
		// 	jQuery('body').trigger('wpos_wc_bw_timer_after_finish', [ over_conf, timer_conf, response, cls_ele ] );
		// }
	});
}

/* Fundtion to get timer over conf */
function wpos_wc_bw_timer_over_conf( timer_conf, timer_id ) {

	var over_conf = {
		'timer_id'					: timer_id,
		'content_after_complete'	: timer_conf.content_after_complete,
	};

	return over_conf;
}