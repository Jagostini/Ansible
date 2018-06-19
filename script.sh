#!/bin/bash

#deb http://ppa.launchpad.net/ansible/ansible/ubuntu stretch main
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
#sudo apt-get update
#sudo apt-get -y install ansible
echo 'deb http://http.debian.net/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
apt update
apt -t stretch-backports install ansible

sudo apt-get install apt-transport-https lsb-release ca-certificates
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
sudo apt-get update
sudo apt-get -y install php7.2-cli