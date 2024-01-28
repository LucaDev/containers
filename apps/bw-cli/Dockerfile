FROM debian:bookworm-slim AS downloader

ARG BW_CLI_VERSION
ADD https://github.com/bitwarden/clients/releases/download/cli-v${BW_CLI_VERSION}/bw-linux-${BW_CLI_VERSION}.zip /bw.zip

RUN apt update && \
    apt install unzip --yes && \
    unzip bw.zip

FROM debian:bookworm-slim

RUN apt update && \
    apt install curl jq --yes && \
    apt clean

COPY entrypoint.sh /opt/
COPY --from=downloader /bw /opt/
COPY healthcheck.sh /opt/

RUN chmod +x /opt/bw && \
    chmod +x /opt/entrypoint.sh && \
    chmod +x /opt/healthcheck.sh && \
    useradd -m bitwarden

USER bitwarden

ENTRYPOINT ["/opt/entrypoint.sh"]
