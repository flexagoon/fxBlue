#!/usr/bin/env bash

set -euo pipefail

echo "--> Disabling the staging repository"
rm -f /etc/yum.repos.d/ublue-os-staging-fedora-*.repo
