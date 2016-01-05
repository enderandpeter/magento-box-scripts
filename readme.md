These are just a handful of scripts for managing the Vagrant box I made for [working with Magento](https://atlas.hashicorp.com/enderandpeter/boxes/magento).

# Prerequisites

You should have synced folders akin to the following:
    config.vm.synced_folder ".", "/vagrant", :mount_options => ["dmode=775", "fmode=664"]
    config.vm.synced_folder "~/magento_box_scripts", "/vagrant/bin", :mount_options => ["dmode=775", "fmode=665"]
	config.vm.synced_folder "~/magento_projects", "/vagrant/www", owner: "vagrant", group: "www-data", :mount_options => ["dmode=775", "fmode=664"]
	
* _/vagrant_ - Files to be generally shared between environments
* _/vagrant/bin_ - Scripts for your guest OS
* _/vagrant/www_ - All web projects