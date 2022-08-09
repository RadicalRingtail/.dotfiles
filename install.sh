#!/bin/sh

# install xcode tools
xcode-select --install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install packages from Brewfile
brew bundle install ~/.dotfiles/Brewfile

#todo: auto install jetbrains mono/mono nerd font

# update preferences
/bin/bash ./defaults.sh

# silence zsh login message
touch ~/.hushlogin

# symlinks
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/yt-dlp/yt-dlp.conf ~/yt-dlp.conf