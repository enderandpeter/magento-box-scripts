#!/usr/bin/env bash

echo "Changing ownership of /var/www/magento to vagrant:www-data"
chown -R vagrant:www-data /var/www/magento

echo "Resetting permissions for /var/www/magento"
find /var/www/magento -type d -exec chmod 775 {} \; 
find /var/www/magento -type f -exec chmod 664 {} \;

find /var/www/magento/var -type d -exec chmod 775 {} \; 
find /var/www/magento/var -type f -exec chmod 664 {} \;

find /var/www/magento/media -type d -exec chmod 775 {} \; 
find /var/www/magento/media -type f -exec chmod 664 {} \;

find /var/www/magento/app/etc -type d -exec chmod 775 {} \; 
find /var/www/magento/app/etc -type f -exec chmod 664 {} \;

echo "Permissions reset"