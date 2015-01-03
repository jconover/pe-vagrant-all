#!/bin/bash -eux

if which apt-get &> /dev/null; then
    echo "===> Debian/Ubuntu doesn't need epel."
    echo " "
  elif which yum &> /dev/null; then
    echo "===> Installing EPEL repository."
    sudo rpm -ivh http://mirror.us.leaseweb.net/epel/6/i386/epel-release-6-8.noarch.rpm
    echo "===> EPEL repository is enabled."
    echo ""
fi
