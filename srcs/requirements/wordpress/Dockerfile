FROM wordpress:5.7.2-fpm-alpine

RUN apk update && apk add --no-cache \
    php7-fpm \
    php7-mysqli \
    php7-curl \
    php7-gd \
    php7-xml \
    php7-mbstring \
    php7-zip \
    php7-intl \
    php7-json \
    php7-session \
    php7-soap \
    php7-xmlrpc \
    php7-simplexml \
    php7-opcache \
    php7-iconv \
    php7-tokenizer \
    php7-pecl-redis \
    php7-pdo \
    php7-pdo_mysql \
    php7-exif \
    php7-fileinfo \
    php7-ctype \
    curl

COPY ./tools/script.sh /script.sh

COPY ./tools/wp-config.php /var/www/html/wp-config.php

RUN chmod +x /script.sh

EXPOSE 80

CMD [ "/script.sh" ]