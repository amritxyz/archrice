#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

log "Installing nsxiv..."

if [ ! -d ~/.local/src/ ]; then
	mkdir -p ~/.local/src/
fi

git clone --depth=1 https://github.com/amritxyz/nsxiv.git/ $HOME/.local/src/nsxiv

sudo make -C $HOME/.local/src/nsxiv/ clean install

success "Successfully installed nsxiv."
