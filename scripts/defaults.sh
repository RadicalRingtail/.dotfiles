#!/bin/sh 

# sets preferences for apps

# Menu Bar
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE MMM d  h:mm a\""
killall SystemUIServer

# Dock 
defaults write com.apple.Dock "autohide" -bool "true"
defaults write com.apple.Dock "mineffect" -string "genie"
killall Dock

# Finder
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.Finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.Finder "FXEnableExtensionChangeWarning" -bool "false"
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"
killall Finder

# TextEdit
defaults write com.apple.TextEdit "RichText" -bool "false" && killall TextEdit

# Terminal (theres most likely a better way to do this)
#curl 'https://raw.githubusercontent.com/lysyi3m/macos-terminal-themes/master/themes/VS%20Code%20Dark%20Plus.terminal' -o theme.terminal
#open theme.terminal
#defaults write com.apple.Terminal "Default Window Settings" -string "theme"

# set default apps with duti and default browser with defaultbrowser
# this could probably be made more effecient with a for loop or something
defaultbrowser firefox

duti -s com.visualstudio.code.oss .sh all
duti -s com.visualstudio.code.oss .md all

duti -s com.foobar2000.mac .mp3 all
duti -s com.foobar2000.mac .wav all
duti -s com.foobar2000.mac .flac all

duti -s org.videolan.vlc .mp4 all
duti -s org.videolan.vlc .mkv all
duti -s org.videolan.vlc .mov all
duti -s org.videolan.vlc .avi all
duti -s org.videolan.vlc .webm all

duti -s cx.c3.theunarchiver .rar all