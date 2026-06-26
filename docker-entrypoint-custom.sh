#!/bin/bash
set -e

echo "=== DohaQuest WordPress Container Starting ==="
PORT="${PORT:-80}"
echo "PORT: $PORT"

# Update Apache port in ports.conf
sed -i "s/Listen 80/Listen $PORT/" /etc/apache2/ports.conf 2>/dev/null || true
sed -i "s/Listen 8080/Listen $PORT/" /etc/apache2/ports.conf 2>/dev/null || true

# Update VirtualHost port - replace APACHE_PORT placeholder with actual PORT
sed -i "s/APACHE_PORT/$PORT/g" /etc/apache2/sites-available/000-default.conf 2>/dev/null || true
sed -i "s/APACHE_PORT/$PORT/g" /etc/apache2/sites-enabled/000-default.conf 2>/dev/null || true
# Also handle any numeric port replacements
sed -i "s/<VirtualHost \*:[0-9]*>/<VirtualHost *:$PORT>/g" /etc/apache2/sites-available/000-default.conf 2>/dev/null || true
sed -i "s/<VirtualHost \*:[0-9]*>/<VirtualHost *:$PORT>/g" /etc/apache2/sites-enabled/000-default.conf 2>/dev/null || true

echo "Starting Apache on port $PORT..."

# Fix Apache MPM conflict at runtime
rm -f /etc/apache2/mods-enabled/mpm_event.load /etc/apache2/mods-enabled/mpm_event.conf 2>/dev/null || true
rm -f /etc/apache2/mods-enabled/mpm_worker.load /etc/apache2/mods-enabled/mpm_worker.conf 2>/dev/null || true
ln -sf /etc/apache2/mods-available/mpm_prefork.load /etc/apache2/mods-enabled/mpm_prefork.load 2>/dev/null || true
ln -sf /etc/apache2/mods-available/mpm_prefork.conf /etc/apache2/mods-enabled/mpm_prefork.conf 2>/dev/null || true

echo "Apache configured to listen on port $PORT"

# DB settings - support both WORDPRESS_DB_* and MYSQL* env vars
MYSQL_HOST="${MYSQLHOST:-mysql.railway.internal}"
MYSQL_PORT="${MYSQLPORT:-3306}"
DB_USER="${MYSQLUSER:-root}"
DB_PASS="${MYSQLPASSWORD:-}"
DB_NAME="${MYSQLDATABASE:-railway}"

# Override with WORDPRESS_DB_* if set
if [ -n "$WORDPRESS_DB_HOST" ]; then
    MYSQL_HOST=$(echo "$WORDPRESS_DB_HOST" | cut -d: -f1)
    MYSQL_PORT=$(echo "$WORDPRESS_DB_HOST" | cut -d: -f2)
    [ "$MYSQL_PORT" = "$MYSQL_HOST" ] && MYSQL_PORT=3306
fi
[ -n "$WORDPRESS_DB_USER" ] && DB_USER="$WORDPRESS_DB_USER"
[ -n "$WORDPRESS_DB_PASSWORD" ] && DB_PASS="$WORDPRESS_DB_PASSWORD"
[ -n "$WORDPRESS_DB_NAME" ] && DB_NAME="$WORDPRESS_DB_NAME"

echo "Connecting to MySQL at $MYSQL_HOST:$MYSQL_PORT as $DB_USER..."

# Wait for MySQL with timeout
i=0
while ! mysql -h"$MYSQL_HOST" -P"$MYSQL_PORT" -u"$DB_USER" -p"$DB_PASS" -e "SELECT 1" >/dev/null 2>&1; do
    i=$((i+1))
    if [ $i -ge 20 ]; then
        echo "MySQL timeout, continuing..."
        break
    fi
    sleep 3
done
echo "MySQL check done!"

# Update WordPress URLs to use HTTPS (Railway terminates SSL at proxy)
if [ -n "$RAILWAY_PUBLIC_DOMAIN" ]; then
    SITE_URL="https://$RAILWAY_PUBLIC_DOMAIN"
    echo "Setting WordPress URLs to: $SITE_URL"
    mysql -h"$MYSQL_HOST" -P"$MYSQL_PORT" -u"$DB_USER" -p"$DB_PASS" "$DB_NAME" \
        -e "REPLACE INTO wp_options (option_name, option_value, autoload) VALUES ('siteurl', '$SITE_URL', 'yes'), ('home', '$SITE_URL', 'yes');" 2>/dev/null || true
    echo "URLs updated in database!"
fi

echo "Init script disabled for debugging"

exec apache2-foreground
