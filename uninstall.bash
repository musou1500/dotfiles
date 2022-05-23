#!/usr/bin/env bash

pip3 uninstall powerline-status

scriptdir=$HOME/dotfiles

case $OSTYPE in
  darwin*)
    BASH_CONFIG_FILEPATH="$HOME/.bash_profile"
    ;;
  *)
    BASH_CONFIG_FILEPATH="$HOME/.bashrc"
    ;;
esac

unlink "$BASH_CONFIG_FILEPATH"
unlink "$HOME/.dircolors"
unlink "$HOME/.tmux.conf"
unlink "$HOME/.gitconfig"
unlink "$HOME/.inputrc"
unlink "$HOME/.Xresources"
unlink "$HOME/.Xmodmap"
unlink "$HOME/.config/powerline"
unlink "$HOME/.config/bash"
unlink "$HOME/.config/nvim"

if [ -d "$HOME/.bash_it" ]; then
  rm -rf $HOME/.bash_it
fi

if [ -d "$HOME/.fzf" ]; then
  rm -rf $HOME/.fzf
fi

if [ -d "$HOME/.nvm" ]; then
  rm -rf $HOME/.nvm
fi

echo "Uninstallation suceeded!"
