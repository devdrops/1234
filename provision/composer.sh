#! /bin/bash

echo " "
echo "====================================================================================="
echo "PROVISIONING: Composer - Start"
echo "====================================================================================="
echo " "

if [ ! -f "/usr/local/bin/composer" ]; then
    echo " > Installing..."
    curl --silent https://getcomposer.org/installer | php > /dev/null 2>&1
    mv composer.phar /usr/local/bin/composer
else
    echo " > Upgrading..."
    composer self-update -q
fi

echo " "
echo " > Results:"
composer -V
echo " "

echo " "
echo "====================================================================================="
echo "PROVISIONING: Composer - Finished"
echo "====================================================================================="
echo " "
