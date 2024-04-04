ARG VERSION
FROM jellyfin/jellyfin:${VERSION}

RUN set -eux && sed -i 's;</body>;<script plugin="Jellyscrub" version="1.0.0.0" src="/Trickplay/ClientScript"></script></body>;' jellyfin/jellyfin-web/index.html
