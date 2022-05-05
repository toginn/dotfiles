#!/bin/sh

# CapsLockをESCAPEに
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"
# Alt + `wを無効化
gsettings set org.gnome.desktop.wm.keybindings switch-group "['<Super>Above_Tab']"
echo "Please set shortcut of Alt + \` manually"
