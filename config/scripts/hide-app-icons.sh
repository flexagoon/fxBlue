#!/usr/bin/env bash

set -oue pipefail

cd /usr/share/applications
echo "Hidden=true" | tee -a nvidia-settings.desktop fish.desktop nvim.desktop
