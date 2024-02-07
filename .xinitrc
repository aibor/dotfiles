#!/bin/sh

xrandr --output HDMI-1 --auto --primary
xset +fp /usr/share/fonts/local
xset fp rehash
xset -dpms
xset s off
xsetroot -solid "#000000"

[[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources

exec i3
