#!/usr/bin/env bash

set -oue pipefail

echo "--> Removing ld link"
rm -v /usr/bin/ld
rm -v /etc/alternatives/ld
echo "--> Installing gcc and g++"
rpm-ostree install gcc g++
echo "--> Re-adding the ld link"
ln -sf /usr/bin/ld.bfd /etc/alternatives/ld 
ln -sf /etc/alternatives/ld /usr/bin/ld
