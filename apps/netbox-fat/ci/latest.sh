#!/usr/bin/env bash
echo -n "$(curl -sX GET "https://api.github.com/repos/netbox-community/netbox/releases" | jq -r 'map(select(.prerelease == false))[0].tag_name' 2>/dev/null)"
