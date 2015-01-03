#!/bin/bash -eux

# Enable vmware tools after kernel updates.
# If you update your kernel you will run into:
# “Waiting for HGFS kernel module” Timeouts.
echo "Enable VMware Tools auto kernel update."

cp /etc/vmware-tools/locations /etc/vmware-tools/locations.bak
echo "answer AUTO_KMODS_ENABLED_ANSWER yes" | sudo sed -i 's/answer AUTO_KMODS_ENABLED_ANSWER no/answer AUTO_KMODS_ENABLED_ANSWER yes/g' /etc/vmware-tools/locations

echo "answer AUTO_KMODS_ENABLED yes" | sudo sed -i 's/answer AUTO_KMODS_ENABLED no/answer AUTO_KMODS_ENABLED yes/g' /etc/vmware-tools/locations

cat <<'EOF' >> /etc/rc.local
if [ ! -e /lib/modules/`uname -r`/misc/.vmware_installed ]; then
    /usr/bin/vmware-config-tools.pl –default
    touch /lib/modules/`uname -r`/misc/.vmware_installed
fi
EOF

echo "VMware Tools auto kernel update enabled."

