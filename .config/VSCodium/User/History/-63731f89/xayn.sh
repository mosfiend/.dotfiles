#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
 #Killall -q polybar

# Launch bar1 and bar2
polybar --reload --quiet top -c ~/.config/polybar/config &
polybar --reload --quiet bottom -c ~/.config/polybar/config &