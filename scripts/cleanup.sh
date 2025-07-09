#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

ask "Cleanup: Would you like to clean up your home directory? [y/N] "
read -r DLT

if [[ "$DLT" == "y" || "$DLT" == "Y" ]]; then
	log "Cleaning up hidden files in \$HOME..."
	sudo rm -rf "$HOME"/.[!.]*
	success "Cleanup complete."
else
	warn "Skipping cleanup."
fi
