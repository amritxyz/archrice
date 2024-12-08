#!/bin/bash

# Define the target directory
TARGET_DIR="$HOME/.local/ss"

# Check if the directory exists
if [ ! -d "$TARGET_DIR" ]; then
    mkdir -p "$TARGET_DIR"
fi

# Find the highest number used in existing filenames
MAX_NUMBER=$(ls -1 "$TARGET_DIR"/*_screenshot.png 2>/dev/null | \
              awk -F'[_]' '{print $1}' | \
              awk -F/ '{print $NF}' | \
              sort -n | \
              tail -1)

# Check if no files were found
if [ -z "$MAX_NUMBER" ]; then
  MAX_NUMBER=0
fi

# Determine the next number
NEXT_NUMBER=$((MAX_NUMBER + 1))

# Define the filename format
FILENAME="$TARGET_DIR/${NEXT_NUMBER}_screenshot.png"

# Take the screenshot and save it with the new filename
scrot -s "$FILENAME"
