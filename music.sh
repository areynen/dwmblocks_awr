#!/bin/sh
title=$(mpc current)
progress=$(mpc status | head -2 | tail -1 | awk '{print $3}')
status=$(mpc status | head -2 | tail -1 | awk '{print $1}')

case "$status" in
    "[playing]") icon="";;
    "[paused]") icon="";;
esac

case $BLOCK_BUTTON in
    1) (pgrep ncmpcpp && xdotool set_window --urgency 1 "$(xdotool search --onlyvisible --class 'ncmpcpp')" && dwmc focusurgent ) || $TERMINAL -c ncmpcpp -e ncmpcpp ;;
    2) mpc toggle && pkill -RTMIN+2 dwmblocks;; 
    3) mpcnotify.sh ;;
    6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac


echo ' ' "$icon" "$title" '-' "$progress"

