#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

log "Configuring xorg..."

sudo mkdir -p /etc/X11/xorg.conf.d/
sudo cp $HOME/archrice/.local/share/10-modesetting.conf /etc/X11/xorg.conf.d/
sudo cp $HOME/archrice/.local/share/40-libinput.conf /etc/X11/xorg.conf.d/
sudo cp $HOME/archrice/.local/share/hosts /etc/hosts

success "Successfully configured xorg."
