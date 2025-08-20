#!/usr/bin/bash

# Config
folder="$HOME/.local/dox/notes/mds/"
mkdir -p "$folder"

TERMINAL="st"

# New note function
newnote() {
	# Use dmenu to prompt for a new note name
	name=$(echo "" | dmenu -p "Enter note name: " -l 10)

	# Exit if canceled
	[ -z "$name" ] && exit 0

	# Fallback to timestamp if empty
	: "${name:=$(date +%F_%H-%M-%S)}"

	# Sanitize filename (replace spaces with underscores)
	name=$(echo "$name" | sed 's/[[:space:]]\+/_/g')

	# Open in st + nvim
	setsid -f "$TERMINAL" -e nvim "$folder${name}.md" >/dev/null 2>&1
}

# Select existing or create new
selected() {
	# List existing .md files sorted by modification time (newest first)
	mapfile -t files < <(find "$folder" -maxdepth 1 -name "*.md" -type f -printf '%f\n' | sort -r)

	# Prepend "New" option
	choices=("New")
	for file in "${files[@]}"; do
		# Remove .md extension for display
		display="${file%.md}"
		display="${display//_/ }"  # Optional: show spaces instead of underscores
		choices+=("$display")
	done

	# Join choices for dmenu
	choice=$(printf '%s\n' "${choices[@]}" | dmenu -p "Note name: " -l 10)

	# Exit if nothing selected
	[ -z "$choice" ] && exit 0

	case "$choice" in
		"New")
			newnote
			;;
		*)
			# Convert display name (spaces) back to filename (underscores)
			filename=$(echo "$choice" | sed 's/[[:space:]]\+/_/g')
			# Ensure .md extension
			filepath="$folder${filename}.md"
			# Create file if it doesn't exist
			[ ! -f "$filepath" ] && echo "# $choice" > "$filepath"
			# Open in st
			setsid -f "$TERMINAL" -e nvim "$filepath" >/dev/null 2>&1
			;;
	esac
}

# Run selected
selected
