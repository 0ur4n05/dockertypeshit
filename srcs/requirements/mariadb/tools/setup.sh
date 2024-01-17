#!/bin/sh

sed -i "s/bind-address.*$/bind-address = 0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf
service mariadb start

sleep 3
mysql -u root --password="${ROOTDBPASS}" -e "CREATE USER '${ADMINUSRNAME}'@'%' IDENTIFIED BY '${ADMINPASS}';"
mysql -u root --password="${ROOTDBPASS}" -e "GRANT ALL PRIVILEGES ON * . * TO '${ADMINUSRNAME}'@'%';"
mysql -u root --password="${ROOTDBPASS}" -e "CREATE USER '${DBUSRNAME}'@'%' IDENTIFIED BY '${DBUSRPASS}';"
mysql -u root --password="${ROOTDBPASS}" -e "CREATE DATABASE ${DBNAME};"
mysql -u root --password="" -e "ALTER USER 'root'@'%' IDENTIFIED BY '${ROOTDBPASS}';"
mysql -u root --password="${ROOTDBPASS}" -e "FLUSH PRIVILEGES;"

killall mariadbd
sleep 2

# chown -R mysqld:mysqld /var/lib/mysql
# chown -R mysqld:mysqld /run/mysqld

mysqld --user=root
