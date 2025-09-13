#!/bin/sh

has() {
	verbose=false
	case "$1" in
		-v) verbose=true; shift ;;
	esac
	for c in "$@"; do
		c="${c%% *}"
		if ! command -v "$c" > /dev/null 2>&1; then
			$verbose && echo "${c} not found" >&2
			return 1
		fi
	done
}

has nmcli fzf || {
	echo "nmcli or fzf not found" >&2
	exit 1
}

nmcli -f 'bssid,signal,bars,freq,ssid' --color yes device wifi |
	fzf \
	--with-nth=2.. \
	--ansi \
	--height=40% \
	--reverse \
	--cycle \
	--inline-info \
	--header-lines=1 \
	--bind="enter:execute:nmcli -a device wifi connect {1}"
