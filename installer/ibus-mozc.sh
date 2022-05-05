#!/bin/sh
set -eo pipefail
apt update
sed -i -e "s/^# deb-src/deb-src /g" /etc/apt/sources.list
apt install build-essential devscripts -y
apt build-dep ibus-mozc -y
apt install debhelper -y
mkdir ./tmp
cd ./tmp
apt source ibus-mozc
sed -i -e "s/kActivatedOnLaunch = false;$/kActivatedOnLaunch = true;/g" $(find . -name property_handler.cc)
cd $(find . -mindepth 1 -maxdepth 1 -type d)
dpkg-buildpackage -us -uc -b
sudo dpkg -i ../mozc*.deb ../ibus-mozc*.deb
cd ../../
rm -rf ./tmp
