#!/usr/bin/env bash

function confirm {
  MSG=$1
  while :
  do
    echo -n "${MSG} [Y/n]: "
    read ans
    if [ -z "$ans" ]; then
      ans="y"
    fi
    case $ans in
      [yY]) return 0 ;;
      [nN]) return 1 ;;
    esac
  done
}

function backup_and_create_symlink {
  src=$1
  dst=$2
  echo $dst
  if [ -f $dst ]; then
    mv "$dst" "$dst.org"
    echo "backup to $dst to $dst.org"
  fi

  ln -s $src $dst
}

echo "Make symlinks..."
scriptdir=`dirname $0`

case $OSTYE in
  darwin*)
    BASH_CONFIG_FILEPATH="$HOME/.bash_profile"
    ;;
  *)
    BASH_CONFIG_FILEPATH="$HOME/.bashrc"
    ;;
esac

backup_and_create_symlink "$scriptdir/.bash_profile" "$BASH_CONFIG_FILEPATH"
backup_and_create_symlink "$scriptdir/.dircolors" "$HOME/.dircolors"
backup_and_create_symlink "$scriptdir/.tmux.conf" "$HOME/.tmux.conf"
backup_and_create_symlink "$scriptdir/.gitconfig" "$HOME/.gitconfig"

# load bash configuration to export xdg variables
source "$BASH_CONFIG_FILEPATH"

if [ ! -d "$XDG_DATA_HOME/bash_it" ]; then
  echo "Install Bash-it"
  git clone "https://github.com/Bash-it/bash-it.git" "$XDG_DATA_HOME/bash_it"
fi

if [ ! -d "$XDG_CONFIG_HOME/bash_it" ]; then
  echo "Install Bash-it custom configuration"
  git clone "https://github.com/musou1500/bash-config.git" "$XDG_CONFIG_HOME/bash"
fi


if [ ! -d "$XDG_CONFIG_HOME/nvim" ]; then
  echo "Install neovim configuration"
  git clone "https://github.com/musou1500/nvim-config.git" "$XDG_CONFIG_HOME/nvim"
fi

dein_repo_dir="$XDG_CACHE_HOME/dein/repos"
if [ ! -d "$dein_repo_dir/github.com/Shougo/dein.vim" ]; then
  echo "Install dein.vim"
  git clone "https://github.com/Shougo/dein.vim" "$dein_repo_dir/github.com/Shougo/dein.vim"
fi


if [ ! -d "$XDG_DATA_HOME/nvm" ]; then
  echo "Install nvm"
  git clone "https://github.com/creationix/nvm.git" "$XDG_DATA_HOME/nvm"
fi

if confirm "Done! Reload bash configuration now?"; then
  source "$BASH_CONFIG_FILEPATH"
fi
