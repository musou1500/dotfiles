#!/usr/bin/env bash

echo "Make symlinks..."
scriptdir = `dirname $0`
ln -s "$scriptdir/.bash_profile" "$HOME/.bash_profile"
ln -s "$scriptdir/.dircolors" "$HOME/.dircolors"
ln -s "$scriptdir/.tmux.conf" "$HOME/.tmux.conf"
ln -s "$scriptdir/.gitconfig" "$HOME/.gitconfig"

source "$HOME/.bash_profile"

if [ ! -d "$XDG_DATA_HOME/bash_it" ]; then
  echo "Install Bash-it"
  if [ ! -d $XDG_DATA_HOME ]; then
    mkdir -p $XDG_DATA_HOME
  fi
  git clone "https://github.com/Bash-it/bash-it.git" "$XDG_DATA_HOME/bash_it"
fi

if [ ! -d "$XDG_CONFIG_HOME/bash_it" ]; then
  echo "Install Bash-it custom configuration"
  if [ ! -d $XDG_CONFIG_HOME ]; then
    mkdir -p $XDG_CONFIG_HOME
  fi
  git clone "https://github.com/musou1500/bash-config.git" "$XDG_CONFIG_HOME/bash_it"
fi


if [ ! -d "$XDG_CONFIG_HOME/nvim" ]; then
  echo "Install neovim configuration"
  git clone "https://github.com/musou1500/nvim-config.git" "$XDG_CONFIG_HOME/nvim"
fi

dein_repo_dir = "$XDG_CACHE_HOME/dein/repos"
if [ ! -d "$dein_repo_dir/github.com/Shougo/dein.vim" ]; then
  echo "Install dein.vim"
  mkdir -p "$dein_repo_dir/github.com/Shougo"
  git clone "https://github.com/Shougo/dein.vim" "$dein_repo_dir/github.com/Shougo/dein.vim"
fi


if [ ! -d "$XDG_DATA_HOME/nvm" ]; then
  git clone "https://github.com/creationix/nvm.git" "$XDG_DATA_HOME/nvm"
fi

echo "Done! reload now? [y/n]"
read reload_now
if [ $reload_now = "Y" ] || [ $reload_now = "y" ]; then
  source "$HOME/.bash_profile"
fi
