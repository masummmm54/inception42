FROM debian:11

RUN apt update && apt install -y wget \
	php7.4 \
	php-fpm \
	php-mysql \
	mariadb-client

COPY ./tools/script.sh /script.sh

COPY ./tools/wp-config.php /var/www/html/wp-config.php

RUN chmod +x /script.sh

EXPOSE 80

CMD [ "/script.sh" ]