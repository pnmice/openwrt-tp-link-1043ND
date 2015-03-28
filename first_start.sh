#!/bin/sh

#set -o verbose
#set -o xtrace

ip="192.168.20.145"

echo "Did you paste your setting in templates/network templates/wireless templates/system?"

echo "Continue(yes)"
read line
case "$line" in 
	yes )
	#sh copy_ssh_key.sh $ip
	#scp ~/openwrt-tp-link-1043ND/templates/network root@$ip:/etc/config/
	#scp ~/openwrt-tp-link-1043ND/templates/firewall root@$ip:/etc/config/
	#scp ~/openwrt-tp-link-1043ND/templates/wireless root@$ip:/etc/config/
	#scp ~/openwrt-tp-link-1043ND/templates/system root@$ip:/etc/config/ 
	 
         ;;
        * ) 
	exit ;;

esac	
