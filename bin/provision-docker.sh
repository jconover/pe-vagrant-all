#!/bin/bash -eux

############## Docker ###################

if which apt-get &> /dev/null; then
  echo '===> Attempting to install Docker'
    sudo apt-get -y install curl
    curl -s https://get.docker.io/gpg|sudo apt-key add -
    sudo apt-get update
    sudo apt-get -y install lxc-docker
    echo '===> Docker installed.'
    echo " "
  elif which yum &> /dev/null; then
    #sudo rpm -ivh http://mirror.us.leaseweb.net/epel/6/i386/epel-release-6-8.noarch.rpm
    sudo yum -y install device-mapper lxc-docker
    echo '===> Docker installed.'
    echo " "
    echo "===> Enabling services"
    sudo /sbin/service docker start
    sudo /sbin/chkconfig docker on
  else
    echo 'No package installer available. You may need to install Docker manually.'
fi
