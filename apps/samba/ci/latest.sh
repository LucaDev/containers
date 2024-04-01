#!/usr/bin/env bash
version="$(curl -sX GET "https://git.alpinelinux.org/aports/plain/main/samba/APKBUILD" | grep pkgver= | sed 's/pkgver=//' 2>/dev/null)"
printf "%s" "${version}"
