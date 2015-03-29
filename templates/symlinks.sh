#!/bin/sh

#set -o verbose
#set -o xtrace


for x in $(ls /opt/usr/)
do
	[ ! -d /usr/$x ]	&& mkdir -p /usr/$x
	for i in $(ls /opt/usr/$x)
	do

	[ ! -f /usr/$x/$i ] && ln -s  /opt/usr/$x/$i  /usr/$x/$i
	done
done	

for i in $(ls /opt/lib)
	do
	[ ! -f /lib/$i ] && ln -s  /opt/lib/$i  /lib/$i
	done
