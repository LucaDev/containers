#!/usr/bin/env bash
version="$(curl -sX GET "https://api.github.com/repos/jellyfin/jellyfin/releases" | jq -r 'map(select(.tag_name))[0].tag_name' 2>/dev/null)"
version="${version#*v}"
printf "%s" "${version}"
