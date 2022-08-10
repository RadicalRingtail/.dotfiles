#!/bin/sh

# install xcode tools
xcode-select --install

# check if homebrew is installed
# if not, install homebrew
if ! command -v brew &> /dev/null 
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# install packages from Brewfile
brew bundle install ~/.dotfiles/Brewfile

#todo: auto install jetbrains mono/mono nerd font

# update preferences
/bin/bash ./scripts/defaults.sh

# silence zsh login message
touch ~/.hushlogin

# symlinks
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/yt-dlp/yt-dlp.conf ~/yt-dlp.conf

# configure vscode
/bin/bash ./scripts/codium_config.sh