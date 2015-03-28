#!/bin/sh

scp ~/.ssh/id_rsa.pub root@$1:/etc/dropbear/authorized_keys
ssh root@$1 chmod 0600 /etc/dropbear/authorized_keys
