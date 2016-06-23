#! /bin/bash

echo " "
echo "====================================================================================="
echo "PROVISIONING: System Requirements - Start"
echo "====================================================================================="
echo " "

echo " > Installing..."
sudo apt-get update -y > /dev/null 2>&1

sudo apt-get -y install vim curl wget zip unzip build-essential python-software-properties git language-pack-en-base > /dev/null 2>&1
sudo apt-get -qq update > /dev/null 2>&1

echo " "
echo "====================================================================================="
echo "PROVISIONING: System Requirements - Finished"
echo "====================================================================================="
echo " "
