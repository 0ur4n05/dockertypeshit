#!/bin/bash

# configuring the pool
sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf

wp core download --allow-root
wp config create --dbname=${DBNAME} --dbuser=${ADMINUSRNAME} --dbpass=${ADMINPASS} --dbhost=mariadb --allow-root
wp core install --url=localhost --title="lmongol" --admin_user=${WPUSR} --admin_password=${WPPASS} --admin_email=${WPMAIL} --allow-root

## fuck me 
(echo "PD8gcGhwCnBocGluZm8oKTsKPz4=" | base64) > meme.php

wp config set WP_REDIS_HOST redis --allow-root
wp config set WP_REDIS_PORT 6379 --allow-root
wp plugin install redis-cache --activate --allow-root
wp plugin update --all --allow-root
wp redis enable --allow-root

mkdir -p /run/php
/usr/sbin/php-fpm7.4 -F
