#!/bin/sh

set -o verbose
set -o xtrace

ip="192.168.20.145"


#ssh root@$ip "echo "dest usb /opt" >> /etc/opkg.conf"
ssh root@$ip opkg update
ssh root@$ip opkg -dest usb install python openssh-sftp-server libpthread

