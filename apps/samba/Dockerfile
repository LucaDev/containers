FROM debian:bookworm-backports
RUN apt-get update && apt-get install -y -t bookworm-backports samba samba-vfs-modules libnss-ldapd attr gettext-base

ENTRYPOINT ["/usr/sbin/smbd"]
CMD ["-F", "--no-process-group"]