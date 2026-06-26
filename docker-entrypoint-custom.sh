#!/bin/bash
set -e

echo "=== DohaQuest WordPress Container Starting ==="

# انتظار MySQL
echo "Waiting for MySQL..."
DB_HOST="${MYSQL_HOST:-mysql}"
DB_USER="${MYSQL_USER:-dohaquest_user}"
DB_PASS="${MYSQL_PASSWORD:-dohaquest_pass}"
DB_NAME="${MYSQL_DATABASE:-dohaquest_bookings}"

max_tries=40
count=0
until mysql -h"$DB_HOST" -u"$DB_USER" -p"$DB_PASS" -e "SELECT 1" > /dev/null 2>&1; do
    count=$((count + 1))
    if [ $count -ge $max_tries ]; then
        echo "WARNING: MySQL not available after $max_tries tries, continuing..."
        break
    fi
    echo "MySQL not ready ($count/$max_tries)..."
    sleep 3
done

echo "MySQL is ready!"

# تشغيل الـ WordPress Docker entrypoint الأصلي في الخلفية
docker-entrypoint.sh apache2-foreground &
APACHE_PID=$!

# انتظار Apache يبدأ
sleep 5

# تشغيل init script
if [ -f /usr/local/bin/init-wordpress.sh ]; then
    echo "Running WordPress initialization..."
    cd /var/www/html
    /usr/local/bin/init-wordpress.sh || echo "Init script completed with warnings"
fi

# انتظار Apache
wait $APACHE_PID
