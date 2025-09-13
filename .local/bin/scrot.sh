#!/bin/sh

TARGET_DIR="$HOME/.local/ss"

if [ ! -d "$TARGET_DIR" ]; then
	mkdir -p "$TARGET_DIR"
fi

MAX_NUMBER=$(ls -1 "$TARGET_DIR"/*_screenshot.png 2>/dev/null | \
	awk -F'[_]' '{print $1}' | \
	awk -F/ '{print $NF}' | \
	sort -n | \
	tail -1)

if [ -z "$MAX_NUMBER" ]; then
	MAX_NUMBER=0
fi

NEXT_NUMBER=$((MAX_NUMBER + 1))

FILENAME="$TARGET_DIR/${NEXT_NUMBER}_screenshot.png"

scrot -s "$FILENAME"
