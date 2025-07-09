#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RICE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
source "$SCRIPT_DIR/common.sh"

log "Copying dotfiles and personal rice..."

mkdir -p ~/.local/{share,bin,src,git-repos,hugo-dir,dox,vids,music,audio} ~/.config

# Copy .config files
cp -r "$RICE_DIR/.config/"* "$HOME/.config"

# Copy local share
cp -r "$RICE_DIR/.local/share/"* "$HOME/.local/share"

# Copy local bin scripts
cp -r "$RICE_DIR/.local/bin/"* "$HOME/.local/bin"

# Shell and input config
cp "$RICE_DIR/.bashrc" "$HOME/.bashrc"
cp "$RICE_DIR/.bash_profile" "$HOME/.bash_profile"
cp "$RICE_DIR/.inputrc" "$HOME/.inputrc"
cp "$RICE_DIR/.xinitrc" "$HOME/.xinitrc"

# Move archrice repo into ~/.local/git-repos
mkdir -p "$HOME/.local/git-repos"
