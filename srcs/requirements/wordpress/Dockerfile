FROM wordpress:5.7.2-fpm-alpine

RUN apt update -y

RUN apt install php-fpm php-mysql -y

RUN apt install curl -y

COPY tools/script.sh /

COPY tools/wp-config.php /

EXPOSE 80

CMD [ "/script.sh" ]