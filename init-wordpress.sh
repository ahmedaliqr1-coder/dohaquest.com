#!/bin/bash
# WordPress initialization script for Railway
# Runs WP-CLI to complete WordPress setup

set -e

# IMPORTANT: Use http:// not https:// - Railway terminates SSL at proxy level
if [ -n "$RAILWAY_PUBLIC_DOMAIN" ]; then
    SITE_URL="http://$RAILWAY_PUBLIC_DOMAIN"
else
    SITE_URL="http://localhost:80"
fi

# Get DB credentials
DB_HOST="${WORDPRESS_DB_HOST:-${MYSQLHOST}:${MYSQLPORT:-3306}}"
DB_USER="${WORDPRESS_DB_USER:-${MYSQLUSER:-root}}"
DB_PASS="${WORDPRESS_DB_PASSWORD:-${MYSQLPASSWORD:-}}"
DB_NAME="${WORDPRESS_DB_NAME:-${MYSQLDATABASE:-railway}}"

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
    echo "WordPress already installed, updating URL via MySQL..."
    # Use MySQL directly to update URLs - more reliable than WP-CLI for this
    mysql -h "${MYSQLHOST}" -P "${MYSQLPORT:-3306}" -u "${DB_USER}" -p"${DB_PASS}" "${DB_NAME}" \
        -e "UPDATE wp_options SET option_value='${SITE_URL}' WHERE option_name='siteurl'; UPDATE wp_options SET option_value='${SITE_URL}' WHERE option_name='home';" 2>/dev/null || \
    wp option update siteurl "$SITE_URL" --allow-root 2>/dev/null || true
    wp option update home "$SITE_URL" --allow-root 2>/dev/null || true
    # Ensure admin has administrator role
    wp user set-role admin administrator --allow-root 2>/dev/null || true
    echo "Done!"
    exit 0
fi

echo "Installing WordPress..."

# Import SQL dump first
wp db import /var/www/html/init.sql --allow-root 2>/dev/null || true

# Update URLs via MySQL directly (most reliable)
mysql -h "${MYSQLHOST}" -P "${MYSQLPORT:-3306}" -u "${DB_USER}" -p"${DB_PASS}" "${DB_NAME}" \
    -e "UPDATE wp_options SET option_value='${SITE_URL}' WHERE option_name='siteurl'; UPDATE wp_options SET option_value='${SITE_URL}' WHERE option_name='home';" 2>/dev/null || true

# Run WordPress install
wp core install \
    --url="$SITE_URL" \
    --title="DohaQuest Tickets" \
    --admin_user="admin" \
    --admin_password="DohaQuest@2026!" \
    --admin_email="admin@dohaquest.com" \
    --skip-email \
    --allow-root 2>/dev/null || true

# Ensure admin user has administrator role
wp user set-role admin administrator --allow-root 2>/dev/null || true

# Update URLs in database
wp option update siteurl "$SITE_URL" --allow-root 2>/dev/null || true
wp option update home "$SITE_URL" --allow-root 2>/dev/null || true

# Replace placeholder URLs in content
wp search-replace "SITE_URL_PLACEHOLDER" "$SITE_URL" --allow-root --quiet 2>/dev/null || true

# Activate theme
wp theme activate kadence --allow-root 2>/dev/null || true

# Activate plugins
wp plugin activate woocommerce --allow-root 2>/dev/null || true
wp plugin activate wpos-booking-and-wallet --allow-root 2>/dev/null || true
wp plugin activate advanced-dynamic-pricing-for-woocommerce --allow-root 2>/dev/null || true
wp plugin activate elementor --allow-root 2>/dev/null || true

# Set permalink structure
wp rewrite structure '/%postname%/' --allow-root 2>/dev/null || true
wp rewrite flush --allow-root 2>/dev/null || true

# WooCommerce setup
wp option update woocommerce_currency 'QAR' --allow-root 2>/dev/null || true
wp option update woocommerce_currency_pos 'left' --allow-root 2>/dev/null || true
wp option update woocommerce_calc_taxes 'no' --allow-root 2>/dev/null || true
wp option update woocommerce_cart_page_id 77 --allow-root 2>/dev/null || true
wp option update woocommerce_checkout_page_id 78 --allow-root 2>/dev/null || true
wp option update woocommerce_myaccount_page_id 79 --allow-root 2>/dev/null || true
wp option update woocommerce_shop_page_id 76 --allow-root 2>/dev/null || true

# Set front page
wp option update show_on_front 'page' --allow-root 2>/dev/null || true
wp option update page_on_front 15 --allow-root 2>/dev/null || true

echo "=== WordPress setup complete! ==="
