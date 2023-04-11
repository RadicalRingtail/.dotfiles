#!/bin/sh

# install xcode tools
xcode-select --install

# check if homebrew is installed
# if not, install homebrew
if ! command -v brew &> /dev/null 
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# install packages from Brewfile
brew bundle install ~/.dotfiles/Brewfile

# configure apps
/bin/bash ./scripts/codium_config.sh
/bin/bash ./scripts/blender_config.sh

# update preferences
/bin/bash ./scripts/defaults.sh

# silence zsh login message
touch ~/.hushlogin

# symlinks
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.zprofile ~/.zprofile
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/yt-dlp/yt-dlp.conf ~/yt-dlp.conf
ln -s ~/.dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/.dotfiles/kitty/themes/vs_theme.conf ~/.config/kitty/vs_theme.conf