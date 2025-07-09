#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

GROUP="$1"
PACKAGES_FILE="$SCRIPT_DIR/../packages/${GROUP}.lst"

echo
log "Installing $GROUP packages..."

if [[ ! -f "$PACKAGES_FILE" ]]; then
	fail "No package list for group: $GROUP"
	exit 1
fi

mapfile -t PACKAGES < <(grep -vE '^\s*#|^\s*$' "$PACKAGES_FILE")

sudo pacman -S --needed --noconfirm "${PACKAGES[@]}"

echo
success "$GROUP packages installed."
