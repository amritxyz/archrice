#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

echo
log "Syncing Mirrors..."
sudo pacman -Syy

echo
bash "$SCRIPT_DIR/network-manager.sh"

echo
log "Starting Modular Installation..."

for group in base xorg drivers fonts daemons deps terminal cli media wm apps dev dev_ext bloat tex; do
	bash "$SCRIPT_DIR/install-group.sh" "$group"
done

echo
success "All package groups installed!"

echo
bash "$SCRIPT_DIR/cleanup.sh"

echo
bash "$SCRIPT_DIR/tmp.sh"

echo
bash "$SCRIPT_DIR/setup-dotfiles.sh"

# currently not using firefox so
# echo
# bash "$SCRIPT_DIR/user-js.sh"

echo
bash "$SCRIPT_DIR/services.sh"

echo
bash "$SCRIPT_DIR/cursor.sh"

echo
bash "$SCRIPT_DIR/suckless.sh"

echo
bash "$SCRIPT_DIR/xorg.sh"

echo
bash "$SCRIPT_DIR/clone-repos.sh"
