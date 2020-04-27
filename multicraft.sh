#!/bin/sh

apt-get update && sudo apt-get upgrade -y
apt-get install apache2 sqlite -y
apt-get install nano -y
apt-get install php7.2 php7.2-sqlite php7.2-gd -y
apt-get install openjdk-8-jdk -y
sleep 2
wget https://raw.githubusercontent.com/rhijjawi/Multicraft-install-script/master/apache2.conf -O /etc/apache2/apache2.conf
service apache2 reload
echo "Please wait"
sleep 5
wget --content-disposition http://www.multicraft.org/download/index?arch=linux64
tar -xzf multicraft*.tar.gz
cd multicraft/
sleep 5
echo "Executing set-up script, user-input required"
echo "Please use a consistant username and password for all processes (VERY IMPORTANT)"
sleep 5
./setup.sh
