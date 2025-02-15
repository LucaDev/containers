#!/usr/bin/env bash
version=$(curl -s "https://sources.debian.org/api/src/samba/" | jq '.versions[] | select(.suites[] | contains("bookworm-backports")).version' | sed 's/\"2://' | sed 's/+.*//')
printf "%s" "${version}"