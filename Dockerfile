FROM php:8.2-apache

# Install required PHP extensions and tools
RUN apt-get update && apt-get install -y \
    default-mysql-client \
    libpng-dev \
    libjpeg-dev \
    libwebp-dev \
    libzip-dev \
    libicu-dev \
    libxml2-dev \
    libcurl4-openssl-dev \
    unzip \
    curl \
    less \
    && docker-php-ext-configure gd --with-jpeg --with-webp \
    && docker-php-ext-install \
        gd \
        mysqli \
        pdo_mysql \
        zip \
        intl \
        xml \
        curl \
        opcache \
        exif \
    && rm -rf /var/lib/apt/lists/*

# Install WP-CLI
RUN curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x /usr/local/bin/wp

# Fix Apache MPM conflict - force only mpm_prefork (required for PHP mod_php)
# Remove all MPM symlinks and re-enable only prefork
RUN rm -f /etc/apache2/mods-enabled/mpm_event.load \
    /etc/apache2/mods-enabled/mpm_event.conf \
    /etc/apache2/mods-enabled/mpm_worker.load \
    /etc/apache2/mods-enabled/mpm_worker.conf \
    /etc/apache2/mods-enabled/mpm_prefork.load \
    /etc/apache2/mods-enabled/mpm_prefork.conf 2>/dev/null || true \
    && ln -sf /etc/apache2/mods-available/mpm_prefork.load /etc/apache2/mods-enabled/mpm_prefork.load \
    && ln -sf /etc/apache2/mods-available/mpm_prefork.conf /etc/apache2/mods-enabled/mpm_prefork.conf

# Enable Apache modules
RUN a2enmod rewrite headers expires deflate

# Download WordPress core
RUN curl -o /tmp/wordpress.tar.gz https://wordpress.org/wordpress-6.7.tar.gz \
    && tar -xzf /tmp/wordpress.tar.gz -C /var/www/html --strip-components=1 \
    && rm /tmp/wordpress.tar.gz

# Copy custom WordPress files (plugins, themes, uploads)
COPY wp-content/plugins/ /var/www/html/wp-content/plugins/
COPY wp-content/themes/ /var/www/html/wp-content/themes/
COPY wp-content/uploads/ /var/www/html/wp-content/uploads/

# Copy wp-config
COPY wp-config.php /var/www/html/wp-config.php

# Copy healthcheck endpoint
COPY healthcheck.php /var/www/html/healthcheck.php
COPY reset-pass.php /var/www/html/reset-pass.php
COPY check-caps.php /var/www/html/check-caps.php

# Copy debug endpoint
COPY debug.php /var/www/html/debug.php

# Copy .htaccess
COPY .htaccess /var/www/html/.htaccess

# Copy SQL dump
COPY init.sql /var/www/html/init.sql

# Copy init script
COPY init-wordpress.sh /usr/local/bin/init-wordpress.sh
RUN chmod +x /usr/local/bin/init-wordpress.sh

# Copy custom startup script
COPY docker-entrypoint-custom.sh /usr/local/bin/docker-entrypoint-custom.sh
RUN chmod +x /usr/local/bin/docker-entrypoint-custom.sh

# Configure Apache - allow .htaccess overrides
RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

# Configure Apache VirtualHost - use placeholder PORT that will be replaced at runtime
RUN printf '<VirtualHost *:APACHE_PORT>\n    DocumentRoot /var/www/html\n    <Directory /var/www/html>\n        Options FollowSymLinks\n        AllowOverride All\n        Require all granted\n    </Directory>\n    ErrorLog ${APACHE_LOG_DIR}/error.log\n    CustomLog ${APACHE_LOG_DIR}/access.log combined\n</VirtualHost>\n' > /etc/apache2/sites-available/000-default.conf

# Set permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html \
    && chmod 644 /var/www/html/wp-config.php

# Railway uses dynamic PORT
EXPOSE 80

# Use ENTRYPOINT with CMD - the CMD will NOT be passed as argument since we override ENTRYPOINT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint-custom.sh"]
CMD []
