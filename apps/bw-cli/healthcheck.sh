#!/bin/sh

set -e

BW_STATUS=$(curl --fail http://127.0.0.1:8087/status | jq -r .data.template.status)

if [ "$BW_STATUS" != "unlocked" ]; then
    exit 1;
fi
