#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Hide Icons
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🫣

# Documentation:
# @raycast.author robinn
# @raycast.authorURL https://raycast.com/robinn

defaults write com.apple.finder CreateDesktop false
killall Finder

