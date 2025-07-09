#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RICE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
source "$SCRIPT_DIR/common.sh"

log "Changing cursor..."

FILE="/usr/share/icons/default/index.theme"
BACKUP_FILE="$FILE.bak"

# Make a backup first if it doesn't exist
if [ ! -f "$BACKUP_FILE" ]; then
	log "Creating backup at $BACKUP_FILE..."
	sudo cp "$FILE" "$BACKUP_FILE"
else
	warn "Backup already exists at $BACKUP_FILE. Skipping backup."
fi

# Replace the line
sudo sed -i 's|^Inherits=.*$|Inherits=hicolor|' "$FILE"

success "Cursor theme changed to Adwaita."
