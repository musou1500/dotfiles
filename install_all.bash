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

  ln -snf $src $dst
}

echo "install powerline-status"
pipx install powerline-status

echo "Make symlinks..."
scriptdir=$HOME/dotfiles

create_symlink "$scriptdir/.zprofile" "$HOME/.zprofile"
create_symlink "$scriptdir/.zshrc" "$HOME/.zshrc"
create_symlink "$scriptdir/.tmux.conf" "$HOME/.tmux.conf"
create_symlink "$scriptdir/.gitconfig" "$HOME/.gitconfig"
create_symlink "$scriptdir/.inputrc" "$HOME/.inputrc"
mkdir -p "$HOME/.config"
create_symlink "$scriptdir/powerline" "$HOME/.config/powerline"
create_symlink "$scriptdir/bash" "$HOME/.config/bash"
create_symlink "$scriptdir/nvim" "$HOME/.config/nvim"
create_symlink "$scriptdir/starship.toml" "$HOME/.config/starship.toml"

if [ ! -d "$HOME/.nvm" ]; then
  echo "Install nvm"
  git clone "https://github.com/creationix/nvm.git" "$HOME/.nvm"
fi

curl -sS https://starship.rs/install.sh | sh

echo "Installation suceeded!"
echo "source $BASH_CONFIG_FILEPATH"