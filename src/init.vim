"=========================================
" 最重要初期設定
"=========================================
" file
set fenc=utf-8
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
filetype plugin indent on
set clipboard=unnamedplus

" editor style
syntax enable
set number
set termguicolors

" backspace
set backspace=indent,eol,start

"=========================================
" 基本設定
"=========================================
"" 最長一致でファイル補完 ex. (sample01, sample02) sam -> sample0
set wildmode=longest,full

" ファイルを開くと自動でカレントディレクトリを移動
set autochdir

" indent
" スペース2個をメインにする
set smartindent
set expandtab
set tabstop=2
set shiftwidth=0

" cursor
set virtualedit=onemore " 右端+1文字移動可
nnoremap j gj
nnoremap k gk
let &t_ti="\e[5 q"

" search
" 大文字が入っているときだけ区別して検索
set ignorecase
set smartcase

"=========================================
" カスタム設定
"=========================================
" 検索移動後にカーソル中央
nnoremap n nzz
nnoremap N Nzz

" ESC連打でハイライト削除
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>

" 単語検索時に次の単語に移動しないようにする。
nnoremap * 1*N

" <Leader>割当
let mapleader = "\<Space>"

"=========================================
" プラグイン設定
"=========================================
" VSCode分岐用ヘルパー関数
function! Cond(Cond, ...)
  let opts = get(a:000, 0, {})
  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-expand-region'
Plug 'rhysd/clever-f.vim'

if exists('g:vscode')
  Plug 'asvetliakov/vim-easymotion', { 'as': 'vsc-easymotion' }
else
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-commentary'
  Plug 'cohama/lexima.vim' "括弧補完
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "パーサ
endif

call plug#end()

" Plugin設定
nmap <Leader> <Plug>(easymotion-prefix)

"=========================================
" その他環境設定
"=========================================
if has("win64")
  " Use windows clipboard.
  set clipboard+=unnamedplus
  let g:clipboard = {
    \   'name': 'win32yank-wsl',
    \   'copy': {
    \      '+': 'win32yank -i --crlf',
    \      '*': 'win32yank -i --crlf', \    },
    \   'paste': {
    \      '+': 'win32yank -o --lf',
    \      '*': 'win32yank -o --lf',
    \   },
    \   'cache_enabled': 0,
    \ }
  " normalモード移行時にIMEオフ
  if executable('zenhan')
    autocmd InsertLeave * :call system('zenhan 0')
    autocmd CmdlineLeave * :call system('zenhan 0')
  endif
endif

