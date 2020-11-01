#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [[ $m == "eDP1" ]]; then
        TRAY_POSITION=right
    else
        TRAY_POSITION=none
    fi
    TRAY_POS=$TRAY_POSITION MONITOR=$m polybar mainbar > /tmp/polybar.log 2>&1 &
  done
else
  polybar mainbar > /tmp/polybar.log 2>&1 &
fi
