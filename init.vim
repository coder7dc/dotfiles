" VIM Configuration File
" Description: Optimized for C/C++ development, but useful also for other things.
" Author: Jithin james  with help :)

" set leader to ,"
let mapleader=','

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi compatibility (emulation of old bugs)
set nocompatible

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=2        " tab width is 4 spaces
set shiftwidth=2     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120

" turn syntax highlighting on
set t_Co=256
syntax on

" turn line numbers on
set number

" highlight matching braces
set so=7
set showmatch
colorscheme molokai

" NERDTree
nmap <Leader>n :NERDTreeToggle<CR>

" in normal mode F2 will save the file
nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
imap <F2> <ESC>:w<CR>i

" vim-plug setup

call plug#begin('~/.config/nvim/plugged')

"on-demand loading
Plug 'scrooloose/nerdtree'

Plug 'easymotion/vim-easymotion'

Plug 'kien/ctrlp.vim'

Plug 'tpope/vim-surround'

Plug 'mattn/emmet-vim'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:user_emmet_leader_key='<C-Z>'

set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256


" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


