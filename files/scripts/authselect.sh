#!/usr/bin/env bash

set -euo pipefail

# Use the `local` authselect profile since I don't need to use LDAP
authselect select local with-fingerprint with-mdns4 with-silent-lastlog
