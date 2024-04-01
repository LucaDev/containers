FROM alpine:edge AS downloader

RUN apk update && apk add samba-server

COPY entrypoint.sh /opt/
COPY conf/base.conf /etc/smb.d/base.conf

RUN adduser -S samba && \
    chown -R samba /etc/smb.d && \
    chown samba /etc/samba/smb.conf && \
    chmod +x /opt/entrypoint.sh && \
    mkdir -p /var/cache/samba && \
    chown -R samba /var/lib/samba && \
    mkdir -p /var/lib/samba && \
    chown -R samba /var/cache/samba && \
    mkdir -p /var/run/samba && \
    chown -R samba /var/run/samba

USER samba

ENTRYPOINT ["/opt/entrypoint.sh"]
