#! /bin/bash

if type -p mysql; then
  exit 0;
fi

echo " "
echo " ----- INSTALLING MYSQL ----- "
echo " "

apt-get install -y mysql-server > /dev/null 2>&1
sed -i 's|bind-address.*|bind-address = 0.0.0.0' /etc/mysql/my.cnf

echo " "
echo " ----- INSTALLING MYSQL: DONE! ----- "
echo " "
