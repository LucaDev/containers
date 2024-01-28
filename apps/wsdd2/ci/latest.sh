#!/usr/bin/env bash
git clone --quiet https://github.com/Netgear/wsdd2.git /tmp/jbops
pushd /tmp/jbops > /dev/null || exit
version=$(git rev-list --count --first-parent HEAD)
popd > /dev/null || exit
rm -rf /tmp/jbops
printf "1.0.%d" "${version}"