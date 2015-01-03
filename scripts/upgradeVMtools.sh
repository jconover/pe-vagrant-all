#!/bin/bash

cd /tmp
mkdir -p /mnt/cdrom
mount -o loop /dev/cdrom /mnt/cdrom
tar zxvf /mnt/cdrom/VMwareTools-*.tar.gz -C /tmp/
/tmp/vmware-tools-distrib/vmware-install.pl -d
rm -fr /tmp/vmware-tools-distrib
umount /mnt/cdrom
