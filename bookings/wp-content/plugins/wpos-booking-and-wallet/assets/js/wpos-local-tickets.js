/**
 * Doha Quest - Local Tickets Data & Cart System
 * Matches original bookings.dohaquest.com design exactly
 */
(function($) {
    "use strict";

    // ===== بيانات التذاكر الحالية =====
    var LOCAL_TICKETS = [
        {
            id: 131,
            name: "Online Admission – Adult",
            description: "For guests aged 13 years and above. Includes access to all rides and attractions.",
            price: 235,
            currency: "QAR",
            min_qty: 1,
            max_qty: 10,
            age_info: "Ages 13+",
            badge: "",
            img: "/bookings/wp-content/uploads/2025/12/cat-1.png"
        },
        {
            id: 130,
            name: "Online Admission – Junior",
            description: "For guests aged 4 to 12 years. Includes access to all suitable rides and attractions.",
            price: 160,
            currency: "QAR",
            min_qty: 1,
            max_qty: 10,
            age_info: "Ages 4–12",
            badge: "",
            img: "/bookings/wp-content/uploads/2025/12/cat-1.png"
        },
        {
            id: 1361,
            name: "iFLY Quest – Non-Quest Ticket Holder",
            description: "Experience iFLY indoor skydiving at Doha Quest. Available for non-Quest ticket holders.",
            price: 200,
            currency: "QAR",
            min_qty: 1,
            max_qty: 10,
            age_info: "All ages",
            badge: "",
            img: "/bookings/wp-content/uploads/2025/12/cat-1.png"
        }
    ];

    // ===== إنشاء HTML لبطاقة تذكرة - بنفس تصميم الموقع الأصلي =====
    function buildTicketHTML(ticket) {
        var priceStr = ticket.price.toFixed(2);

        return '<div class="wpos-bw-product-list" data-product-id="' + ticket.id + '" style="display:flex;align-items:center;padding:15px 0;border-bottom:1px solid #eee;gap:15px;">' +
            '<div style="flex-shrink:0;width:80px;height:80px;overflow:hidden;border-radius:4px;">' +
                '<img src="' + ticket.img + '" alt="' + ticket.name + '" style="width:80px;height:80px;object-fit:cover;">' +
            '</div>' +
            '<div style="flex:1;min-width:0;">' +
                '<h3 style="margin:0 0 4px;font-size:15px;font-weight:700;color:#222;">' + ticket.name + '</h3>' +
                '<div style="color:#5b2d8e;font-weight:600;font-size:14px;margin-bottom:6px;">QAR ' + priceStr + ' / Ticket</div>' +
                '<a href="#" class="wpos-show-details" style="color:#5b2d8e;font-size:13px;text-decoration:underline;">Show Details</a>' +
            '</div>' +
            '<div style="display:flex;align-items:center;gap:8px;flex-shrink:0;">' +
                '<div style="display:flex;align-items:center;border:1px solid #ddd;border-radius:4px;overflow:hidden;">' +
                    '<button type="button" class="wpos-bw-minus-qty-js" style="width:32px;height:36px;background:#f5f5f5;border:none;cursor:pointer;font-size:16px;color:#333;display:flex;align-items:center;justify-content:center;">−</button>' +
                    '<input type="text" class="qty" value="' + ticket.min_qty + '" min="' + ticket.min_qty + '" max="' + ticket.max_qty + '" style="width:40px;height:36px;border:none;border-left:1px solid #ddd;border-right:1px solid #ddd;text-align:center;font-size:14px;font-weight:600;">' +
                    '<button type="button" class="wpos-bw-plus-qty-js" style="width:32px;height:36px;background:#f5f5f5;border:none;cursor:pointer;font-size:16px;color:#333;display:flex;align-items:center;justify-content:center;">+</button>' +
                '</div>' +
                '<button type="button" class="button wpos-wc-add-to-cart-btn" data-product-id="' + ticket.id + '" data-quantity="' + ticket.min_qty + '" style="background:#5b2d8e;color:#fff;border:none;padding:8px 16px;border-radius:4px;cursor:pointer;font-size:13px;font-weight:600;white-space:nowrap;">Add to Cart</button>' +
            '</div>' +
            '<div style="flex-shrink:0;min-width:80px;text-align:right;font-weight:700;color:#222;font-size:14px;" class="wpos-bw-total-wrap">QAR <span class="wpos-bw-total-price">' + priceStr + '</span></div>' +
        '</div>';
    }

    // ===== إنشاء HTML لكل التذاكر =====
    function buildAllTicketsHTML(selectedDate) {
        var html = '<div class="wpos-bw-eg-plus-wrap-inner" style="padding:0;">';
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

            // حفظ التاريخ المختار
            localStorage.setItem('dq_visit_date', displayDate);
            localStorage.setItem('dq_visit_date_raw', selectedDate);

            var fakeResponse = {
                success: 1,
                date: selectedDate,
                booking_date: displayDate,
                booking_time: "2:00 PM – 10:00 PM",
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
        var productList = btn.closest('.wpos-bw-product-list');
        var qtyInput = productList.find('.qty');
        var qty = parseInt(qtyInput.val() || 1);

        // البحث عن التذكرة
        var ticket = null;
        for (var i = 0; i < LOCAL_TICKETS.length; i++) {
            if (LOCAL_TICKETS[i].id === productId) { ticket = LOCAL_TICKETS[i]; break; }
        }
        if (!ticket || qty < 1) return;

        // إضافة للسلة
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

        // تأكيد بصري ثم التوجيه لصفحة Cart
        btn.text('✓ Added!').css({'background-color':'#28a745','border-color':'#28a745'}).prop('disabled', true);

        setTimeout(function() {
            window.location.href = '/bookings/cart/';
        }, 800);
    });

    // تحديث عداد السلة عند تحميل الصفحة
    $(document).ready(function() {
        updateCartBadge();
    });

})(jQuery);
