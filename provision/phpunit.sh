#! /bin/bash

echo " "
echo "====================================================================================="
echo "PROVISIONING: PHPUnit - Start"
echo "====================================================================================="
echo " "

echo " > Installing..."
composer global require 'phpunit/phpunit=5.1.*' -q
sudo chmod -R 777 /root
sudo ln -fs /root/.config/composer/vendor/bin/phpunit /usr/local/bin/phpunit > /dev/null 2>&1

echo " "
echo " > Results:"
phpunit --version

echo " "
echo "====================================================================================="
echo "PROVISIONING: PHPUnit - Finished"
echo "====================================================================================="
echo " "
