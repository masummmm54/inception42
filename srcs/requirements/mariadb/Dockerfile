FROM mariadb:10.5

ENV MYSQL_ROOT_PASSWORD_FILE=/run/../secrets/db_root_password.txt
ENV MYSQL_PASSWORD_FILE=/run/../secrets/db_password.txt
ENV MYSQL_DATABASE=wordpress
ENV MYSQL_USER=masum

COPY ./conf/my.cnf /etc/mysql/my.cnf
