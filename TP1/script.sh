#!/bin/bash

sudo su -

#apt install apt-transport-https lsb-release ca-certificates && apt update

#wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
#echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list

echo 'deb http://http.debian.net/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
apt update
apt -t stretch-backports install ansible

ansible all -b -m user -a "name=sysadmin group=sysadmin createhome=yes uid=666 shell=/bin/bash"
ansible-playbook playbook.yml
