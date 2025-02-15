#!/usr/bin/env bash
echo -n $(curl -s "https://sources.debian.org/api/src/samba/" | jq '.versions[] | select(.suites[] | contains("bookworm-backports")).version' | sed 's/\"2://' | sed 's/+.*//' | head -n 1)
