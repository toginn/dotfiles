#!/bin/sh
# https://github.com/nodenv/nodenv

git clone https://github.com/nodenv/nodenv.git ~/.nodenv
cd ~/.nodenv && src/configure && make -C src
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.zshrc
~/.nodenv/bin/nodenv init
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build
