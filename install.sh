#!/bin/sh

# currently a wip

# run defaults.sh
/bin/bash ./defaults.sh

# creates hustlogin file
touch ~/.hushlogin

# symlinks
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/yt-dlp/yt-dlp.conf ~/yt-dlp.conf

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install packages via homebrew from Brewfile
brew bundle install ~/.dotfiles/Brewfile