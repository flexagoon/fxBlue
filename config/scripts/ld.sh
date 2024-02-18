#!/usr/bin/env bash

set -oue pipefail

echo "--> Symlinking ld"
ln -sf /usr/bin/ld.bfd /etc/alternatives/ld
ln -sf /etc/alternatives/ld /usr/bin/ld
