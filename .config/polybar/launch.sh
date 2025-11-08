#!/usr/bin/env bash
# Terminate already running bars
killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch main bar
polybar main &
