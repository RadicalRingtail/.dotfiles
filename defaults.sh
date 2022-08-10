#!/bin/sh 

# sets default settings for apps on mac

# Dock 
defaults write com.apple.Dock "autohide" -bool "true"
defaults write com.apple.Dock "mineffect" -string "genie"

# Terminal (theres most likely a better way to do this)
curl 'https://raw.githubusercontent.com/lysyi3m/macos-terminal-themes/master/themes/VS%20Code%20Dark%20Plus.terminal' -o theme.terminal
open theme.terminal
defaults write com.apple.Terminal "Default Window Settings" -string "theme"

