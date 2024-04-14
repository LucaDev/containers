FROM debian:bookworm-backports

RUN apt-get update && apt-get install -y -t bookworm-backports samba samba-vfs-modules libnss-ldapd gettext-base

COPY entrypoint.sh /opt/
COPY conf/base.conf /etc/smb.d/base.conf
COPY conf/nslcd.conf.tpl /etc/nslcd.conf.tpl
COPY conf/nsswitch.conf /etc/nsswitch.conf

RUN chmod +x /opt/entrypoint.sh && chmod 600 /etc/nslcd.conf

ENTRYPOINT ["/opt/entrypoint.sh"]
