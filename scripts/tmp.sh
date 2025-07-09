#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

TMP_DIR=/opt/void

if [ -d "$TMP_DIR" ]; then
	warn "$TMP_DIR Exists.."
else
	log "Creating tmp env in /opt dir..."
	sudo mkdir $TMP_DIR
	sudo chown $USER:$USER $TMP_DIR
	success "Successfully Created tmp env..."
fi
