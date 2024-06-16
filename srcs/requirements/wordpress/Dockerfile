FROM wordpress:latest

# Install PHP-FPM
RUN apt-get update && apt-get install -y php7.4-fpm

# Copy the setup script
COPY ./tools/conf.sh /usr/local/bin/conf.sh
RUN chmod +x /usr/local/bin/conf.sh

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/conf.sh"]
