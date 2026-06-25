/**
 * Doha Quest - Local Tickets Data
 * Intercepts WPOS booking AJAX calls and returns static ticket data
 */
(function($) {
    "use strict";

    // بيانات التذاكر الحالية
    var LOCAL_TICKETS = [
        {
            id: 101,
            name: "General Admission – Adult",
            description: "For guests aged 13 years and above. Includes access to all rides and attractions.",
            price: 235,
            currency: "QAR",
            min_qty: 1,
            max_qty: 10,
            image: "/bookings/wp-content/uploads/2025/12/cat-1.png",
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
            image: "/bookings/wp-content/uploads/2025/12/cat-1.png",
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
            image: "/bookings/wp-content/uploads/2025/12/cat-1.png",
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
            image: "/bookings/wp-content/uploads/2025/12/cat-1.png",
            age_info: "All ages",
            badge: "ADD-ON"
        }
    ];

    // إنشاء HTML لبطاقة تذكرة واحدة
    function buildTicketHTML(ticket) {
        var priceDisplay = ticket.price === 0
            ? '<span class="wpos-bw-price" data-price="0">FREE</span>'
            : '<span class="wpos-bw-price" data-price="' + ticket.price + '">' + ticket.price + '.00</span>';

        var badgeHTML = ticket.badge
            ? '<span class="wpos-bw-ticket-badge" style="background:#f67c10;color:#fff;padding:2px 8px;border-radius:4px;font-size:11px;font-weight:bold;margin-left:8px;">' + ticket.badge + '</span>'
            : '';

        var addToCartBtn = ticket.price === 0
            ? '<button type="button" class="button wpos-wc-add-to-cart-btn" data-product-id="' + ticket.id + '" data-quantity="0" style="opacity:0.6;cursor:default;">Free Entry</button>'
            : '<button type="button" class="button wpos-wc-add-to-cart-btn" data-product-id="' + ticket.id + '" data-quantity="1">Add to Cart</button>';

        return '<div class="wpos-bw-product-list" data-product-id="' + ticket.id + '">' +
            '<div class="wpos-bw-product-list-inr">' +
                '<div class="wpos-bw-product-img-wrap">' +
                    '<img src="' + ticket.image + '" alt="' + ticket.name + '" style="width:100%;border-radius:8px;">' +
                '</div>' +
                '<div class="wpos-bw-product-cnt-wrap" style="flex:1;">' +
                    '<div class="wpos-bw-product-ttl" style="font-weight:bold;font-size:16px;margin-bottom:6px;">' +
                        ticket.name + badgeHTML +
                    '</div>' +
                    '<div class="wpos-bw-product-age" style="color:#666;font-size:13px;margin-bottom:8px;">' + ticket.age_info + '</div>' +
                    '<div class="wpos-bw-product-desc" style="color:#555;font-size:13px;margin-bottom:12px;">' + ticket.description + '</div>' +
                    '<div class="wpos-bw-product-price-wrap" style="display:flex;align-items:center;gap:6px;margin-bottom:10px;">' +
                        '<span style="font-size:13px;color:#888;">Price:</span>' +
                        '<strong style="font-size:18px;color:#5b2d8e;">' + priceDisplay + ' QAR</strong>' +
                    '</div>' +
                    (ticket.price > 0 ? '<div class="wpos-bw-product-total-wrap" style="font-size:13px;color:#555;margin-bottom:12px;">Total: <strong class="wpos-bw-total-price">' + ticket.price + '.00</strong> QAR</div>' : '') +
                    (ticket.price > 0 ?
                        '<div class="wpos-bw-product-qty" style="margin-bottom:12px;">' +
                            '<div class="quantity">' +
                                '<button type="button" class="wpos-bw-qty-btn wpos-bw-minus-qty-js">−</button>' +
                                '<input type="number" class="qty" value="' + ticket.min_qty + '" min="' + ticket.min_qty + '" max="' + ticket.max_qty + '">' +
                                '<button type="button" class="wpos-bw-qty-btn wpos-bw-plus-qty-js wpos-bw-plus-qty">+</button>' +
                            '</div>' +
                        '</div>'
                    : '') +
                    '<div class="wpos-bw-product-add-to-cart">' + addToCartBtn + '</div>' +
                    '<div class="wpos-bw-qty-err" style="display:none;color:red;font-size:12px;">Minimum quantity reached.</div>' +
                '</div>' +
            '</div>' +
        '</div>';
    }

    // إنشاء HTML لكل التذاكر
    function buildAllTicketsHTML(selectedDate) {
        var html = '<div class="wpos-bw-eg-plus-wrap-inner">';
        html += '<div style="background:#f8f4ff;border-left:4px solid #5b2d8e;padding:12px 16px;margin-bottom:20px;border-radius:4px;">';
        html += '<strong style="color:#5b2d8e;">Visit Date:</strong> <span style="color:#333;">' + selectedDate + '</span>';
        html += '<br><small style="color:#888;">Tickets will be sent by email. All purchases are non-refundable.</small>';
        html += '</div>';
        for (var i = 0; i < LOCAL_TICKETS.length; i++) {
            html += buildTicketHTML(LOCAL_TICKETS[i]);
        }
        html += '</div>';
        return html;
    }

    // اعتراض AJAX calls الخاصة بـ WPOS
    var originalAjax = $.ajax;
    $.ajax = function(settings) {
        if (settings && settings.url && settings.url.indexOf('wpos_wc_bw_get_eg_data_process') !== -1) {
            // استخراج التاريخ المختار
            var selectedDate = '';
            if (settings.data && settings.data.date) {
                selectedDate = settings.data.date;
            }

            // تنسيق التاريخ
            var displayDate = selectedDate;
            if (selectedDate) {
                try {
                    var d = new Date(selectedDate);
                    displayDate = d.toLocaleDateString('en-GB', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' });
                } catch(e) {}
            }

            // إعادة بيانات محلية
            var fakeResponse = {
                success: 1,
                date: selectedDate,
                booking_date: displayDate,
                booking_time: "2:00 PM – 10:00 PM",
                time_slots: '<div class="wpos-wcb-timeslot-single active" style="background:#5b2d8e;color:#fff;padding:8px 16px;border-radius:20px;display:inline-block;margin:4px;">2:00 PM – 10:00 PM</div>',
                plu_html: buildAllTicketsHTML(displayDate),
                timer_html: '',
                event_id: '1',
                resource_id: '1',
                message: ''
            };

            // إخفاء overlay
            setTimeout(function() {
                $('.wpos-wc-bw-overlay-wrap').hide();
            }, 300);

            // استدعاء success callback
            if (settings.success) {
                setTimeout(function() {
                    settings.success(fakeResponse);
                }, 400);
            }

            // إرجاع deferred object وهمي
            return {
                done: function() { return this; },
                fail: function() { return this; },
                always: function() { return this; }
            };
        }

        // لباقي الـ AJAX calls، نستخدم الأصلي
        return originalAjax.apply(this, arguments);
    };

    // اعتراض $.post أيضاً
    var originalPost = $.post;
    $.post = function(url, data, callback) {
        if (url && url.indexOf('wpos_wc_bw_month_dates_process') !== -1) {
            // نتجاهل هذا الطلب - التقويم يعمل بشكل ثابت
            return { done: function() { return this; }, fail: function() { return this; } };
        }
        return originalPost.apply(this, arguments);
    };

    // Add to Cart - عرض رسالة تأكيد
    $(document).on('click', '.wpos-wc-add-to-cart-btn', function() {
        var btn = $(this);
        var productList = btn.closest('.wpos-bw-product-list');
        var productName = productList.find('.wpos-bw-product-ttl').text().trim();
        var qty = productList.find('.qty').val() || 1;
        var price = productList.find('.wpos-bw-price').attr('data-price');

        if (parseFloat(price) === 0) return;

        btn.text('✓ Added!').css('background-color', '#28a745').css('border-color', '#28a745');

        // عرض رسالة في السلة
        var cartCount = parseInt($('.wpos-wc-bw-cart-count').text() || '0') + parseInt(qty);
        $('.wpos-wc-bw-cart-count').text(cartCount);

        setTimeout(function() {
            btn.text('Add to Cart').css('background-color', '').css('border-color', '');
        }, 2000);

        // إضافة للسلة المحلية
        addToLocalCart(productName, qty, price);
    });

    // سلة محلية بسيطة
    var localCart = [];
    function addToLocalCart(name, qty, price) {
        localCart.push({ name: name, qty: qty, price: price });
        updateCartDisplay();
    }

    function updateCartDisplay() {
        var total = 0;
        localCart.forEach(function(item) {
            total += parseFloat(item.price) * parseInt(item.qty);
        });
        // تحديث عداد السلة
        var cartLinks = $('a[href*="/bookings/cart/"]');
        cartLinks.each(function() {
            var link = $(this);
            if (link.find('.count').length) {
                link.find('.count').text(localCart.length);
            }
        });
    }

})(jQuery);
