#!/bin/sh

set -e

cat /etc/smb.d/* > /etc/samba/smb.conf

exec /usr/sbin/smbd -i
