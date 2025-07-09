#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

log "Enabling bluetooth service..."

sudo systemctl enable bluetooth.service

success "Successfully enabled bluetooth"
