#!/bin/sh

set -o verbose
set -o xtrace

ip=`cat hosts | tail +2 | cut -d ' ' -f1`
ssh="ssh root@$ip"


$ssh opkg update 
$ssh opkg install kmod-usb-storage kmod-usb2 kmod-fs-ext4 block-mount
$ssh swapon /dev/sda2
