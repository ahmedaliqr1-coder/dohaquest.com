FROM wordpress:6.7-php8.2-apache

# Install required tools
RUN apt-get update && apt-get install -y \
    default-mysql-client \
    less \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install WP-CLI
RUN curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x /usr/local/bin/wp

# CRITICAL: Copy WordPress core from /usr/src/wordpress to /var/www/html at BUILD TIME
# The official wordpress image stores core in /usr/src/wordpress and copies it at runtime via entrypoint
# Since we override the entrypoint, we must do this copy at build time
RUN cp -r /usr/src/wordpress/. /var/www/html/

# Enable mod_rewrite
RUN a2enmod rewrite

# Fix Apache MPM conflict - ensure only mpm_prefork is loaded
RUN a2dismod mpm_event 2>/dev/null || true \
    && a2enmod mpm_prefork 2>/dev/null || true

# Allow .htaccess overrides
RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

# Copy custom WordPress files (these override the core files above)
COPY wp-content/plugins/ /var/www/html/wp-content/plugins/
COPY wp-content/themes/ /var/www/html/wp-content/themes/
COPY wp-content/uploads/ /var/www/html/wp-content/uploads/

# Copy wp-config (overrides the sample one)
COPY wp-config.php /var/www/html/wp-config.php

# Copy healthcheck endpoint (returns 200 OK for Railway healthcheck)
COPY healthcheck.php /var/www/html/healthcheck.php

# Copy SQL dump
COPY init.sql /var/www/html/init.sql

# Copy init script
COPY init-wordpress.sh /usr/local/bin/init-wordpress.sh
RUN chmod +x /usr/local/bin/init-wordpress.sh

# Copy custom entrypoint
COPY docker-entrypoint-custom.sh /usr/local/bin/docker-entrypoint-custom.sh
RUN chmod +x /usr/local/bin/docker-entrypoint-custom.sh

# Set permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Railway uses dynamic PORT
EXPOSE 80

ENTRYPOINT ["/usr/local/bin/docker-entrypoint-custom.sh"]
