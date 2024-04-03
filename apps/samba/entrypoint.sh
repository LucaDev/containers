#!/bin/sh

set -e

cat /etc/smb.d/* > /etc/samba/smb.conf

cat /etc/nslcd.conf.tpl | envsubst >> /etc/nslcd.conf 
nslcd

exec /usr/sbin/smbd -i
