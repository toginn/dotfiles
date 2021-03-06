DOTPATH=~/dotfiles/src

apt install xsel

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir ~/.config/nvim
ln -snfv "$HOME/dotfiles/src/init.vim" "$HOME/.config/nvim/init.vim"
