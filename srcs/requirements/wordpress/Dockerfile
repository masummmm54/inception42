FROM wordpress:5.7.2-fpm-alpine

RUN apk update && apk add --no-cache

RUN apt update -y

RUN apt install php-fpm php-mysql -y

RUN apt install curl -y

COPY ./tools/script.sh /script.sh

COPY ./tools/wp-config.php /var/www/html/wp-config.php

RUN chmod +x /script.sh

EXPOSE 80

CMD [ "/script.sh" ]