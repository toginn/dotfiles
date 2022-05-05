source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fpath+=${ZDOTDIR:-~}/.zsh_functions
export PATH="$PATH:~/.cargo/bin"
source ~/.aliases
fpath+=${ZDOTDIR:-~}/.zsh_functions
export PATH="$HOME/.nodenv/bin:$PATH"
export PATH="$HOME/.nodenv/shims:$PATH"
