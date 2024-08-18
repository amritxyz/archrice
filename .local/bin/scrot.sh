#!/bin/sh

# Define the target directory
TARGET_DIR="$HOME/.local/img"

# Check if the directory exists
if [ ! -d "$TARGET_DIR" ]; then
    mkdir -p "$TARGET_DIR"
fi

# Take the screenshot and move it to the target directory
scrot -s 'arch-%Y-%m-%d-%s_screenshot_$wx$h.png' -e 'mv $f '"$TARGET_DIR"
