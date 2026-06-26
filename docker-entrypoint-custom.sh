#!/bin/bash
set -e

echo "=== DohaQuest WordPress Container Starting ==="

# استخدام environment variables الصحيحة من Railway
DB_HOST="${WORDPRESS_DB_HOST:-${MYSQLHOST:-mysql.railway.internal}}"
DB_PORT="${MYSQLPORT:-3306}"
DB_USER="${WORDPRESS_DB_USER:-${MYSQLUSER:-root}}"
DB_PASS="${WORDPRESS_DB_PASSWORD:-${MYSQLPASSWORD:-}}"
DB_NAME="${WORDPRESS_DB_NAME:-${MYSQLDATABASE:-railway}}"

# تقسيم host:port إذا كان موجوداً في DB_HOST
if [[ "$DB_HOST" == *":"* ]]; then
    DB_PORT="${DB_HOST##*:}"
    DB_HOST="${DB_HOST%%:*}"
fi

echo "Connecting to MySQL at $DB_HOST:$DB_PORT as $DB_USER..."

# انتظار MySQL
max_tries=40
count=0
until mysql -h"$DB_HOST" -P"$DB_PORT" -u"$DB_USER" -p"$DB_PASS" -e "SELECT 1" > /dev/null 2>&1; do
    count=$((count + 1))
    if [ $count -ge $max_tries ]; then
        echo "WARNING: MySQL not available after $max_tries tries, continuing..."
        break
    fi
    echo "MySQL not ready ($count/$max_tries)..."
    sleep 3
done

echo "MySQL is ready!"

# تشغيل init script مرة واحدة فقط (في الخلفية)
if [ -f /usr/local/bin/init-wordpress.sh ]; then
    echo "Running WordPress initialization in background..."
    cd /var/www/html
    /usr/local/bin/init-wordpress.sh &
fi

# تشغيل WordPress entrypoint الأصلي (يشغل Apache)
exec docker-entrypoint.sh apache2-foreground
