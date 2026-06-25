/**
 * Doha Quest - Local Tickets Data & Cart System
 * Matches original bookings.dohaquest.com design exactly
 */
(function($) {
    "use strict";

    // ===== CSS مخصص لبطاقات التذاكر - يطابق الموقع الأصلي =====
    var customCSS = `
        /* بطاقة التذكرة - تطابق الأصلي */
        .wpos-bw-product-list {
            display: block !important;
            padding: 0 !important;
            margin-bottom: 0 !important;
            border-bottom: 1px solid #e5e5e5 !important;
            background: #fff !important;
        }
        .wpos-bw-product-list-inr {
            display: block !important;
        }
        /* صورة المنتج */
        .wpos-bw-product-img-wrap {
            width: 100% !important;
            margin-bottom: 0 !important;
        }
        .wpos-bw-product-img-wrap img {
            width: 100% !important;
            height: auto !important;
            max-height: 180px !important;
            object-fit: cover !important;
            display: block !important;
            border-radius: 0 !important;
        }
        /* محتوى البطاقة */
        .wpos-bw-product-cnt-wrap {
            padding: 12px 0 !important;
        }
        /* اسم التذكرة */
        .wpos-bw-product-ttl {
            font-size: 16px !important;
            font-weight: 700 !important;
            color: #5b2d8e !important;
            margin: 0 0 6px !important;
            line-height: 1.3 !important;
        }
        /* السعر */
        .wpos-bw-product-price {
            font-size: 15px !important;
            color: #333 !important;
            margin-bottom: 8px !important;
        }
        .wpos-bw-product-price .wpos-bw-price {
            font-weight: 700 !important;
            color: #333 !important;
        }
        .wpos-bw-product-price .wpos-bw-price-unit {
            font-size: 13px !important;
            color: #888 !important;
        }
        /* زر Show Details */
        .wpos-bw-product-desc-toggle {
            color: #5b2d8e !important;
            font-size: 13px !important;
            cursor: pointer !important;
            text-decoration: underline !important;
            margin-bottom: 10px !important;
            display: inline-block !important;
        }
        /* الوصف */
        .wpos-bw-product-desc {
            font-size: 13px !important;
            color: #555 !important;
            margin-bottom: 10px !important;
            line-height: 1.5 !important;
            display: none !important;
        }
        .wpos-bw-product-desc.open {
            display: block !important;
        }
        /* منطقة الكمية والإجمالي */
        .wpos-bw-product-action-wrap {
            display: flex !important;
            align-items: center !important;
            justify-content: space-between !important;
            flex-wrap: wrap !important;
            gap: 10px !important;
            padding: 8px 0 12px !important;
        }
        .wpos-bw-qty-price-wrap {
            display: flex !important;
            align-items: center !important;
            gap: 12px !important;
        }
        /* أزرار الكمية */
        .wpos-bw-qty-wrap {
            display: flex !important;
            align-items: center !important;
            border: 1px solid #ccc !important;
            border-radius: 4px !important;
            overflow: hidden !important;
        }
        .wpos-bw-qty-btn {
            width: 34px !important;
            height: 38px !important;
            background: #f5f5f5 !important;
            border: none !important;
            cursor: pointer !important;
            font-size: 18px !important;
            color: #333 !important;
            display: flex !important;
            align-items: center !important;
            justify-content: center !important;
            line-height: 1 !important;
            padding: 0 !important;
        }
        .wpos-bw-qty-btn:hover { background: #e0e0e0 !important; }
        .wpos-bw-qty-input {
            width: 44px !important;
            height: 38px !important;
            border: none !important;
            border-left: 1px solid #ccc !important;
            border-right: 1px solid #ccc !important;
            text-align: center !important;
            font-size: 15px !important;
            font-weight: 600 !important;
            color: #222 !important;
            background: #fff !important;
        }
        /* الإجمالي */
        .wpos-bw-product-total {
            font-size: 15px !important;
            font-weight: 700 !important;
            color: #333 !important;
        }
        /* زر Add to Cart */
        .wpos-wc-add-to-cart-btn {
            background: #510c76 !important;
            color: #fff !important;
            border: none !important;
            padding: 10px 22px !important;
            border-radius: 4px !important;
            cursor: pointer !important;
            font-size: 14px !important;
            font-weight: 600 !important;
            white-space: nowrap !important;
            transition: background 0.2s !important;
            text-decoration: none !important;
            display: inline-block !important;
        }
        .wpos-wc-add-to-cart-btn:hover { background: #6e1798 !important; color: #fff !important; }
        .wpos-wc-add-to-cart-btn:disabled { background: #28a745 !important; cursor: default !important; }
        /* زر Free */
        .wpos-bw-free-btn {
            background: #e8f5e9 !important;
            color: #2e7d32 !important;
            border: 1px solid #a5d6a7 !important;
            padding: 10px 22px !important;
            border-radius: 4px !important;
            font-size: 13px !important;
            font-weight: 600 !important;
            cursor: default !important;
        }
        /* Badge */
        .wpos-bw-badge {
            display: inline-block !important;
            background: #ff6b35 !important;
            color: #fff !important;
            font-size: 11px !important;
            font-weight: 700 !important;
            padding: 2px 8px !important;
            border-radius: 3px !important;
            margin-left: 6px !important;
            vertical-align: middle !important;
        }
        .wpos-bw-badge-free { background: #2e7d32 !important; }
        /* Header التذاكر */
        .dq-tickets-header {
            background: #f9f9f9 !important;
            border: 1px solid #e5e5e5 !important;
            border-radius: 6px !important;
            padding: 12px 16px !important;
            margin-bottom: 16px !important;
            font-size: 14px !important;
            color: #333 !important;
        }
        .dq-tickets-header strong { color: #5b2d8e !important; }

        /* Mobile */
        @media screen and (max-width: 600px) {
            .wpos-bw-product-img-wrap img {
                max-height: 140px !important;
            }
            .wpos-bw-product-action-wrap {
                flex-direction: column !important;
                align-items: flex-start !important;
            }
            .wpos-wc-add-to-cart-btn {
                width: 100% !important;
                text-align: center !important;
            }
        }
    `;

    // حقن CSS في الصفحة
    $('<style>').text(customCSS).appendTo('head');

    // ===== بيانات التذاكر الحالية =====
    var LOCAL_TICKETS = [
        {
            id: 131,
            name: "Online Admission \u2013 Adult",
            description: "For guests aged 13 years and above. Includes access to all rides and attractions.",
            price: 235,
            currency: "QAR",
            min_qty: 1,
            max_qty: 10,
            age_info: "Ages 13+",
            badge: "",
            is_free: false,
            img: "/bookings/wp-content/uploads/2025/12/cat-1.png"
        },
        {
            id: 130,
            name: "Online Admission \u2013 Junior",
            description: "For guests aged 4 to 12 years. Includes access to all suitable rides and attractions.",
            price: 160,
            currency: "QAR",
            min_qty: 1,
            max_qty: 10,
            age_info: "Ages 4\u201312",
            badge: "",
            is_free: false,
            img: "/bookings/wp-content/uploads/2025/12/cat-1.png"
        },
        {
            id: 129,
            name: "Online Admission \u2013 Child (Under 4)",
            description: "Children under 4 years old enter free of charge when accompanied by a paying adult.",
            price: 0,
            currency: "QAR",
            min_qty: 0,
            max_qty: 10,
            age_info: "Under 4 years",
            badge: "FREE",
            is_free: true,
            img: "/bookings/wp-content/uploads/2025/12/cat-1.png"
        },
        {
            id: 1361,
            name: "iFLY Quest \u2013 Non-Quest Ticket Holder",
            description: "Experience the thrill of indoor skydiving at iFLY Quest. Available for non-Quest ticket holders.",
            price: 200,
            currency: "QAR",
            min_qty: 1,
            max_qty: 10,
            age_info: "All ages",
            badge: "",
            is_free: false,
            img: "/bookings/wp-content/uploads/2025/12/cat-1.png"
        }
    ];

    // ===== إنشاء HTML لبطاقة تذكرة - يطابق الأصلي =====
    function buildTicketHTML(ticket) {
        var priceStr = ticket.price.toFixed(2);
        var badgeHTML = ticket.badge ? '<span class="wpos-bw-badge' + (ticket.is_free ? ' wpos-bw-badge-free' : '') + '">' + ticket.badge + '</span>' : '';

        var actionHTML = '';
        if (ticket.is_free) {
            actionHTML = '<div class="wpos-bw-product-action-wrap">' +
                '<button type="button" class="wpos-bw-free-btn">Free Entry \u2013 No Booking Required</button>' +
                '</div>';
        } else {
            actionHTML = '<div class="wpos-bw-product-action-wrap">' +
                '<div class="wpos-bw-qty-price-wrap">' +
                    '<div class="wpos-bw-qty-wrap">' +
                        '<button type="button" class="wpos-bw-qty-btn wpos-bw-minus-qty-js">\u2212</button>' +
                        '<input type="text" class="wpos-bw-qty-input qty" value="' + ticket.min_qty + '" min="' + ticket.min_qty + '" max="' + ticket.max_qty + '">' +
                        '<button type="button" class="wpos-bw-qty-btn wpos-bw-plus-qty-js">+</button>' +
                    '</div>' +
                    '<span class="wpos-bw-product-total"><span class="wpos-bw-total-price">' + priceStr + '</span> QAR</span>' +
                '</div>' +
                '<button type="button" class="wpos-wc-add-to-cart-btn" data-product-id="' + ticket.id + '" data-quantity="' + ticket.min_qty + '">Add to Cart</button>' +
                '</div>';
        }

        return '<div class="wpos-bw-product-list" data-product-id="' + ticket.id + '">' +
            '<div class="wpos-bw-product-list-inr">' +
                '<div class="wpos-bw-product-img-wrap">' +
                    '<img src="' + ticket.img + '" alt="' + ticket.name + '">' +
                '</div>' +
                '<div class="wpos-bw-product-cnt-wrap">' +
                    '<h3 class="wpos-bw-product-ttl">' + ticket.name + badgeHTML + '</h3>' +
                    (ticket.is_free ? '' :
                        '<div class="wpos-bw-product-price">' +
                            '<span class="wpos-bw-price">QAR&nbsp;&nbsp;' + priceStr + '</span>' +
                            '&nbsp;&nbsp;<span class="wpos-bw-price-unit">/ Ticket</span>' +
                        '</div>'
                    ) +
                    '<span class="wpos-bw-product-desc-toggle">Show Details</span>' +
                    '<div class="wpos-bw-product-desc">' + ticket.description + ' (' + ticket.age_info + ')</div>' +
                '</div>' +
            '</div>' +
            actionHTML +
        '</div>';
    }

    // ===== إنشاء HTML لكل التذاكر =====
    function buildAllTicketsHTML(selectedDate) {
        var headerHTML = '<div class="dq-tickets-header">' +
            '<strong>Visit Date:</strong> ' + selectedDate + '<br>' +
            'Tickets will be sent by email. All purchases are non-refundable.' +
            '</div>';
        var html = '<div class="wpos-bw-eg-plus-wrap-inner">' + headerHTML;
        for (var i = 0; i < LOCAL_TICKETS.length; i++) {
            html += buildTicketHTML(LOCAL_TICKETS[i]);
        }
        html += '</div>';
        return html;
    }

    // ===== Show Details toggle =====
    $(document).on('click', '.wpos-bw-product-desc-toggle', function() {
        var desc = $(this).next('.wpos-bw-product-desc');
        desc.toggleClass('open');
        $(this).text(desc.hasClass('open') ? 'Hide Details' : 'Show Details');
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
                    displayDate = d.toLocaleDateString('en-GB', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' });
                } catch(e) {}
            }

            localStorage.setItem('dq_visit_date', displayDate);
            localStorage.setItem('dq_visit_date_raw', selectedDate);

            var fakeResponse = {
                success: 1,
                date: selectedDate,
                booking_date: displayDate,
                booking_time: "2:00 PM \u2013 10:00 PM",
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

    // ===== سلة التسوق المحلية =====
    function getCart() {
        try { return JSON.parse(localStorage.getItem('dq_cart') || '[]'); } catch(e) { return []; }
    }
    function saveCart(cart) {
        localStorage.setItem('dq_cart', JSON.stringify(cart));
        updateCartBadge();
    }
    function updateCartBadge() {
        var cart = getCart();
        var total = cart.reduce(function(sum, item) { return sum + item.qty; }, 0);
        $('a[href*="cart"] .count, .cart-contents-count, .wpos-wc-bw-cart-count').text(total > 0 ? total : '0');
    }

    // ===== زر Add to Cart =====
    $(document).on('click', '.wpos-wc-add-to-cart-btn', function() {
        var btn = $(this);
        var productId = parseInt(btn.attr('data-product-id'));
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
                visitDate: visitDate,
                ageInfo: ticket.age_info
            });
        }
        saveCart(cart);

        btn.text('\u2713 Added!').prop('disabled', true);

        setTimeout(function() {
            window.location.href = '/bookings/cart/';
        }, 600);
    });

    // تحديث عداد السلة عند تحميل الصفحة
    $(document).ready(function() {
        updateCartBadge();
    });

})(jQuery);
# Last updated: Thu Jun 25 19:53:22 UTC 2026
