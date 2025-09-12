#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

sudo pacman -S dash

# Reconfigure /bin/sh to use dash
sudo ln -sfT /bin/dash /bin/sh

echo
log "changing default /bin/sh from bash to dash."
