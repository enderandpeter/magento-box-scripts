#!/usr/bin/env bash

# To connect to mysql remotely, do the following query in addition to setting # bind-address to 0.0.0.0 in /etc/mysql/my.cnf
mysql -u root -pminepass -e "
CREATE USER 'root'@'10.0.2.2' IDENTIFIED BY 'minepass';
GRANT ALL ON *.* TO 'root'@'10.0.2.2';
FLUSH PRIVILEGES;"

echo ''
echo 'Please set bind-address to 0.0.0.0 in /etc/mysql/my.cnf'