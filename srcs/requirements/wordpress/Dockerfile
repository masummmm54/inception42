# Use a base Alpine image
FROM php:7.4-fpm-alpine

# Install necessary PHP extensions and tools
RUN apk --no-cache add \
        curl \
        tar \
        gzip \
        libpng-dev \
        libjpeg-turbo-dev \
        libwebp-dev \
        libxpm-dev \
        freetype-dev \
        libzip-dev \
        oniguruma-dev \
        php7-session \
        php7-xml \
        php7-phar \
        php7-mysqli \
        php7-mbstring \
        php7-json \
        php7-opcache \
        php7-gd \
        php7-curl \
    && docker-php-ext-configure gd --with-jpeg --with-webp --with-xpm --with-freetype \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install mysqli pdo pdo_mysql zip mbstring

# Create the www directory
RUN mkdir -p /var/www/html

# Download and extract WordPress
RUN curl -o wordpress.tar.gz https://wordpress.org/latest.tar.gz \
    && tar -xzf wordpress.tar.gz -C /var/www/html --strip-components=1 \
    && rm wordpress.tar.gz \
    && chown -R www-data:www-data /var/www/html

# Copy PHP-FPM configuration
COPY ./php-fpm.conf /etc/php7/php-fpm.conf

# Set the working directory
WORKDIR /var/www/html

# Copy the wp-config.php file into the container
COPY ./wp-config.php /var/www/html/wp-config.php

# Set the appropriate permissions for wp-config.php
RUN chown www-data:www-data /var/www/html/wp-config.php \
    && chmod 440 /var/www/html/wp-config.php

# Expose port 9000 for PHP-FPM
EXPOSE 9000

# Start PHP-FPM
CMD ["php-fpm"]
