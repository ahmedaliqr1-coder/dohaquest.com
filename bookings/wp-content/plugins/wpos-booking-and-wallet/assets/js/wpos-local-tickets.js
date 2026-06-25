/**
 * Doha Quest - Local Tickets Data & Cart System
 * Matches original bookings.dohaquest.com design exactly
 */
(function($) {
    "use strict";

    // ===== CSS مخصص لبطاقات التذاكر =====
    var customCSS = `
        .dq-ticket-card {
            display: flex !important;
            align-items: flex-start !important;
            padding: 20px 0 !important;
            border-bottom: 1px solid #e5e5e5 !important;
            gap: 20px !important;
            background: #fff !important;
        }
        .dq-ticket-img-wrap {
            flex-shrink: 0 !important;
            width: 120px !important;
            height: 120px !important;
            overflow: hidden !important;
            border-radius: 6px !important;
        }
        .dq-ticket-img-wrap img {
            width: 120px !important;
            height: 120px !important;
            object-fit: cover !important;
            display: block !important;
            max-width: 120px !important;
        }
        .dq-ticket-info {
            flex: 1 !important;
            min-width: 0 !important;
        }
        .dq-ticket-name {
            margin: 0 0 4px !important;
            font-size: 16px !important;
            font-weight: 700 !important;
            color: #222 !important;
            line-height: 1.3 !important;
        }
        .dq-ticket-age {
            font-size: 13px !important;
            color: #888 !important;
            margin-bottom: 6px !important;
        }
        .dq-ticket-desc {
            font-size: 13px !important;
            color: #555 !important;
            margin-bottom: 8px !important;
            line-height: 1.5 !important;
        }
        .dq-ticket-price-label {
            font-size: 13px !important;
            color: #333 !important;
        }
        .dq-ticket-price-label strong {
            color: #5b2d8e !important;
            font-size: 15px !important;
        }
        .dq-ticket-total {
            font-size: 13px !important;
            color: #333 !important;
            margin-top: 4px !important;
        }
        .dq-ticket-total strong {
            color: #222 !important;
            font-weight: 700 !important;
        }
        .dq-ticket-actions {
            display: flex !important;
            flex-direction: column !important;
            align-items: flex-end !important;
            gap: 10px !important;
            flex-shrink: 0 !important;
        }
        .dq-qty-wrap {
            display: flex !important;
            align-items: center !important;
            border: 1px solid #ccc !important;
            border-radius: 4px !important;
            overflow: hidden !important;
        }
        .dq-qty-btn {
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
        }
        .dq-qty-btn:hover { background: #e0e0e0 !important; }
        .dq-qty-input {
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
        .dq-add-to-cart-btn {
            background: #5b2d8e !important;
            color: #fff !important;
            border: none !important;
            padding: 10px 20px !important;
            border-radius: 4px !important;
            cursor: pointer !important;
            font-size: 14px !important;
            font-weight: 600 !important;
            white-space: nowrap !important;
            transition: background 0.2s !important;
        }
        .dq-add-to-cart-btn:hover { background: #4a2478 !important; }
        .dq-add-to-cart-btn:disabled { background: #28a745 !important; }
        .dq-free-btn {
            background: #e8f5e9 !important;
            color: #2e7d32 !important;
            border: 1px solid #a5d6a7 !important;
            padding: 10px 20px !important;
            border-radius: 4px !important;
            font-size: 13px !important;
            font-weight: 600 !important;
            cursor: default !important;
        }
        .dq-badge {
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
        .dq-badge-free {
            background: #2e7d32 !important;
        }
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

        /* Mobile responsive for ticket cards */
        @media screen and (max-width: 600px) {
            .dq-ticket-card {
                flex-direction: row !important;
                flex-wrap: wrap !important;
                gap: 12px !important;
            }
            .dq-ticket-img-wrap {
                width: 80px !important;
                height: 80px !important;
                min-width: 80px !important;
            }
            .dq-ticket-img-wrap img {
                width: 80px !important;
                height: 80px !important;
                max-width: 80px !important;
            }
            .dq-ticket-info {
                flex: 1 !important;
                min-width: 150px !important;
            }
            .dq-ticket-name {
                font-size: 14px !important;
                white-space: normal !important;
                word-break: break-word !important;
            }
            .dq-ticket-actions {
                width: 100% !important;
                flex-direction: row !important;
                align-items: center !important;
                justify-content: space-between !important;
                flex-shrink: unset !important;
            }
            .dq-add-to-cart-btn {
                flex: 1 !important;
                padding: 10px 12px !important;
                font-size: 13px !important;
            }
        }
    `;

    // حقن CSS في الصفحة
    $('<style>').text(customCSS).appendTo('head');

    // ===== بيانات التذاكر الحالية =====
    var LOCAL_TICKETS = [
        {
            id: 131,
            name: "General Admission \u2013 Adult",
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
            name: "General Admission \u2013 Junior",
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
            name: "General Admission \u2013 Child (Under 4)",
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
            id: 132,
            name: "Time Portal \u2013 Fast Track Add-on",
            description: "Skip the queues on specific rides! Add this fast-track ticket to your booking for an enhanced experience.",
            price: 100,
            currency: "QAR",
            min_qty: 1,
            max_qty: 10,
            age_info: "All ages",
            badge: "ADD-ON",
            is_free: false,
            img: "/bookings/wp-content/uploads/2025/12/cat-1.png"
        }
    ];

    // ===== إنشاء HTML لبطاقة تذكرة =====
    function buildTicketHTML(ticket) {
        var priceStr = ticket.price.toFixed(2);
        var badgeHTML = ticket.badge ? '<span class="dq-badge' + (ticket.is_free ? ' dq-badge-free' : '') + '">' + ticket.badge + '</span>' : '';

        var actionsHTML = '';
        if (ticket.is_free) {
            actionsHTML = '<div class="dq-ticket-actions">' +
                '<button type="button" class="dq-free-btn">Free Entry \u2013 No Booking Required</button>' +
                '</div>';
        } else {
            actionsHTML = '<div class="dq-ticket-actions">' +
                '<div class="dq-qty-wrap">' +
                    '<button type="button" class="dq-qty-btn wpos-bw-minus-qty-js">\u2212</button>' +
                    '<input type="number" class="dq-qty-input qty" value="' + ticket.min_qty + '" min="' + ticket.min_qty + '" max="' + ticket.max_qty + '">' +
                    '<button type="button" class="dq-qty-btn wpos-bw-plus-qty-js">+</button>' +
                '</div>' +
                '<button type="button" class="dq-add-to-cart-btn wpos-wc-add-to-cart-btn" data-product-id="' + ticket.id + '" data-quantity="' + ticket.min_qty + '">Add to Cart</button>' +
                '</div>';
        }

        return '<div class="dq-ticket-card wpos-bw-product-list" data-product-id="' + ticket.id + '">' +
            '<div class="dq-ticket-img-wrap">' +
                '<img src="' + ticket.img + '" alt="' + ticket.name + '">' +
            '</div>' +
            '<div class="dq-ticket-info">' +
                '<h3 class="dq-ticket-name">' + ticket.name + badgeHTML + '</h3>' +
                '<div class="dq-ticket-age">' + ticket.age_info + '</div>' +
                '<div class="dq-ticket-desc">' + ticket.description + '</div>' +
                (ticket.is_free ? '' :
                    '<div class="dq-ticket-price-label">Price per ticket: <strong>' + priceStr + ' QAR</strong></div>' +
                    '<div class="dq-ticket-total">Total: <strong><span class="wpos-bw-total-price">' + priceStr + '</span> QAR</strong></div>'
                ) +
            '</div>' +
            actionsHTML +
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
            updateTotal($(this).closest('.dq-ticket-card'));
        }
    });

    $(document).on('click', '.wpos-bw-minus-qty-js', function() {
        var input = $(this).siblings('.qty');
        var min = parseInt(input.attr('min') || 1);
        var val = parseInt(input.val() || 1);
        if (val > min) {
            input.val(val - 1);
            updateTotal($(this).closest('.dq-ticket-card'));
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
        var productCard = btn.closest('.dq-ticket-card');
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
