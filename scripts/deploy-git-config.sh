#!/bin/bash -eux

################## Environments ######################

echo '===> Configure Environments.'
echo " "
#  sudo /bin/cp -rf /vagrant/files/puppet.conf /etc/puppetlabs/puppet/puppet.conf
  sudo su -
#  'echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config'
  cd /etc/puppetlabs/puppet
  git config --global user.name "Justin Conover"
  git config --global user.email justin.conover@gmail.com
  git config --global core.editor vim
  git config --global merge.tool vimdiff
#  git clone https://github.com/jconover/environments.git
#  git clone git@github.com:jconover/environments.git
echo '===> Environment configured.'
