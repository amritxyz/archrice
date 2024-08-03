# Installation
```
sudo xbps-install xorg base-devel harfbuzz-devel libX11-devel libXinerama-devel libXft-devel
```
# Dependencies
```
sudo xbps-install brightnessctl xwallpaper htop xset slock lf alsa-utils font-awesome6 nerd-fonts-symbols-ttf picom fastfetch firefox nsxiv neovim mpv newsboat sxhkd bleachbit unzip zathura zathura-pdf-poppler zathura-cb zathura-djvu
//font-hack-ttf

```
# Window Manager
```
git clone https://gitlab.com/amrit-44404/void-dwm
```
# NetworkManager
```
sudo xbps-install NetworkManager &&
sudo rm -rf /var/service/dhcpcd &&
sudo rm -rf /var/service/wpa_supplicant &&
sudo ln -s /etc/sv/NetworkManager/ /var/service/ &&
sudo ln -s /etc/sv/dbus/ /var/service/ &&
sv up dhcpcd &&
sv up wpa_supplicant &&
```
# wpa_supplicant
```
/etc/wpa_supplicant/wpa_supplicant.conf

ctrl_interface=/run/wpa_supplicant
update_config=1

```
```
wpa_passphrase SSID passphrase >> /etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf

wpa_supplicant -B -i interface -c <(wpa_passphrase MYSSID passphrase)

```
# ArchLinux
```
sudo pacman -S brightnessctl xwallpaper htop lf xorg-xset alsa-utils ttf-font-awesome ttf-hack ttf-hack-nerd picom fastfetch firefox nsxiv neovim mpv newsboat sxhkd bleachbit unzip zathura zathura-pdf-poppler zathura-cb zathura-djvu
```
