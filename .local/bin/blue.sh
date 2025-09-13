#!/bin/sh
get_device_list() {
	bluetoothctl devices | awk -F ' ' '{print $3 " " $2}'
}

device_list=$(get_device_list)
selected_device=$(echo "$device_list" | dmenu -l 10 | awk '{print $1}')
if [ -z "$selected_device" ]; then
	notify-send "No device selected."
	exit 1
fi

[ -z "$selected_device" ] && notify-send "No device selected." && exit 1

MAC=$(echo "$device_list" | grep "$selected_device" | awk '{print $2}')
[ -z "$MAC" ] && notify-send "$selected_device..." "Failed to find MAC address." && exit 1

connect=$(bluetoothctl info "$MAC" | grep Connected: | awk '{print $2}')

if [ "$connect" = "no" ]; then
	action="connect"
elif [ "$connect" = "yes" ]; then
	action="disconnect"
else
	notify-send "$selected_device" "Unknown status"
	exit 1
fi

notify-send "$selected_device" "Attempting to $action..."
if bluetoothctl "$action" "$MAC"; then
	notify-send "$selected_device" "Successfully ${action}ed."
else
	notify-send "$selected_device" "Failed to $action."
fi
