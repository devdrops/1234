#! /bin/bash

echo " "
echo " ----- INSTALLING PHPUNIT ----- "
echo " "

echo " > composer global require 'phpunit/phpunit=5.1.*'"
composer global require 'phpunit/phpunit=5.1.*'
echo "chmod on /root"
sudo chmod -R 777 /root
echo "sudo ln -fs /root/.config/composer/vendor/bin/phpunit /usr/local/bin/phpunit"
sudo ln -fs /root/.config/composer/vendor/bin/phpunit /usr/local/bin/phpunit

echo " "
echo " ----- INSTALLING PHPUNIT: DONE! ----- "
echo " "
