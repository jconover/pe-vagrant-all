#!/bin/bash -eux

#sudo /bin/cp -rf -r /vagrant/files/.ssh /root

    echo "===> Adding bash aliases and vim plugins for "
    sudo /bin/cp -rf /vagrant/files/.bash* /root/
    sudo /bin/cp -rf /vagrant/files/.vim* /root/
    sudo chown -R root:root /root
    /bin/cp -rf /vagrant/files/.bash* /home/vagrant/
    /bin/cp -rf /vagrant/files/.vim* /home/vagrant/
    sudo chown -R vagrant:vagrant /home/vagrant
    echo "===> files depoyed"
    echo " "

