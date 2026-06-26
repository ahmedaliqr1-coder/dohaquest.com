#!/bin/bash

echo "=== DohaQuest WordPress Container Starting ==="
echo "Date: $(date)"

# Railway sets PORT environment variable
PORT="${PORT:-80}"
echo "PORT: $PORT"

# Export PORT for Apache
export APACHE_PORT=$PORT

# Update Apache ports.conf to listen on correct PORT
echo "Updating Apache port configuration..."
cat /etc/apache2/ports.conf || echo "ports.conf not found"

# Replace Listen 80 with Listen $PORT
if [ -f /etc/apache2/ports.conf ]; then
    sed -i "s/Listen 80$/Listen $PORT/" /etc/apache2/ports.conf
    echo "Updated ports.conf:"
    cat /etc/apache2/ports.conf
fi

# Update VirtualHost port
if [ -f /etc/apache2/sites-available/000-default.conf ]; then
    sed -i "s/\*:80>/\*:$PORT>/g" /etc/apache2/sites-available/000-default.conf
    sed -i "s/\*:\${PORT:-80}>/\*:$PORT>/g" /etc/apache2/sites-available/000-default.conf
fi
if [ -f /etc/apache2/sites-enabled/000-default.conf ]; then
    sed -i "s/\*:80>/\*:$PORT>/g" /etc/apache2/sites-enabled/000-default.conf
    sed -i "s/\*:\${PORT:-80}>/\*:$PORT>/g" /etc/apache2/sites-enabled/000-default.conf
fi

echo "Apache configured to listen on port $PORT"

# Database connection settings
DB_HOST="${WORDPRESS_DB_HOST:-}"
if [ -z "$DB_HOST" ]; then
    MYSQL_HOST="${MYSQLHOST:-mysql.railway.internal}"
    MYSQL_PORT="${MYSQLPORT:-3306}"
    DB_HOST="${MYSQL_HOST}:${MYSQL_PORT}"
fi
DB_USER="${WORDPRESS_DB_USER:-${MYSQLUSER:-root}}"
DB_PASS="${WORDPRESS_DB_PASSWORD:-${MYSQLPASSWORD:-}}"
DB_NAME="${WORDPRESS_DB_NAME:-${MYSQLDATABASE:-railway}}"

# Parse host:port
if [[ "$DB_HOST" == *":"* ]]; then
    DB_PORT="${DB_HOST##*:}"
    DB_HOST="${DB_HOST%%:*}"
else
    DB_PORT="3306"
fi

echo "DB: $DB_HOST:$DB_PORT/$DB_NAME as $DB_USER"

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

# Set WordPress site URL
if [ -n "$RAILWAY_PUBLIC_DOMAIN" ]; then
    SITE_URL="http://$RAILWAY_PUBLIC_DOMAIN"
else
    SITE_URL="http://localhost:$PORT"
fi
echo "Setting WordPress URLs to: $SITE_URL"

mysql -h"$DB_HOST" -P"$DB_PORT" -u"$DB_USER" -p"$DB_PASS" "$DB_NAME" \
    -e "REPLACE INTO wp_options (option_name, option_value, autoload) VALUES ('siteurl', '$SITE_URL', 'yes'), ('home', '$SITE_URL', 'yes');" 2>/dev/null \
    && echo "URLs updated in database!" \
    || echo "URL update skipped"

# Run WordPress initialization in background
if [ -f /usr/local/bin/init-wordpress.sh ]; then
    echo "Scheduling WordPress initialization in background..."
    (sleep 15 && cd /var/www/html && /usr/local/bin/init-wordpress.sh) &
fi

# Start Apache in foreground
echo "Starting Apache on port $PORT..."
exec apache2-foreground
