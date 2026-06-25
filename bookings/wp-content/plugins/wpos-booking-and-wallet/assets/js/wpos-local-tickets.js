/**
 * Doha Quest - Local Tickets Data & Cart System
 * Matches original bookings.dohaquest.com exactly
 */
(function($) {
    "use strict";

    // ===== بيانات التذاكر - مطابقة للأصلي =====
    var LOCAL_TICKETS = [
        {
            id: 131,
            name: "Online Admission \u2013 Adult",
            price: 235.00,
            currency: "QAR",
            min_qty: 1,
            max_qty: 10,
            img: "/bookings/wp-content/uploads/2025/12/cat-1.png",
            popup_content: 'Overview:\n<ul>\n<li>Persons of the age 13 and above are considered \u201cAdult\u201d</li>\n<li>Guests 12 years and below must be accompanied by a paying adult of at least 18 years old to allow access or admission.</li>\n<li>Full day access to all rides and attractions (iFLY Quest, iFly Quest &amp; racing simulators are at a separate cost)</li>\n<li>Ticket is only valid on selected date</li>\n<li>Booking amendments could be done only by calling 44103444 or sending an email to: sales@dohaquest.com</li>\n<li>Terms and conditions apply</li>\n</ul>'
        },
        {
            id: 130,
            name: "Online Admission \u2013 Junior",
            price: 160.00,
            currency: "QAR",
            min_qty: 1,
            max_qty: 10,
            img: "/bookings/wp-content/uploads/2025/12/cat-1.png",
            popup_content: 'Overview:\n<ul>\n<li>Persons that are 4-12 years old are considered \u201cJunior\u201d</li>\n<li>Guests 12 years and below must be accompanied by a paying adult of at least 18 years old to allow access or admission.</li>\n<li>Full day access to all rides and attractions (iFLY Quest, iFly Quest &amp; racing simulators are at a separate cost)</li>\n<li>Ticket is only valid on selected date</li>\n<li>Booking amendments could be done only by calling 44103444 or sending an email to: sales@dohaquest.com</li>\n<li>Terms and conditions apply</li>\n</ul>'
        },
        {
            id: 1361,
            name: "iFLY Quest \u2013 Non-Quest Ticket Holder",
            price: 200.00,
            currency: "QAR",
            min_qty: 1,
            max_qty: 10,
            img: "/bookings/wp-content/uploads/2025/12/cat-1.png",
            popup_content: 'Overview:\n<ul>\n<li style="list-style-type: none;"><ul>\n<li>iFLY Quest is an interactive indoor skydiving flight experience that simulates freefall skydiving using controlled vertical wind technology.</li>\n<li>Guests must be at least 3 years old and have a minimum height of 100 cm to participate in the iFLY Quest indoor skydiving experience.</li>\n<li>All flyers must complete registration and sign the mandatory waiver prior to participation.</li>\n<li>Flyers must comply with all safety rules, regulations, and instructor instructions at all times.</li>\n<li>Flyers will be in physical contact with an instructor for guidance, body positioning, and movement control. Female instructors are available upon request.</li>\n<li>Participation involves inherent risks, and flyers acknowledge and accept full responsibility for participation for themselves and/or their child(ren).</li>\n<li>Flyers confirm that they do not have any medical condition that may affect safe participation. Any prior injuries, shoulder dislocations, or medical concerns must be disclosed to staff before flying.</li>\n<li>Flyers with a history of nosebleeds must inform the instructor due to exposure to high atmospheric pressure.</li>\n<li>Guardians must be 18 years old or above. Minimum age and participation eligibility are determined by iFLY Quest management.</li>\n<li>All flight gear must be handled with care. Misuse may result in removal from the session.</li>\n<li>Doha Quest shall not be held liable for any injury, loss, or damage arising from participation, except as required by applicable law.</li>\n<li>Doha Quest reserves the right to suspend, delay, or cancel sessions for safety, operational, or technical reasons.</li>\n<li>Any flyer deemed by management to be behaving in an unsafe or disorderly manner may be removed from the session without refund.</li>\n<li>All other applicable Doha Quest and iFLY Quest Terms &amp; Conditions apply.</li>\n</ul></li>\n</ul>'
        }
    ];

    // ===== بناء HTML لبطاقة تذكرة - مطابق للأصلي تماماً =====
    function buildTicketHTML(ticket) {
        var priceStr = ticket.price.toFixed(2);
        return '<div class="wpos-bw-product-list wpos-bw-product-' + ticket.id + '" data-product-id="' + ticket.id + '">' +
            '<div class="wpos-bw-product-list-inr">' +
                '<div class="wpos-bw-product-img-wrap">' +
                    '<img alt="" class="wpos-bw-product-img" src="' + ticket.img + '"/>' +
                '</div>' +
                '<div class="wpos-bw-product-cnt-wrap">' +
                    '<h3 class="wpos-bw-product-ttl">' + ticket.name + '</h3>' +
                    '<div class="wpos-bw-price-wrap">' +
                        '<span class="wpos-bw-price" data-price="' + priceStr + '">' +
                            '<span class="wpos-bw-currency">QAR</span>' +
                            '<span>' + priceStr + '</span>' +
                        '</span>' +
                        '<span class="wpos-bw-ticket-text">/ Ticket</span>' +
                    '</div>' +
                    '<div class="wpos-bw-product-desc-wrap">' +
                        '<span class="wpos-bw-product-desc wpos-bw-product-popup-js">Show Details</span>' +
                    '</div>' +
                '</div>' +
                '<div class="wpos-bw-meta-wrap">' +
                    '<div class="wpos-bw-product-qty quantity">' +
                        '<span class="wpos-bw-qty-btn wpos-bw-minus-qty wpos-bw-minus-qty-js">-</span>' +
                        '<input class="input-text qty text" max="" min="1" name="quantity" step="1" type="text" value="1"/>' +
                        '<span class="wpos-bw-qty-btn wpos-bw-plus-qty wpos-bw-plus-qty-js">+</span>' +
                    '</div>' +
                    '<div class="wpos-bw-qty-err wpos-bw-hide">Minimum 1 quantities is required.</div>' +
                    '<div class="wpos-bw-product-add-to-cart">' +
                        '<a class="button add_to_cart_button ajax_add_to_cart wpos-wc-add-to-cart-btn" data-product_id="' + ticket.id + '" data-quantity="1" href="?add-to-cart=' + ticket.id + '" value="' + ticket.id + '">Add to Cart</a>' +
                    '</div>' +
                '</div>' +
                '<div class="wpos-bw-total-price-wrap">' +
                    '<span class="wpos-bw-currency">QAR</span>' +
                    '<span class="wpos-bw-total-price">' + priceStr + '</span>' +
                '</div>' +
            '</div>' +
            '<!-- Product Description Popup -->' +
            '<div class="wpos-bw-popup-wrap wpos-bw-popup-' + ticket.id + ' wpos-bw-hide">' +
                '<div class="wpos-bw-popup-overlay"></div>' +
                '<div class="wpos-bw-product-popup">' +
                    '<div class="wpos-bw-product-popup-inr">' +
                        '<span class="wpos-bw-popup-close wpos-bw-popup-close-js">X</span>' +
                        '<div class="wpos-bw-product-popup-body">' +
                            '<div class="wpos-bw-popup-ttl">' + ticket.name + '</div>' +
                            '<div class="wpos-bw-popup-cnt">' + ticket.popup_content + '</div>' +
                        '</div>' +
                    '</div>' +
                '</div>' +
            '</div>' +
        '</div>';
    }

    // ===== بناء HTML لكل التذاكر =====
    function buildAllTicketsHTML(selectedDate) {
        var html = '<div class="wpos-bw-available-tickets">Available Tickets: 3000</div>' +
            '<div class="wpos-bw-exp-product-wrap wpos-wc-bw-product-design-1">' +
            '<div class="wpos-bw-exp-product-inr">';
        for (var i = 0; i < LOCAL_TICKETS.length; i++) {
            html += buildTicketHTML(LOCAL_TICKETS[i]);
        }
        html += '</div></div>';
        return html;
    }

    // ===== Show Details popup =====
    $(document).on('click', '.wpos-bw-product-popup-js', function() {
        var productList = $(this).closest('.wpos-bw-product-list');
        var popup = productList.find('.wpos-bw-popup-wrap');
        popup.removeClass('wpos-bw-hide');
    });

    $(document).on('click', '.wpos-bw-popup-close-js', function() {
        $(this).closest('.wpos-bw-popup-wrap').addClass('wpos-bw-hide');
    });

    $(document).on('click', '.wpos-bw-popup-overlay', function() {
        $(this).closest('.wpos-bw-popup-wrap').addClass('wpos-bw-hide');
    });

    // ===== اعتراض AJAX calls =====
    var originalAjax = $.ajax;
    $.ajax = function(settings) {
        if (settings && settings.url && settings.url.indexOf('wpos_wc_bw_get_eg_data_process') !== -1) {
            var selectedDate = (settings.data && settings.data.date) ? settings.data.date : '';
            var displayDate = selectedDate;
            if (selectedDate) {
                try {
                    var d = new Date(selectedDate);
                    var day = d.getDate();
                    var suffix = 'th';
                    if (day === 1 || day === 21 || day === 31) suffix = 'st';
                    else if (day === 2 || day === 22) suffix = 'nd';
                    else if (day === 3 || day === 23) suffix = 'rd';
                    var months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
                    displayDate = day + suffix + ' ' + months[d.getMonth()] + ', ' + d.getFullYear();
                } catch(e) {}
            }
            localStorage.setItem('dq_visit_date', displayDate);
            localStorage.setItem('dq_visit_date_raw', selectedDate);

            var fakeResponse = {
                success: 1,
                date: selectedDate,
                booking_date: displayDate,
                booking_time: "14:00 - 22:00",
                time_slots: '',
                plu_html: buildAllTicketsHTML(displayDate),
                timer_html: '',
                event_id: '1',
                resource_id: '1',
                message: ''
            };
            setTimeout(function() { $('.wpos-wc-bw-overlay-wrap').hide(); }, 300);
            if (settings.success) {
                setTimeout(function() { settings.success(fakeResponse); }, 400);
            }
            return { done: function() { return this; }, fail: function() { return this; }, always: function() { return this; } };
        }
        return originalAjax.apply(this, arguments);
    };

    var originalPost = $.post;
    $.post = function(url, data, callback) {
        if (url && (url.indexOf('wpos_wc_bw_month_dates_process') !== -1 || url.indexOf('wpos_wc_bw_timer') !== -1)) {
            return { done: function() { return this; }, fail: function() { return this; } };
        }
        return originalPost.apply(this, arguments);
    };

    // ===== أزرار +/- =====
    $(document).on('click', '.wpos-bw-plus-qty-js', function() {
        var input = $(this).siblings('.qty');
        var max = parseInt(input.attr('max') || 10);
        var val = parseInt(input.val() || 0);
        if (val < max) {
            input.val(val + 1);
            updateTotal($(this).closest('.wpos-bw-product-list'));
        }
    });

    $(document).on('click', '.wpos-bw-minus-qty-js', function() {
        var input = $(this).siblings('.qty');
        var min = parseInt(input.attr('min') || 1);
        var val = parseInt(input.val() || 1);
        if (val > min) {
            input.val(val - 1);
            updateTotal($(this).closest('.wpos-bw-product-list'));
        }
    });

    function updateTotal(productEl) {
        var productId = parseInt(productEl.attr('data-product-id'));
        var qty = parseInt(productEl.find('.qty').val() || 1);
        var ticket = null;
        for (var i = 0; i < LOCAL_TICKETS.length; i++) {
            if (LOCAL_TICKETS[i].id === productId) { ticket = LOCAL_TICKETS[i]; break; }
        }
        if (ticket) {
            productEl.find('.wpos-bw-total-price').text((ticket.price * qty).toFixed(2));
            productEl.find('.wpos-wc-add-to-cart-btn').attr('data-quantity', qty);
        }
    }

    // ===== سلة التسوق =====
    function getCart() {
        try { return JSON.parse(localStorage.getItem('dq_cart') || '[]'); } catch(e) { return []; }
    }

    function saveCart(cart) {
        localStorage.setItem('dq_cart', JSON.stringify(cart));
        updateCartBadge();
        updateCartWidget();
    }

    function updateCartBadge() {
        var cart = getCart();
        var total = cart.reduce(function(sum, item) { return sum + item.qty; }, 0);
        $('a[href*="cart"] .count, .cart-contents-count, .wpos-wc-bw-cart-count').text(total > 0 ? total : '0');
    }

    // ===== تحديث الـ cart widget في صفحة Tickets =====
    function updateCartWidget() {
        var cart = getCart();
        var visitDate = localStorage.getItem('dq_visit_date') || '';
        var widget = $('.widget_shopping_cart_content');
        if (!widget.length) return;

        var items = cart.filter(function(i) { return i && i.qty > 0; });

        if (items.length === 0) {
            widget.html(
                '<div class="wpos-wc-bw-cart-widget">' +
                    '<div class="cart-header-wrap"><h4>Your Order</h4></div>' +
                    '<div class="cart-item-details">' +
                        '<div class="cart-item-header">' +
                            '<div class="cart-items"><h5>Items</h5></div>' +
                            '<div class="item-qty"><h5>Qty</h5></div>' +
                            '<div class="items-price"><h5>Price</h5></div>' +
                        '</div>' +
                        '<ul class="woocommerce-mini-cart cart_list product_list_widget"></ul>' +
                    '</div>' +
                    '<p class="woocommerce-mini-cart__total total"><strong>Subtotal:</strong> <span class="woocommerce-Price-amount amount"><bdi>0.00 <span class="woocommerce-Price-currencySymbol">QAR</span></bdi></span></p>' +
                    '<p class="order-total"><strong>Total:</strong> <span class="wpos-bw-mini-cart-total" data-title="Total"><strong><span class="woocommerce-Price-amount amount"><bdi>0.00 <span class="woocommerce-Price-currencySymbol">QAR</span></bdi></span></strong></span></p>' +
                    '<p class="woocommerce-mini-cart__buttons buttons"></p>' +
                    '<div class="wpos-wc-bw-action-btn">' +
                        '<a class="button wpos-wc-bw-back-btn" href="/bookings/?wpos-bw-back-url=1">Back</a>' +
                        '<a class="button wpos-wc-bw-view-cart-btn" href="/bookings/cart/">Continue</a>' +
                        '<a class="button wpos-wc-bw-addons-btn wpos-ptc-btn" href="/bookings/cart/">Proceed to Checkout</a>' +
                    '</div>' +
                '</div>'
            );
            return;
        }

        var subtotal = 0;
        var itemsHtml = '';
        items.forEach(function(item) {
            subtotal += (item.price || 0) * (item.qty || 0);
            var itemDate = item.visitDate || visitDate;
            itemsHtml +=
                '<li class="woocommerce-mini-cart-item mini_cart_item">' +
                    '<div class="cart-items">' +
                        '<div class="product-title"><span class="product-title">' + item.name + '</span></div>' +
                        '<dl class="variation">' +
                            '<dt class="variation-BookingDate">Booking Date:</dt>' +
                            '<dd class="variation-BookingDate"><p>' + itemDate + ' 14:00 - 22:00</p></dd>' +
                            '<dt class="variation-Category">Category:</dt>' +
                            '<dd class="variation-Category"><p>Admission Tickets</p></dd>' +
                        '</dl>' +
                        '<a class="remove remove_from_cart_button" href="/bookings/cart/?remove_item=' + item.id + '" data-product_id="' + item.id + '"><span>Remove</span></a>' +
                    '</div>' +
                    '<div class="item-qty">\xd71</div>' +
                    '<div class="items-price"><span class="woocommerce-Price-amount amount"><bdi>' + ((item.price || 0) * (item.qty || 0)).toFixed(2) + ' <span class="woocommerce-Price-currencySymbol">QAR</span></bdi></span></div>' +
                '</li>';
        });

        widget.html(
            '<div class="wpos-wc-bw-cart-widget">' +
                '<div class="cart-header-wrap"><h4>Your Order</h4></div>' +
                '<div class="cart-item-details">' +
                    '<div class="cart-item-header">' +
                        '<div class="cart-items"><h5>Items</h5></div>' +
                        '<div class="item-qty"><h5>Qty</h5></div>' +
                        '<div class="items-price"><h5>Price</h5></div>' +
                    '</div>' +
                    '<ul class="woocommerce-mini-cart cart_list product_list_widget">' + itemsHtml + '</ul>' +
                '</div>' +
                '<p class="woocommerce-mini-cart__total total"><strong>Subtotal:</strong> <span class="woocommerce-Price-amount amount"><bdi>' + subtotal.toFixed(2) + ' <span class="woocommerce-Price-currencySymbol">QAR</span></bdi></span></p>' +
                '<p class="order-total"><strong>Total:</strong> <span class="wpos-bw-mini-cart-total" data-title="Total"><strong><span class="woocommerce-Price-amount amount"><bdi>' + subtotal.toFixed(2) + ' <span class="woocommerce-Price-currencySymbol">QAR</span></bdi></span></strong></span></p>' +
                '<p class="woocommerce-mini-cart__buttons buttons"></p>' +
                '<div class="wpos-wc-bw-action-btn">' +
                    '<a class="button wpos-wc-bw-back-btn" href="/bookings/?wpos-bw-back-url=1">Back</a>' +
                    '<a class="button wpos-wc-bw-view-cart-btn" href="/bookings/cart/">Continue</a>' +
                    '<a class="button wpos-wc-bw-addons-btn wpos-ptc-btn" href="/bookings/cart/">Proceed to Checkout</a>' +
                '</div>' +
            '</div>'
        );
    }

    // ===== Remove from cart widget =====
    $(document).on('click', '.remove_from_cart_button', function(e) {
        e.preventDefault();
        var productId = parseInt($(this).attr('data-product_id'));
        var cart = getCart();
        cart = cart.filter(function(item) { return item.id !== productId; });
        saveCart(cart);
    });

    // ===== زر Add to Cart =====
    $(document).on('click', '.wpos-wc-add-to-cart-btn', function(e) {
        e.preventDefault();
        var btn = $(this);
        var productId = parseInt(btn.attr('data-product_id'));
        var productCard = btn.closest('.wpos-bw-product-list');
        var qtyInput = productCard.find('.qty');
        var qty = parseInt(qtyInput.val() || 1);

        var ticket = null;
        for (var i = 0; i < LOCAL_TICKETS.length; i++) {
            if (LOCAL_TICKETS[i].id === productId) { ticket = LOCAL_TICKETS[i]; break; }
        }
        if (!ticket || qty < 1) return;

        var cart = getCart();
        var visitDate = localStorage.getItem('dq_visit_date') || '';
        var existing = null;
        for (var j = 0; j < cart.length; j++) {
            if (cart[j].id === productId) { existing = cart[j]; break; }
        }
        if (existing) {
            existing.qty += qty;
        } else {
            cart.push({
                id: ticket.id,
                name: ticket.name,
                price: ticket.price,
                qty: qty,
                visitDate: visitDate
            });
        }
        saveCart(cart);

        // إظهار loading overlay ثم الانتقال للـ cart
        $('.wpos-wc-bw-overlay-wrap').show();
        setTimeout(function() {
            window.location.href = '/bookings/cart/';
        }, 600);
    });

    // ===== تحديث عداد السلة عند تحميل الصفحة =====
    $(document).ready(function() {
        updateCartBadge();
        updateCartWidget();
    });

    // ===== تحديث عند تغيير localStorage =====
    window.addEventListener('storage', function(e) {
        if (e.key === 'dq_cart') {
            updateCartBadge();
            updateCartWidget();
        }
    });

    // ===== تحديث دوري =====
    setInterval(function() {
        updateCartBadge();
        updateCartWidget();
    }, 1000);

})(jQuery);
