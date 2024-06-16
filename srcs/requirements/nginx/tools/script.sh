#!/bin/bash

# Ensure SSL directory exists
mkdir -p /etc/nginx/ssl

# Generate self-signed certificate if not already present
if [ ! -f /etc/nginx/ssl/nginx-selfsigned.crt ]; then
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx-selfsigned.key -out /etc/nginx/ssl/nginx-selfsigned.crt -subj "/CN=localhost"
fi

# Link the default config file
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

# Start Nginx
nginx -g 'daemon off;'
