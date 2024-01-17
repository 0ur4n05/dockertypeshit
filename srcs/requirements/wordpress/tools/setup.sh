#!/bin/sh

sed -i "s/database_name_here/${DBNAME}/g" wp-config.php
sed -i "s/username_here/${ADMINUSRNAME}/g" wp-config.php
sed -i "s/password_here/${ADMINPASS}/g" wp-config.php
sed -i "s/localhost/mariadb/g" wp-config.php

curl https://api.wordpress.org/secret-key/1.1/salt/ >> wp-config.php
# wp config create --dbname=${DBNAME} --dbuser=${ADMINUSRNAME} --dbpass=${ADMINPASS} --dbhost=mariadb 

php -S  0.0.0.0:9000

wp core install --url=localhost --title="lmongol" --admin_user=${WPUSR} --admin_password=${WPPASS} --admin_email=${WPMAIL}

