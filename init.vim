"General settings
filetype indent plugin on
syntax on

set nocompatible

set hidden
set wildmenu
set showcmd
set mouse=a

set backspace=indent,eol,start
set autoindent

set confirm
set clipboard=unnamedplus

set number relativenumber
set nowrap
set scrolloff=8

set shiftwidth=4
set softtabstop=4
set expandtab

"Vim Plug stuff
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'

call plug#end()

"colorscheme stuff
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
colorscheme onedark

"vim airline
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'
