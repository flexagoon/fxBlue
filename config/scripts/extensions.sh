#!/usr/bin/env bash

set -euo pipefail

echo "--> Installing gnome extensions"
rpm-ostree install gnome-shell-extension-blur-my-shell
echo "--> Uninstalling the Gnome Extensions App weak dependency"
rpm-ostree override remove gnome-extensions-app
