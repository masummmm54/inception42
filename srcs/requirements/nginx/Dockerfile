FROM nginx:alpine

RUN apk add --no-cache openssl

COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]