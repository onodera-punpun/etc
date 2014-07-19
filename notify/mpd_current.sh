#!/bin/bash

# Get current playing song from MPD
current=$(mpc current)

# Combine all the variables into a single output and send this to notify.sh
echo "Song changed to: $current" > /home/onodera/.scripts/notify/text

# Tell notify.sh that it needs to display a notication
exec bash /home/onodera/.scripts/notify/notify.sh
