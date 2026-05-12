#!/bin/sh

wallpaper="$(
  find "$HOME/Pictures/Wallpapers" -type f \
    \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.webp' \) |
  rofi -dmenu -i -p 'Wallpaper'
)"

[ -n "$wallpaper" ] || exit 0

feh --bg-fill "$wallpaper"
