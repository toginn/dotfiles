wget https://github.com/yuru7/HackGen/releases/download/v2.6.3/HackGenNerd_v2.6.3.zip
unzip HackGenNerd_v2.6.3.zip
mkdir -p ~/.local/share/fonts
cp $(find ./HackGenNerd_v2.6.3 -name *.ttf) ~/.local/share/fonts
rm -rf HackGenNerd*
