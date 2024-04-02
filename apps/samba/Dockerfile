FROM alpine:edge AS downloader

RUN apk update && apk add samba-server

COPY entrypoint.sh /opt/
COPY conf/base.conf /etc/smb.d/base.conf
COPY conf/user.map /etc/samba/user.map

ENTRYPOINT ["/opt/entrypoint.sh"]
