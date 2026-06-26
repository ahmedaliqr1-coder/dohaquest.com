FROM wordpress:6.7-php8.2-apache

# تثبيت الأدوات اللازمة
RUN apt-get update && apt-get install -y \
    default-mysql-client \
    less \
    curl \
    && rm -rf /var/lib/apt/lists/*

# تثبيت WP-CLI
RUN curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x /usr/local/bin/wp

# تفعيل mod_rewrite
RUN a2enmod rewrite

# إعداد Apache للسماح بـ .htaccess
RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

# نسخ ملفات WordPress المخصصة
COPY wp-content/plugins/ /var/www/html/wp-content/plugins/
COPY wp-content/themes/ /var/www/html/wp-content/themes/
COPY wp-content/uploads/ /var/www/html/wp-content/uploads/

# نسخ wp-config
COPY wp-config.php /var/www/html/wp-config.php

# نسخ SQL dump
COPY init.sql /var/www/html/init.sql

# نسخ سكريبت الـ init
COPY init-wordpress.sh /usr/local/bin/init-wordpress.sh
RUN chmod +x /usr/local/bin/init-wordpress.sh

# نسخ custom entrypoint
COPY docker-entrypoint-custom.sh /usr/local/bin/docker-entrypoint-custom.sh
RUN chmod +x /usr/local/bin/docker-entrypoint-custom.sh

# إعداد الصلاحيات
RUN chown -R www-data:www-data /var/www/html/wp-content \
    && chmod -R 755 /var/www/html/wp-content

EXPOSE 80

ENTRYPOINT ["/usr/local/bin/docker-entrypoint-custom.sh"]
