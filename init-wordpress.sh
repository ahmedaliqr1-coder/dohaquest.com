#!/bin/bash
# WordPress initialization script for Railway
# Runs WP-CLI to complete WordPress setup

set -e

SITE_URL="${RAILWAY_PUBLIC_DOMAIN:+https://$RAILWAY_PUBLIC_DOMAIN}"
SITE_URL="${SITE_URL:-http://localhost:80}"

echo "=== DohaQuest WordPress Init ==="
echo "Site URL: $SITE_URL"

# Wait for MySQL
echo "Waiting for MySQL connection..."
for i in $(seq 1 30); do
    if wp db check --allow-root --quiet 2>/dev/null; then
        echo "MySQL connected!"
        break
    fi
    echo "Attempt $i/30..."
    sleep 3
done

# Check if WordPress is already installed
if wp core is-installed --allow-root 2>/dev/null; then
    echo "WordPress already installed, updating URL..."
    wp option update siteurl "$SITE_URL" --allow-root
    wp option update home "$SITE_URL" --allow-root
    echo "Done!"
    exit 0
fi

echo "Installing WordPress..."

# Import SQL dump first
wp db import /var/www/html/init.sql --allow-root 2>/dev/null || true

# Run WordPress install
wp core install \
    --url="$SITE_URL" \
    --title="DohaQuest Tickets" \
    --admin_user="admin" \
    --admin_password="DohaQuest@2026!" \
    --admin_email="admin@dohaquest.com" \
    --skip-email \
    --allow-root

# Update URLs in database
wp option update siteurl "$SITE_URL" --allow-root
wp option update home "$SITE_URL" --allow-root

# Replace placeholder URLs in content
wp search-replace "SITE_URL_PLACEHOLDER" "$SITE_URL" --allow-root --quiet

# Activate theme
wp theme activate kadence --allow-root 2>/dev/null || true

# Activate plugins
wp plugin activate woocommerce --allow-root 2>/dev/null || true
wp plugin activate wpos-booking-and-wallet --allow-root 2>/dev/null || true
wp plugin activate advanced-dynamic-pricing-for-woocommerce --allow-root 2>/dev/null || true
wp plugin activate elementor --allow-root 2>/dev/null || true

# Set permalink structure
wp rewrite structure '/%postname%/' --allow-root
wp rewrite flush --allow-root

# WooCommerce setup
wp option update woocommerce_currency 'QAR' --allow-root
wp option update woocommerce_currency_pos 'left' --allow-root
wp option update woocommerce_calc_taxes 'no' --allow-root
wp option update woocommerce_cart_page_id 77 --allow-root
wp option update woocommerce_checkout_page_id 78 --allow-root
wp option update woocommerce_myaccount_page_id 79 --allow-root
wp option update woocommerce_shop_page_id 76 --allow-root

# Set front page
wp option update show_on_front 'page' --allow-root
wp option update page_on_front 15 --allow-root

echo "=== WordPress setup complete! ==="
