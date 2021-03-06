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

function create_symlink {
  src=$1
  dst=$2
  if [ -f $dst ] && confirm "Backup $dst?"; then
    mv "$dst" "$dst.org"
    echo "backup to $dst to $dst.org"
  fi

  ln -sf $src $dst
}

echo "install powerline-status"
pip3 install --user powerline-status

echo "Make symlinks..."
scriptdir=$HOME/dotfiles

case $OSTYPE in
  darwin*)
    BASH_CONFIG_FILEPATH="$HOME/.bash_profile"
    ;;
  *)
    BASH_CONFIG_FILEPATH="$HOME/.bashrc"
    ;;
esac

create_symlink "$scriptdir/.bash_profile" "$BASH_CONFIG_FILEPATH"
create_symlink "$scriptdir/.dircolors" "$HOME/.dircolors"
create_symlink "$scriptdir/.tmux.conf" "$HOME/.tmux.conf"
create_symlink "$scriptdir/.gitconfig" "$HOME/.gitconfig"
create_symlink "$scriptdir/.inputrc" "$HOME/.inputrc"
create_symlink "$scriptdir/.Xresources" "$HOME/.Xresources"
create_symlink "$scriptdir/.Xmodmap" "$HOME/.Xmodmap"

XDG_CONFIG_HOME=$HOME/.config
XDG_DATA_HOME=$HOME/.local/share

if [ ! -d "$XDG_DATA_HOME/bash_it" ]; then
  echo "Install Bash-it"
  git clone "https://github.com/Bash-it/bash-it.git" "$XDG_DATA_HOME/bash_it"
fi

mkdir -p $XDG_CONFIG_HOME

create_symlink "$scriptdir/powerline" "$XDG_CONFIG_HOME/powerline"
create_symlink "$scriptdir/bash" "$XDG_CONFIG_HOME/bash"
create_symlink "$scriptdir/nvim" "$XDG_CONFIG_HOME/nvim"

if [ ! -d "$XDG_DATA_HOME/nvm" ]; then
  echo "Install nvm"
  git clone "https://github.com/creationix/nvm.git" "$XDG_DATA_HOME/nvm"
fi

echo "Installation suceeded!"
