#!/bin/bash

RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
BLUE="\033[1;34m"
CYAN="\033[0;36m"
RESET="\033[0m"
BOLD="\033[1m"
CHECK="[OK]"
CROSS="[FAIL]"
INFO="[INFO]"
# CHECK="\xE2\x9C\x94"
# CROSS="\xE2\x9D\x8C"
# INFO="\xE2\x84\xB9"

log() {
	echo -e "${BLUE}[INFO]$(date +'%Y-%m-%d %H:%M:%S')${RESET} $1"
}

ask() {
	echo -ne "${CYAN}$1 ${RESET}"
}

success() {
	echo -e "${GREEN}${CHECK} $1${RESET}"
}

warn() {
	echo -e "${YELLOW}${INFO} $1${RESET}"
}

fail() {
	echo -e "${RED}${CROSS} $1${RESET}"
}
