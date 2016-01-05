#!/usr/bin/env bash

echo "Unpacking media and skin folders"
cwd=`pwd`
cd /var/www/magento
tar jxvf /vagrant/magento-sample-data-1.9.1.0.tar-2015-02-11-09-56-42.bz2 --wildcards "magento-sample-data-1.9.1.0/media/*" --strip-components=1
tar jxvf /vagrant/magento-sample-data-1.9.1.0.tar-2015-02-11-09-56-42.bz2 --wildcards "magento-sample-data-1.9.1.0/skin/*" --strip-components=1

echo "Unpacking SQL file"
cd /home/vagrant
sudo -u vagrant tar jxvf /vagrant/magento-sample-data-1.9.1.0.tar-2015-02-11-09-56-42.bz2 --wildcards "*/magento_sample_data_for_1.9.1.0.sql" --strip-components=1

echo "Running SQL file"
mysql -u root -pminepass magento < magento_sample_data_for_1.9.1.0.sql

/vagrant/bin/permissions.sh

echo "Returning to original directory"
cd $cwd
