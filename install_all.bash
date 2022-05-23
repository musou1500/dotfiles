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
mkdir -p "$HOME/.config"
create_symlink "$scriptdir/powerline" "$HOME/.config/powerline"
create_symlink "$scriptdir/bash" "$HOME/.config/bash"
create_symlink "$scriptdir/nvim" "$HOME/.config/nvim"

if [ ! -d "$HOME/.bash_it" ]; then
  echo "Install Bash-it"
  git clone "https://github.com/Bash-it/bash-it.git" "$HOME/.bash_it"
fi

if [ ! -d "$HOME/.fzf" ]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
fi

if [ ! -d "$HOME/.nvm" ]; then
  echo "Install nvm"
  git clone "https://github.com/creationix/nvm.git" "$HOME/.nvm"
fi

source $BASH_CONFIG_FILEPATH
bash-it enable plugin nvm fzf

echo "Installation suceeded!"
echo "source $BASH_CONFIG_FILEPATH"