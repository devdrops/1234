#! /bin/bash

echo " "
echo "====================================================================================="
echo "PROVISIONING: MySQL Server - Start"
echo "====================================================================================="
echo " "

echo " > Installing..."
sudo apt-get install -y mysql-server > /dev/null 2>&1

echo " "
echo " > Results:"
mysql --version

echo " "
echo "====================================================================================="
echo "PROVISIONING: MySQL Server - Finished"
echo "====================================================================================="
echo " "
