# Use a base Alpine image
FROM alpine:3.14

# Install PHP and PHP-FPM along with necessary extensions and tools
RUN apk --no-cache add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session php7-zip php7-dom php7-xml php7-pdo php7-pdo_mysql tar curl

# Create the directory for WordPress
RUN mkdir -p /var/www

# Download and extract WordPress
RUN curl -o wordpress.tar.gz https://wordpress.org/wordpress-5.8.3.tar.gz \
    && tar -xzf wordpress.tar.gz -C /var/www \
    && rm wordpress.tar.gz \
    && chown -R www-data:www-data /var/www/wordpress

# Copy PHP-FPM configuration
COPY ./php-fpm.conf /etc/php7/php-fpm.conf

# Set the working directory
WORKDIR /var/www/wordpress

# Expose port 9000 for PHP-FPM
EXPOSE 9000

# Start PHP-FPM
CMD ["php-fpm7", "-F"]