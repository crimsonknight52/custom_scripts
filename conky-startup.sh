#!/bin/bash

# Kill any existing conky instances
killall conky 2>/dev/null

sleep 60

# Start picom (compositor) if not already running
if ! pgrep -x "picom" > /dev/null; then
    picom &
fi

# Wait for picom to initialize
sleep 2

# Launch all conky configurations
conky -c /home/crimson/.config/conky/clock.conf &
conky -c /home/crimson/.config/conky/world.conf &
conky -c /home/crimson/.config/conky/sidebar.conf &
conky -c /home/crimson/.config/conky/clock2.conf &
conky -c /home/crimson/.config/conky/world2.conf &
conky -c /home/crimson/.config/conky/sidebar2.conf &

# Wait for all background processes
wait
