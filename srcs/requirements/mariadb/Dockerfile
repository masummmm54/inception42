FROM mariadb:10.5

ENV MYSQL_ROOT_PASSWORD_FILE=/run/secrecrs/db_root_password.txt
ENV MYSQL_PASSWORD_FILE=/run/secrets/db_password.txt
ENV MYSQL_DATABASE=wordpress
ENV MYSQL_USER=masum

COPY ./conf/my.conf /etc/mysql/my.cnf
