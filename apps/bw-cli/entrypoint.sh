#!/bin/sh

if [ ! -z ${BW_HOST} ]; then 
    echo "Using custom server: ${BW_HOST}"
    /opt/bw config server ${BW_HOST}
else
    echo "Using default server"
fi

if  ! /opt/bw login --check; then 
    if [ ! -z ${BW_CLIENTID} ]; then
        echo "Using APIKEY Login"
        /opt/bw login --apikey
    else
        echo "Using Password Login"
        export BW_SESSION=$(/opt/bw login ${BW_USER} --passwordenv BW_PASSWORD --raw)
        echo "Password Login successful"
    fi
else
    echo "Already logged in."
fi

echo "Unlocking Vault"
export BW_SESSION=$(/opt/bw unlock --passwordenv BW_PASSWORD --raw)

echo 'Running `bw server` on port 8087'
exec /opt/bw serve --hostname all --disable-origin-protection $@
