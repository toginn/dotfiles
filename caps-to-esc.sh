#!/bin/sh

# CapsLock$B$r(BESCAPE$B$K(B
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"
# Alt + `w$B$rL58z2=(B
gsettings set org.gnome.desktop.wm.keybindings switch-group "['<Super>Above_Tab']"
echo "Please set shortcut of Alt + \` manually"
