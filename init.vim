"
"  (_)__  (_) /_ _  __(_)_ _
" / / _ \/ / __/| |/ / /  ' \
"/_/_//_/_/\__(_)___/_/_/_/_/
"


" General settings
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

let mapleader=" "

" Clear highlights
nnoremap <leader>c <cmd>nohl<cr>

" Vim Plug stuff
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

Plug 'joshdick/onedark.vim'
Plug 'nvim-lualine/lualine.nvim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'neoclide/coc.nvim'

call plug#end()

" Colorscheme
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
colorscheme onedark

" Lualine
lua require 'lualine'.setup{ options = { theme = 'onedark' } }

" Commentary
nmap <C-_> gcc
vmap <C-_> gc

" Telescope
lua require('telescope').load_extension('fzy_native')

nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>ps <cmd>Telescope live_grep<cr>

" Fugitive
nnoremap <leader>gs <cmd>G<cr>

" CoC
source $HOME/.config/nvim/coc.vim
