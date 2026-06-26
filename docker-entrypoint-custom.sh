#!/bin/bash
set -x

echo "=== START ==="
PORT="${PORT:-80}"
echo "PORT=$PORT"

# Update Apache port
sed -i "s/Listen 80/Listen $PORT/" /etc/apache2/ports.conf || true
sed -i "s/:80>/:$PORT>/g" /etc/apache2/sites-available/000-default.conf || true
sed -i "s/:80>/:$PORT>/g" /etc/apache2/sites-enabled/000-default.conf || true

echo "=== APACHE PORT UPDATED ==="

# DB settings
MYSQL_HOST="${MYSQLHOST:-mysql.railway.internal}"
MYSQL_PORT="${MYSQLPORT:-3306}"
DB_USER="${MYSQLUSER:-root}"
DB_PASS="${MYSQLPASSWORD:-}"
DB_NAME="${MYSQLDATABASE:-railway}"

echo "DB=$MYSQL_HOST:$MYSQL_PORT/$DB_NAME"

# Wait for MySQL
echo "Waiting for MySQL..."
i=0
while ! mysql -h"$MYSQL_HOST" -P"$MYSQL_PORT" -u"$DB_USER" -p"$DB_PASS" -e "SELECT 1" >/dev/null 2>&1; do
    i=$((i+1))
    if [ $i -ge 20 ]; then
        echo "MySQL timeout, continuing..."
        break
    fi
    sleep 3
done
echo "MySQL ready"

# Update WordPress URLs
if [ -n "$RAILWAY_PUBLIC_DOMAIN" ]; then
    SITE_URL="http://$RAILWAY_PUBLIC_DOMAIN"
else
    SITE_URL="http://localhost:$PORT"
fi
echo "SITE_URL=$SITE_URL"

mysql -h"$MYSQL_HOST" -P"$MYSQL_PORT" -u"$DB_USER" -p"$DB_PASS" "$DB_NAME" \
    -e "REPLACE INTO wp_options (option_name, option_value, autoload) VALUES ('siteurl', '$SITE_URL', 'yes'), ('home', '$SITE_URL', 'yes');" 2>/dev/null || true

echo "=== STARTING APACHE ==="
# Debug MPM
echo "=== MPM MODS ENABLED ==="
ls -la /etc/apache2/mods-enabled/ | grep mpm || echo "No MPM mods found"
# Fix MPM at runtime
rm -f /etc/apache2/mods-enabled/mpm_event.load /etc/apache2/mods-enabled/mpm_event.conf
rm -f /etc/apache2/mods-enabled/mpm_worker.load /etc/apache2/mods-enabled/mpm_worker.conf
ln -sf /etc/apache2/mods-available/mpm_prefork.load /etc/apache2/mods-enabled/mpm_prefork.load 2>/dev/null || true
ln -sf /etc/apache2/mods-available/mpm_prefork.conf /etc/apache2/mods-enabled/mpm_prefork.conf 2>/dev/null || true
echo "=== MPM AFTER FIX ==="
ls -la /etc/apache2/mods-enabled/ | grep mpm || echo "No MPM mods found"
exec apache2-foreground
