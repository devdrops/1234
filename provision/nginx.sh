#! /bin/bash

echo " "
echo "====================================================================================="
echo "PROVISIONING: nginx - Start"
echo "====================================================================================="
echo " "

echo " > Installing..."
#apt-get install nginx > /dev/null 2>&1

# Download nginx startup script
wget -O init-deb.sh https://www.linode.com/docs/assets/660-init-deb.sh > /dev/null 2>&1

# Move the script to the init.d directory & make executable
sudo mv init-deb.sh /etc/init.d/nginx
sudo chmod +x /etc/init.d/nginx

# Add nginx to the system startup
sudo /usr/sbin/update-rc.d -f nginx defaults > /dev/null 2>&1

echo " "
echo " > Results:"
service nginx status

echo " "
echo "====================================================================================="
echo "PROVISIONING: nginx - Finished"
echo "====================================================================================="
echo " "
