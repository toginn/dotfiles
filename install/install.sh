#!/bin/bash

checkIsRoot() {
  if [[ " whoami " != "root" ]]; then
    echo "Require root privilege"
    exit 1
  fi
}

installPkg() {
  if [[ $1 = "nvim" ]]; then
    git clone https://github.com/neovim/neovim
    cd neovim && make
    make install
  elif [[ $(command -v apt 2> dev/null) ]];
    echo "apt not found"
  elif [[ $(command -v $1) ]];
    echo "skipped to install $1; already installed"
  else
    apt install -y $1
  fi
}

checkIsRoot

cd ~/
# update
apt update
apt upgrade -y

# Applications
installPkg ca-certificates
installPkg curl
installPkg gnupg
installPkg lsb-release

installPkg zsh
installPkg exa
installPkg tmux
installPkg alacritty
installPkg gimp
installPkg inkscape
installPkg python3
installPkg nodejs
installPkg nvim

# Symbolic link for dotfiles
# linkDotfiles
