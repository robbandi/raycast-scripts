#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Desktop Icons
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Show or Hide Desktop Icons
# @raycast.author robinn
# @raycast.authorURL https://raycast.com/robinn

function toggle_desktop_icons() {
    if [ "$1" == "hide" ]; then
        defaults write com.apple.finder CreateDesktop false
    elif [ "$1" == "show" ]; then
        defaults write com.apple.finder CreateDesktop true
    else
        echo "Invalid argument. Use 'hide' or 'show'."
        return
    fi
    
    killall Finder
}

# Usage:
# To hide icons, call: ./desktop-icons.sh hide
# To show icons, call: ./desktop-icons.sh show

toggle_desktop_icons "$1"
