#!/bin/sh

#set -o verbose
#set -o xtrace

ip="192.168.20.145"
home_dir="echo ${HOME}/openwrt-tp-link-1043ND"


ssh root@$ip opkg update
ssh root@$ip install fdisk e2fsprogs kmod-usb-storage kmod-usb2 kmod-fs-ext4 block-mount


#manual operation
# fdisk /dev/sda
# create swap 1.5GB
# create partition

# mkswap /dev/sda1
# mkfs.ext4 /dev/sda2

# template/fstab 
# added your UUID


#copy fstab to /etc/config/
#scp $home_dir/templates/fstab root@$ip:/etc/config/
