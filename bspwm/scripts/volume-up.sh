#!/bin/bash

# Increase volume
amixer -D pulse sset Master 5%+ > /dev/null

# Get the current volume level
VOLUME=$(amixer -D pulse sget Master | grep -oP '\[\d+%\]' | head -n1)

# Send notification using dunst
dunstify -u low -t 5000 "Volume" "Increased to $VOLUME" -r 1234
