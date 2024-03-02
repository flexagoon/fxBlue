#!/usr/bin/env bash

set -euo pipefail

cd /usr/share/applications
echo "Hidden=true" | tee -a nvidia-settings.desktop fish.desktop nvim.desktop
