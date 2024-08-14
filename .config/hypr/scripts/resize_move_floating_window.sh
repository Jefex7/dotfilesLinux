#!/bin/bash

# Define the desired size and position
WIDTH=3800
HEIGHT=1375
X=700
Y=45

# Get the ID of the currently focused window
WINDOW_ID=$(hyprctl activewindow | grep "class" | awk '{print $2}')
export WINDOW_ID
echo $WINDOW_ID

# # Move and resize the window

hyprctl dispatch resizewindowpixel exact $WIDTH $HEIGHT,"^${WINDOW_ID}$"
hyprctl dispatch movewindowpixel exact $X $Y,"^${WINDOW_ID}$"

