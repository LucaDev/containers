FROM debian:bookworm AS builder

WORKDIR /root/

COPY ./patches ./patches

RUN apt-get update && \
    apt-get install git gcc make --yes && \
    git clone https://github.com/Netgear/wsdd2.git && \
    cd wsdd2 && \
    git apply ../patches/*.patch && \
    make

FROM scratch

COPY --from=builder /root/wsdd2/wsdd2 /

ENTRYPOINT [ "/wsdd2" ]