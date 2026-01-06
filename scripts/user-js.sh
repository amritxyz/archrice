#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RICE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
source "$SCRIPT_DIR/common.sh"

# User.js
NAME="$HOME/.local/share/arkenfox.js"
USER_JS="dwm-fast.js"
URL="https://codeberg.org/amritxyz/user.js/raw/branch/main/"

log "Getting "$USER_JS"..."

wget -q --show-progress -O "$NAME" "$URL/$USER_JS"

success "Successfully downloaded user.js."
