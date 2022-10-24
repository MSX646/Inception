#!/bin/sh
#wp core install --allow-root --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASS} --dbhost='mariadb'
wp core install --allow-root --url=${DOMAIN} --title='kezekiel s Inception' --admin_user=${ADMIN} --admin_password=${DB_ROOT} --admin_email=${ADMIN_MAIL}
wp user create --allow-root ${DB_USER} ${USER_MAIL} --user_pass=${DB_PASS}

/usr/sbin/php-fpm8 -F
