/**
 * Doha Quest - Local Tickets Data & Cart System
 * Intercepts WPOS booking AJAX calls and provides full cart/checkout flow
 */
(function($) {
    "use strict";

    // ===== بيانات التذاكر الحالية =====
    var LOCAL_TICKETS = [
        {
            id: 101,
            name: "General Admission – Adult",
            description: "For guests aged 13 years and above. Includes access to all rides and attractions.",
            price: 235,
            currency: "QAR",
            min_qty: 1,
            max_qty: 10,
            age_info: "Ages 13+",
            badge: ""
        },
        {
            id: 102,
            name: "General Admission – Junior",
            description: "For guests aged 4 to 12 years. Includes access to all suitable rides and attractions.",
            price: 160,
            currency: "QAR",
            min_qty: 1,
            max_qty: 10,
            age_info: "Ages 4–12",
            badge: ""
        },
        {
            id: 103,
            name: "General Admission – Child (Under 4)",
            description: "Children under 4 years old enter free of charge when accompanied by a paying adult.",
            price: 0,
            currency: "QAR",
            min_qty: 0,
            max_qty: 10,
            age_info: "Under 4 years",
            badge: "FREE"
        },
        {
            id: 104,
            name: "Time Portal – Fast Track Add-on",
            description: "Skip the queues on specific rides! Add this fast-track ticket to your booking for an enhanced experience.",
            price: 100,
            currency: "QAR",
            min_qty: 0,
            max_qty: 10,
            age_info: "All ages",
            badge: "ADD-ON"
        }
    ];

    // ===== إنشاء HTML لبطاقة تذكرة =====
    function buildTicketHTML(ticket) {
        var priceDisplay = ticket.price === 0
            ? '<span class="wpos-bw-price" data-price="0">FREE</span>'
            : '<span class="wpos-bw-price" data-price="' + ticket.price + '">' + ticket.price + '.00</span>';

        var badgeHTML = ticket.badge
            ? '<span class="wpos-bw-ticket-badge" style="background:#f67c10;color:#fff;padding:2px 8px;border-radius:4px;font-size:11px;font-weight:bold;margin-left:8px;">' + ticket.badge + '</span>'
            : '';

        var qtySection = ticket.price > 0
            ? '<div class="wpos-bw-product-qty" style="margin-bottom:12px;">' +
                '<div class="quantity">' +
                    '<button type="button" class="wpos-bw-qty-btn wpos-bw-minus-qty-js">−</button>' +
                    '<input type="number" class="qty" value="' + ticket.min_qty + '" min="' + ticket.min_qty + '" max="' + ticket.max_qty + '">' +
                    '<button type="button" class="wpos-bw-qty-btn wpos-bw-plus-qty-js wpos-bw-plus-qty">+</button>' +
                '</div>' +
              '</div>'
            : '';

        var addToCartBtn = ticket.price === 0
            ? '<button type="button" class="button wpos-wc-add-to-cart-btn" data-product-id="' + ticket.id + '" data-quantity="0" style="opacity:0.6;cursor:default;background:#aaa;border-color:#aaa;">Free Entry – No Booking Required</button>'
            : '<button type="button" class="button wpos-wc-add-to-cart-btn" data-product-id="' + ticket.id + '" data-quantity="' + ticket.min_qty + '">Add to Cart</button>';

        return '<div class="wpos-bw-product-list" data-product-id="' + ticket.id + '">' +
            '<div class="wpos-bw-product-list-inr">' +
                '<div class="wpos-bw-product-img-wrap">' +
                    '<img src="/bookings/wp-content/uploads/2025/12/cat-1.png" alt="' + ticket.name + '" style="width:100%;border-radius:8px;">' +
                '</div>' +
                '<div class="wpos-bw-product-cnt-wrap" style="flex:1;">' +
                    '<div class="wpos-bw-product-ttl" style="font-weight:bold;font-size:16px;margin-bottom:6px;">' +
                        ticket.name + badgeHTML +
                    '</div>' +
                    '<div style="color:#666;font-size:13px;margin-bottom:8px;">' + ticket.age_info + '</div>' +
                    '<div style="color:#555;font-size:13px;margin-bottom:12px;">' + ticket.description + '</div>' +
                    '<div style="display:flex;align-items:center;gap:6px;margin-bottom:10px;">' +
                        '<span style="font-size:13px;color:#888;">Price per ticket:</span>' +
                        '<strong style="font-size:18px;color:#5b2d8e;">' + priceDisplay + ' QAR</strong>' +
                    '</div>' +
                    (ticket.price > 0 ? '<div style="font-size:13px;color:#555;margin-bottom:12px;">Total: <strong class="wpos-bw-total-price">' + ticket.price + '.00</strong> QAR</div>' : '') +
                    qtySection +
                    '<div class="wpos-bw-product-add-to-cart">' + addToCartBtn + '</div>' +
                    '<div class="wpos-bw-qty-err" style="display:none;color:red;font-size:12px;">Minimum quantity reached.</div>' +
                '</div>' +
            '</div>' +
        '</div>';
    }

    // ===== إنشاء HTML لكل التذاكر =====
    function buildAllTicketsHTML(selectedDate) {
        var html = '<div class="wpos-bw-eg-plus-wrap-inner">';
        html += '<div style="background:#f8f4ff;border-left:4px solid #5b2d8e;padding:12px 16px;margin-bottom:20px;border-radius:4px;">';
        html += '<strong style="color:#5b2d8e;">Visit Date:</strong> <span style="color:#333;">' + selectedDate + '</span>';
        html += '<br><small style="color:#888;margin-top:4px;display:block;">Tickets will be sent by email. All purchases are non-refundable.</small>';
        html += '</div>';
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
        $('.wpos-wc-bw-cart-count, .cart-count, .count').text(total > 0 ? total : '0');
        // تحديث رابط السلة في الـ header
        $('a[href*="/bookings/cart/"]').each(function() {
            var link = $(this);
            var countEl = link.find('.count');
            if (countEl.length) countEl.text(total);
        });
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
        if (!ticket || ticket.price === 0 || qty < 1) return;

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

        // التوجيه لصفحة Cart بعد ثانية واحدة
        setTimeout(function() {
            window.location.href = '/bookings/cart/';
        }, 800);
    });

    function showAddedPopup(name, qty, price) {
        var popup = $('<div id="dq-added-popup" style="position:fixed;top:80px;right:20px;background:#5b2d8e;color:#fff;padding:16px 20px;border-radius:8px;z-index:99999;box-shadow:0 4px 20px rgba(0,0,0,0.3);max-width:300px;font-family:Montserrat,sans-serif;">' +
            '<strong style="display:block;margin-bottom:6px;">✓ Added to Cart!</strong>' +
            '<span style="font-size:13px;">' + qty + 'x ' + name + '</span><br>' +
            '<span style="font-size:12px;opacity:0.8;">QAR ' + (price * qty).toFixed(2) + '</span>' +
            '<div style="margin-top:12px;display:flex;gap:8px;">' +
                '<a href="/bookings/tickets/" style="flex:1;text-align:center;padding:6px;background:rgba(255,255,255,0.2);color:#fff;border-radius:4px;font-size:12px;text-decoration:none;">Continue</a>' +
                '<a href="/bookings/cart/" style="flex:1;text-align:center;padding:6px;background:#f67c10;color:#fff;border-radius:4px;font-size:12px;text-decoration:none;font-weight:bold;">View Cart →</a>' +
            '</div>' +
        '</div>');
        $('#dq-added-popup').remove();
        $('body').append(popup);
        setTimeout(function() { popup.fadeOut(400, function() { popup.remove(); }); }, 4000);
    }

    // تحديث عداد السلة عند تحميل الصفحة
    $(document).ready(function() {
        updateCartBadge();
    });

})(jQuery);
