#! /bin/bash

echo " "
echo " ----- INSTALLING PHP REQUIREMENTS ----- "
echo " "

sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php
sudo apt-get update -y
sudo apt-cache search php7
sudo apt-get -y install php7.0 php7.0-common php7.0-curl php7.0-json php7.0-mysql php7.0-xml php7.0-cli > /dev/null 2>&1

php -v

echo " "
echo " ----- INSTALLING PHP REQUIREMENTS: DONE! ----- "
echo " "
