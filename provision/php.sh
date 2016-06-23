#! /bin/bash

echo " "
echo "====================================================================================="
echo "PROVISIONING: PHP - Start"
echo "====================================================================================="
echo " "

echo " > Installing..."
sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php > /dev/null 2>&1
sudo apt-get update -y > /dev/null 2>&1
sudo apt-cache search php7 > /dev/null 2>&1
sudo apt-get -y install php7.0 php7.0-common php7.0-curl php7.0-mbstring php-gettext php7.0-json php7.0-mysql php7.0-xml php7.0-cli php7.0-fpm > /dev/null 2>&1

echo " "
echo " > Results:"
php -v
echo " "
service php7.0-fpm restart
service php7.0-fpm status

echo " "
echo "====================================================================================="
echo "PROVISIONING: PHP - Finished"
echo "====================================================================================="
echo " "
