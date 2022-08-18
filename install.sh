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

# configure vscode
/bin/bash ./scripts/codium_config.sh

# todo: auto install jetbrains mono/mono nerd font

# update preferences
/bin/bash ./scripts/defaults.sh

# silence zsh login message
touch ~/.hushlogin

# symlinks
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/yt-dlp/yt-dlp.conf ~/yt-dlp.conf
ln -s ~/.dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/.dotfiles/kitty/themes/vs_theme.conf ~/.config/kitty/vs_theme.conf