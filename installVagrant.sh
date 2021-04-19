#/!bin/bash
cd /tmp/

echo "$(tput setaf 4)""Download Vagrant"
echo
wget https://releases.hashicorp.com/vagrant/2.2.5/vagrant_2.2.5_x86_64.rpm


#echo -e '\033[0;31m'  "Vagrant Version"
echo "$(tput setaf 2)""Install Vagrant"
echo 
yum install -y vagrant_2.2.5_x86_64.rpm
echo

echo "$(tput setaf 3)""Vagrant Version:" $(vagrant --version) 
echo

echo "$(tput setaf 5)""Create Vagrant directory"
mkdir Vagrant; cd Vagrant
