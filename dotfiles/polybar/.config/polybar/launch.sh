#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.2; done

if type "xrandr"; then
  for m in $(polybar -m | cut -d":" -f1); do
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
