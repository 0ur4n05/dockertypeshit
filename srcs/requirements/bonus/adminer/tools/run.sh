#!/bin/sh

sleep 5
cd /var/www/html
wget http://www.adminer.org/latest.php 
mv latest.php adminer.php
php-fpm7.4 -F
