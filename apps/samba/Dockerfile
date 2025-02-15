FROM debian:bookworm-backports
RUN apt-get update && apt-get install -y -t bookworm-backports samba

ENTRYPOINT ["/usr/sbin/smbd"]
CMD ["-F", "--no-process-group"]