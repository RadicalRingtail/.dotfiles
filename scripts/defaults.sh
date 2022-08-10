#!/bin/sh 

# sets preferences for apps

# Menu Bar
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE MMM d  h:mm a\""

# Dock 
defaults write com.apple.Dock "autohide" -bool "true"
defaults write com.apple.Dock "mineffect" -string "genie"

# Finder
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.Finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.Finder "FXEnableExtensionChangeWarning" -bool "false"

# Terminal (theres most likely a better way to do this)
curl 'https://raw.githubusercontent.com/lysyi3m/macos-terminal-themes/master/themes/VS%20Code%20Dark%20Plus.terminal' -o theme.terminal
open theme.terminal
defaults write com.apple.Terminal "Default Window Settings" -string "theme"
