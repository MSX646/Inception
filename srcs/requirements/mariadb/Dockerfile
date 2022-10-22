from debian:buster

arg DB_NAME DB_USER DB_PASS DB_ROOT
run apt update && apt install -y mariadb-server mariadb-client

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./conf/init.sql /var/www/

RUN service mysql start && mysql < /var/www/init.sql && rm -f /var/www/init.sql;

cmd ["/usr/sbin/mysqld"]
