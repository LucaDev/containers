#!/bin/sh
set -e

cat /etc/nslcd.conf.tpl | envsubst > /etc/nslcd.conf 
nslcd

cat /etc/smb.d/* > /etc/samba/smb.conf
exec /usr/sbin/smbd -F --no-process-group
