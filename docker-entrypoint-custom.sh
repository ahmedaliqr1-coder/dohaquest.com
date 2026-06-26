#!/bin/bash
set -e

echo "=== DohaQuest WordPress Container Starting ==="

# Railway sets PORT environment variable - Apache must listen on it
PORT="${PORT:-80}"
echo "PORT: $PORT"

# Fix Apache MPM conflict - ensure only mpm_prefork is loaded
# This prevents "More than one MPM loaded" error
if [ -f /etc/apache2/mods-enabled/mpm_event.load ]; then
    rm -f /etc/apache2/mods-enabled/mpm_event.load
    rm -f /etc/apache2/mods-enabled/mpm_event.conf
fi
if [ -f /etc/apache2/mods-enabled/mpm_worker.load ]; then
    rm -f /etc/apache2/mods-enabled/mpm_worker.load
    rm -f /etc/apache2/mods-enabled/mpm_worker.conf
fi
# Ensure mpm_prefork is enabled
if [ ! -f /etc/apache2/mods-enabled/mpm_prefork.load ]; then
    ln -sf /etc/apache2/mods-available/mpm_prefork.load /etc/apache2/mods-enabled/mpm_prefork.load
    ln -sf /etc/apache2/mods-available/mpm_prefork.conf /etc/apache2/mods-enabled/mpm_prefork.conf 2>/dev/null || true
fi

# Fix Apache to listen on the correct PORT
sed -i "s/Listen 80/Listen $PORT/" /etc/apache2/ports.conf
sed -i "s/<VirtualHost \*:80>/<VirtualHost *:$PORT>/" /etc/apache2/sites-enabled/000-default.conf 2>/dev/null || true

echo "Apache configured to listen on port $PORT"

# Database connection settings from Railway environment variables
DB_HOST="${WORDPRESS_DB_HOST:-${MYSQLHOST:-mysql.railway.internal}}"
DB_PORT="${MYSQLPORT:-3306}"
DB_USER="${WORDPRESS_DB_USER:-${MYSQLUSER:-root}}"
DB_PASS="${WORDPRESS_DB_PASSWORD:-${MYSQLPASSWORD:-}}"
DB_NAME="${WORDPRESS_DB_NAME:-${MYSQLDATABASE:-railway}}"

# Split host:port if present in DB_HOST
if [[ "$DB_HOST" == *":"* ]]; then
    DB_PORT="${DB_HOST##*:}"
    DB_HOST="${DB_HOST%%:*}"
fi

echo "Connecting to MySQL at $DB_HOST:$DB_PORT as $DB_USER..."

# Wait for MySQL (max 60 seconds)
max_tries=20
count=0
until mysql -h"$DB_HOST" -P"$DB_PORT" -u"$DB_USER" -p"$DB_PASS" -e "SELECT 1" > /dev/null 2>&1; do
    count=$((count + 1))
    if [ $count -ge $max_tries ]; then
        echo "WARNING: MySQL not available after $max_tries tries, continuing anyway..."
        break
    fi
    echo "MySQL not ready ($count/$max_tries)..."
    sleep 3
done

echo "MySQL check done!"

# Update WordPress URLs in database BEFORE starting Apache
# This ensures Railway healthcheck gets 200 OK instead of 301 redirect
# IMPORTANT: Use http:// not https:// - Railway terminates SSL at proxy level
# WordPress behind Railway proxy should use http:// internally
if [ -n "$RAILWAY_PUBLIC_DOMAIN" ]; then
    SITE_URL="http://$RAILWAY_PUBLIC_DOMAIN"
else
    SITE_URL="http://localhost:$PORT"
fi
echo "Setting WordPress URLs to: $SITE_URL"
mysql -h"$DB_HOST" -P"$DB_PORT" -u"$DB_USER" -p"$DB_PASS" "$DB_NAME" \
    -e "UPDATE wp_options SET option_value='$SITE_URL' WHERE option_name='siteurl'; UPDATE wp_options SET option_value='$SITE_URL' WHERE option_name='home';" 2>/dev/null && \
    echo "URLs updated in database!" || echo "URL update skipped (DB may not be ready yet)"

# Run WordPress initialization in background (after Apache starts)
if [ -f /usr/local/bin/init-wordpress.sh ]; then
    echo "Scheduling WordPress initialization in background..."
    (sleep 20 && cd /var/www/html && /usr/local/bin/init-wordpress.sh) &
fi

# Start Apache in foreground (this is what Railway healthchecks)
echo "Starting Apache on port $PORT..."
exec apache2-foreground
