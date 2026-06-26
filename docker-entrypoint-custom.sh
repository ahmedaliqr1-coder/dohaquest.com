#!/bin/bash
# NO set -e - we don't want the script to exit on any error

echo "=== DohaQuest WordPress Container Starting ==="

# Railway sets PORT environment variable
PORT="${PORT:-80}"
echo "PORT: $PORT"

# Update Apache to listen on the correct PORT
sed -i "s/Listen 80/Listen $PORT/g" /etc/apache2/ports.conf
sed -i "s/<VirtualHost \*:80>/<VirtualHost *:$PORT>/g" /etc/apache2/sites-available/000-default.conf
sed -i "s/<VirtualHost \*:80>/<VirtualHost *:$PORT>/g" /etc/apache2/sites-enabled/000-default.conf 2>/dev/null || true

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

echo "DB_HOST=$DB_HOST DB_PORT=$DB_PORT DB_USER=$DB_USER DB_NAME=$DB_NAME"

# Wait for MySQL (max 60 seconds)
echo "Waiting for MySQL..."
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

# Set WordPress site URL (use http:// - Railway terminates SSL at proxy level)
if [ -n "$RAILWAY_PUBLIC_DOMAIN" ]; then
    SITE_URL="http://$RAILWAY_PUBLIC_DOMAIN"
else
    SITE_URL="http://localhost:$PORT"
fi
echo "Setting WordPress URLs to: $SITE_URL"

# Update URLs in database using REPLACE INTO (works even if rows don't exist)
mysql -h"$DB_HOST" -P"$DB_PORT" -u"$DB_USER" -p"$DB_PASS" "$DB_NAME" \
    -e "REPLACE INTO wp_options (option_name, option_value, autoload) VALUES ('siteurl', '$SITE_URL', 'yes'), ('home', '$SITE_URL', 'yes');" 2>/dev/null \
    && echo "URLs updated in database!" \
    || echo "URL update skipped (will retry via init script)"

# Run WordPress initialization in background (after Apache starts)
if [ -f /usr/local/bin/init-wordpress.sh ]; then
    echo "Scheduling WordPress initialization in background..."
    (sleep 15 && cd /var/www/html && /usr/local/bin/init-wordpress.sh) &
fi

# Start Apache in foreground
echo "Starting Apache on port $PORT..."
exec apache2ctl -D FOREGROUND
