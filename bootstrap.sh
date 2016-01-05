#!/usr/bin/env bash

# This script should contain the provisioning to bring almost any VM to 
# the initial state for this Magento web server
# TODO: Download the magento site files into /var/www/magento

/vagrant/bin/permissions.sh

if php5enmod mcrypt && a2enmod rewrite > /dev/null; then
  echo "Modules enabled"
else
  echo "Modules not enabled"
fi

cp /vagrant/magento.conf /etc/apache2/sites-available
apachectl restart

mysql -u root -pminepass -e "
CREATE DATABASE magento;
CREATE USER 'magento'@'localhost' IDENTIFIED BY 'magento'; 
GRANT ALL ON magento.* TO 'magento'@'localhost';"