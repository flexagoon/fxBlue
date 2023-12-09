#!/usr/bin/env bash

set -oue pipefail

rpm-ostree initramfs-etc --track=/etc/vconsole.conf
