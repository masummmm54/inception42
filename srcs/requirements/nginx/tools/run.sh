#!/bin/sh

# Remove default configuration if it exists
rm -f /etc/nginx/http.d/default.conf

# Substitute environment variables in the Nginx configuration
sed -i 's|DOMAIN_NAME|'${DOMAIN_NAME}'|g' /etc/nginx/sites-available/default.conf
sed -i 's|WP_PATH|'${WP_PATH}'|g' /etc/nginx/sites-available/default.conf
sed -i 's|CERTS_CRT|'${CERTS_CRT}'|g' /etc/nginx/sites-available/default.conf
sed -i 's|CERTS_KEY|'${CERTS_KEY}'|g' /etc/nginx/sites-available/default.conf
sed -i 's|PHP_HOST|'${PHP_HOST}'|g' /etc/nginx/sites-available/default.conf
sed -i 's|PHP_PORT|'${PHP_PORT}'|g' /etc/nginx/sites-available/default.conf

# Ensure permissions are set correctly
chmod 755 /etc/nginx/sites-available/default.conf

# Create a symbolic link to enable the site
ln -sf /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default.conf

# Start Nginx
nginx -g "daemon off;"
