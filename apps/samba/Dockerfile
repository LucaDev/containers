FROM alpine:edge AS downloader

RUN apk update && apk add samba-server nss-pam-ldapd envsubst

COPY entrypoint.sh /opt/
COPY conf/base.conf /etc/smb.d/base.conf
COPY conf/nslcd.conf.tpl /etc/nslcd.conf.tpl
COPY conf/pam_login /etc/pam.d/login

RUN chmod +x /opt/entrypoint.sh && chmod 600 /etc/nslcd.conf

ENTRYPOINT ["/opt/entrypoint.sh"]
