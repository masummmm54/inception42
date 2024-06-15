# Use a specific version of PHP with Alpine
FROM php:7.4-fpm-alpine

# Install necessary packages and PHP extensions
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
    && docker-php-ext-configure gd --with-jpeg --with-webp --with-xpm --with-freetype \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install mysqli pdo pdo_mysql zip mbstring

# Download and extract WordPress
RUN curl -o wordpress.tar.gz https://wordpress.org/wordpress-5.8.3.tar.gz \
    && tar -xzf wordpress.tar.gz -C /var/www \
    && rm wordpress.tar.gz \
    && chown -R www-data:www-data /var/www/wordpress

# Set the working directory
WORKDIR /var/www/wordpress

# Expose port 9000 for PHP-FPM
EXPOSE 9000

# Start PHP-FPM
CMD ["php-fpm"]