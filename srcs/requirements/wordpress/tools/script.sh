#!/bin/bash

# Create directories for WordPress
mkdir -p /var/www/html

cd /var/www/html

# Clean up any existing files
rm -rf *

# Download wp-cli
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

# Download and configure WordPress
wp core download --allow-root
mv /wp-config.php /var/www/html/wp-config.php

# Update wp-config.php with environment variables
sed -i -r "s/db1/$DB_NAME/1" wp-config.php
sed -i -r "s/user/$DB_USER/1" wp-config.php
sed -i -r "s/pwd/$DB_PASSWORD/1" wp-config.php

# Install WordPress
wp core install --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root

# Create a new WordPress user
wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root

# Install and activate the Astra theme
wp theme install astra --activate --allow-root

# Install and activate the Redis cache plugin
wp plugin install redis-cache --activate --allow-root

# Update all plugins
wp plugin update --all --allow-root

# Update PHP-FPM configuration to listen on port 9000
sed -i 's/listen = \/run\/php\/php7\/fpm\/php-fpm.sock/listen = 9000/g' /etc/php7/php-fpm.d/www.conf

# Create directory for PHP-FPM runtime
mkdir -p /run/php

# Enable Redis cache
wp redis enable --allow-root

# Start PHP-FPM
php-fpm7 -F