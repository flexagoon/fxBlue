#!/usr/bin/env bash

set -oue pipefail

cd /usr/share/applications
cp /var/lib/flatpak/app/org.gnome.Loupe/current/active/export/share/applications/org.gnome.Loupe.desktop .
echo "Hidden=true" | tee -a nvidia-settings.desktop fish.desktop org.gnome.Loupe.desktop
