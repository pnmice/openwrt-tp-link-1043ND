#!/bin/sh

set -o verbose
set -o xtrace

home_dir="echo ${HOME}/openwrt-tp-link-1043ND"
ip=`cat $home_dir/hosts | tail +2 | cut -d ' ' -f1`

ssh="ssh root@$ip"


$ssh opkg update 
$ssh opkg install kmod-usb-storage kmod-usb2 kmod-fs-ext4 block-mount
$ssh swapon /dev/sda1
$ssh sh /root/symlinks.sh

