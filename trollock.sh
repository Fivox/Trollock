#!/bin/bash
#  Copyright 2019 Fivox
#
#  Licensed under the WTFPL, Version 2
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
# TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION 
# 0. You just DO WHAT THE FUCK YOU WANT TO.

# This script lock your computer but show your current screen as background
# image. You can troll your collaborator into believing that you forgot to
# lock your screen
# Dependencies : scrot and i3lock

# Get a path and a temporary file name in /tmp
temp=$(tempfile).png

# Take a screenshot in PNG format
scrot "$temp"

# Lock the screen and display the PNG file as a background image. Disable the unlock indicator and keep the mouse pointer
i3lock -e -i "$temp" -p default -u

# Deletes the temporary image file
rm "$temp"

exit 0
