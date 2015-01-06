#!/bin/bash -eux

#sudo /bin/cp -rf -r /vagrant/files/.ssh /root

    echo "===> Adding bash aliases and vim plugins for puppet"
#    sudo mkdir /root/.ssh
    sudo /bin/cp -rf /vagrant/files/.bash* /root/
    sudo /bin/cp -rf /vagrant/files/.vim* /root/
#    sudo /bin/cp -rf /vagrant/files/.ssh /root/
    sudo chown -R root:root /root
    /bin/cp -rf /vagrant/files/.bash* /home/vagrant/
    /bin/cp -rf /vagrant/files/.vim* /home/vagrant/
#    sudo /bin/cp -rf -r /vagrant/files/.ssh/* /home/vagrant/
    sudo chown -R vagrant:vagrant /home/vagrant
    echo "===> files depoyed"
    echo " "

################## Environments ######################

echo '===> Configure Environments.'
echo " "
  #sudo rm -fr /etc/puppetlabs/puppet/files
  #sudo rm -fr /etc/puppetlabs/puppet/manifests
  #sudo rm -fr /etc/puppetlabs/puppet/modules
  sudo rm -fr /etc/puppetlabs/puppet/hiera.yaml
  sudo rm -fr /etc/puppetlabs/puppet/puppet.conf
  #sudo ln -s /vagrant/puppet/files /etc/puppetlabs/puppet/files
  #sudo ln -s /vagrant/puppet/manifests /etc/puppetlabs/puppet/manifests
  #sudo ln -s /vagrant/puppet/modules /etc/puppetlabs/puppet/modules
  sudo mkdir -p /etc/puppetlabs/puppet/environments/production/
  sudo ln -s /vagrant/puppet/hieradata /etc/puppetlabs/puppet/environments/production/hieradata
  sudo ln -s /vagrant/puppet/environments /etc/puppetlabs/puppet/environments
  #sudo /bin/mv /vagrant/puppet/hiera.yaml /etc/puppetlabs/puppet/hiera.yaml.$(date +%F)
  sudo ln -s /vagrant/puppet/hiera.yaml /etc/puppetlabs/puppet/hiera.yaml
  #sudo /bin/mv /vagrant/puppet/puppet.conf /etc/puppetlabs/puppet/puppet.conf.$(date +%F)
  sudo ln -s /vagrant/puppet/puppet.conf /etc/puppetlabs/puppet/puppet.conf
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
