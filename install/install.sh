#!/bin/bash

source functions

checkIsRoot

cd ~/
# update
apt update
apt upgrade -y

# Applications
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
