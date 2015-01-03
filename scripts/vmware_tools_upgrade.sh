cat <<'EOF' >> 
if [ ! -e /lib/modules/`uname -r`/misc/.vmware_installed ]; then
  /usr/bin/vmware-config-tools.pl –default
  touch /lib/modules/`uname -r`/misc/.vmware_installed
fi
EOF
