apt install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
git clone https://github.com/alacritty/alacritty.git
cd alacritty
cargo build --release
cd ../
