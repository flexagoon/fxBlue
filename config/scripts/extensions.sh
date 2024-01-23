#!/usr/bin/env bash

set -oue pipefail

echo "--> Installing gnome extensions"
rpm-ostree install gnome-shell-extension-blur-my-shell
echo "--> Uninstalling the Gnome Extensions App weak dependency"
rpm-ostree override remove gnome-extensions-app
