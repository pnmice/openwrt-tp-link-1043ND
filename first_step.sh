#!/bin/sh

#set -o verbose
#set -o xtrace

ip="192.168.20.145"
home_dir="echo ${HOME}/openwrt-tp-link-1043ND"

echo "Did you paste your setting in templates/network templates/wireless templates/system?"

echo "Continue(yes)"
read line
case "$line" in 
	yes )
	#copy ssh key	
	scp ~/.ssh/id_rsa.pub root@$ip:/etc/dropbear/authorized_keys
	ssh root@$ip chmod 0600 /etc/dropbear/authorized_keys	
	scp $home_dir/templates/network root@$ip:/etc/config/
	scp $home_dir/templates/firewall root@$ip:/etc/config/
	scp $home_dir/templates/wireless root@$ip:/etc/config/
	scp $home_dir/templates/system root@$ip:/etc/config/ 
	 
         ;;
        * ) 
	exit ;;

esac	
