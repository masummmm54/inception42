FROM alpine:3.17

RUN apk update && apk upgrade && apk add --no-cache openssl nginx
RUN mkdir -p /etc/nginx/ssl && openssl req -newkey rsa:2048 -x509 -days 365 -nodes \
-out /etc/ssl/certs/nginx-selfsigned.crt \
-keyout /etc/ssl/private/nginx-selfsigned.key \
-subj "/C=HN/ST=Heilbronn/L=DE/O=42/OU=student/CN=muhakose.42.tr/UID=muhakose"

RUN mkdir -p /var/www/html && chmod 755 /var/www/html


COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/default.conf /custom/default.conf
COPY ./tools/script.sh /custom/script.sh

CMD sh /custom/script.sh