#!/bin/sh
case $BLOCK_BUTTON in
    1) notify-send "This Month" "$(cal --color=always | sed "s/..7m/<b><span color=\"red\">/;s/..27m/<\/span><\/b>/")" ;;
    2) ;;
    3) notify-send "Three Months" "$(cal --color=always | sed "s/..7m/<b><span color=\"red\">/;s/..27m/<\/span><\/b>/")" ;;
    6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac

date "+%Y %b %d (%a)  %I:%M%p"
