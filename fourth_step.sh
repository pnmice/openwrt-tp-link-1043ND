#!/bin/sh

set -o verbose
set -o xtrace

ip="192.168.20.145"
home_dir="echo ${HOME}/openwrt-tp-link-1043ND"

#swap use 100%
ssh root@$ip "echo 'vm.swappiness = 100' >> /etc/sysctl.conf"
ssh root@$ip sysctl -p
scp $home_dir/templates/symlinks.sh root@$ip:/root
ssh root@$ip chmod +x /root/symlinks.sh
ssh root@$ip sh /root/symlinks.sh

