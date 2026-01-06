#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

log "Installing suckless's software..."

if [ ! -d ~/.local/src/ ]; then
	mkdir -p ~/.local/src/
fi

git clone --depth=1 https://codeberg.org/amritxyz/arch-dwm.git $HOME/.local/src/arch-dwm

sudo make -C $HOME/.local/src/arch-dwm/dwm/ clean install
sudo make -C $HOME/.local/src/arch-dwm/dmenu/ clean install
sudo make -C $HOME/.local/src/arch-dwm/st/ clean install
sudo make -C $HOME/.local/src/arch-dwm/dwmblocks clean install
sudo make -C $HOME/.local/src/arch-dwm/slock/ clean install

success "Successfully installed suckless's software."
