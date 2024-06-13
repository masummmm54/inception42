FROM debian:10.12


RUN apt update -y && apt upgrade -y && apt install mariadb-server vim -y

COPY /conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY /tools/. /custom/.

EXPOSE 3306 

ENTRYPOINT sh /custom/starter.sh