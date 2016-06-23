#! /bin/bash

echo " "
echo " ----- INSTALLING SYSTEM REQUIREMENTS ----- "
echo " "

echo " > vim, cURL, wget, zip, unzip, build-essential, python-software-properties, git language-pack-en-base"
sudo apt-get -y install vim curl wget zip unzip build-essential python-software-properties git language-pack-en-base > /dev/null 2>&1
sudo apt-get -qq update

echo " "
echo " ----- INSTALLING SYSTEM REQUIREMENTS: DONE! ----- "
echo " "
