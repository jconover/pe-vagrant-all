#!/bin/bash -eux


################### Update System ##########################

if which apt-get &> /dev/null; then
    echo "===> Attempting to upgrade the system."
    sudo apt-get -y update
    sudo apt-get -y upgrade
    echo '===> system updated.'
    echo " "
  elif which yum &> /dev/null; then
#    sudo yum -y update
    echo '===> system updated.'
    echo " "
  else
    echo "===> Package couldn't be installed."
fi

################### VIM ##########################

if which apt-get &> /dev/null; then
  echo '===> Attempting to install vim.'
    sudo apt-get -y install vim
  elif which yum &> /dev/null; then
    sudo yum -y install vim-enhanced
    echo '===> vim installed.'
  else
    echo 'No package installer available. You may need to install vim manually.'
fi

################### GIT ##########################

if which apt-get &> /dev/null; then
  echo '===> Attempting to install git.'
    sudo apt-get -y install git
  elif which yum &> /dev/null; then
    sudo yum -y install git
    echo '===> git installed.'
  else
    echo 'No package installer available. You may need to install git manually.'
fi


############## Ansible ###################

if which apt-get &> /dev/null; then
  echo '===> Attempting to install ansible.'
    sudo apt-get -y install ansible
    echo '===> ansible installed.'
    echo " "
    echo "===> Deploy Ansible host file."
    sudo cp /vagrant/puppet/files/ansible-hosts /etc/ansible/hosts
    echo "===> Restart sshd"
    sudo /etc/init.d/ssh restart
  elif which yum &> /dev/null; then
#    sudo rpm -ivh /vagrant/puppet/files/epel-release-6-8.noarch.rpm
    #sudo rpm -ivh http://mirror.us.leaseweb.net/epel/6/i386/epel-release-6-8.noarch.rpm
#    sudo yum -y install ansible
    echo '===> ansible installed.'
    echo " "
    echo "===> Deploy Ansible host file."
#    sudo cp /vagrant/puppet/files/ansible-hosts /etc/ansible/hosts
    echo "===> Restart sshd"
#    sudo /sbin/service sshd restart
  else
    echo 'No package installer available. You may need to install ansible manually.'
fi


