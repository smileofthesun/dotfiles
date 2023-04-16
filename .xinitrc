#!/bin/sh
xset s off
xset -dpms
xset s noblank

export GNOME_KEYRING_CONTROL=$(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

pipewire &
pipewire-pulse &

slstatus &
mousefix &
xcompmgr &
sxhkd &
xautolock -time 30 -locker slock &
dunst &
xwallpaper --zoom $HOME/documents/wallpapers/art/1635700088405.jpg

# loop
while true; do
	dwm >/dev/null 2>&1
done

# dwm
exec dwm

