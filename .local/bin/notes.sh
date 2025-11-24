#!/bin/sh

folder="$HOME/.local/dox/notes/mds/"
mkdir -p "$folder"

TERMINAL="st"

newnote() {
	[ -z "$name" ] && name=$(date +%F_%H-%M-%S)
	name=$(echo "tmp_$name" | sed 's/[[:space:]]\+/_/g')
	setsid -f "$TERMINAL" -e nvim "$folder${name}.md" >/dev/null 2>&1
}

selected() {
	files=$(find "$folder" -maxdepth 1 -name "*.md" -type f -printf '%f\n' | \
		sed 's/\.md$//' | sed 's/_/ /g' | sort -r)

	choices=$(printf "new\n$files")

	choice=$(printf '%s\n' "$choices" | dmenu -p "Note name: " -l 10)

	[ -z "$choice" ] && exit 0

	case "$choice" in
		"new")
			newnote ;;
		*)
			filename=$(echo "$choice" | sed 's/[[:space:]]\+/_/g')
			filepath="$folder${filename}.md"
			[ ! -f "$filepath" ] && echo "# $choice" > "$filepath"
			setsid -f "$TERMINAL" -e nvim "$filepath" >/dev/null 2>&1
			;;
	esac
}

selected
