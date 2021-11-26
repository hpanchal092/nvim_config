"
"  (_)__  (_) /_ _  __(_)_ _
" / / _ \/ / __/| |/ / /  ' \
"/_/_//_/_/\__(_)___/_/_/_/_/
"

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

"clear highlights with ctrl+l
nnoremap <C-l> :nohl<cr><C-l>

"Vim Plug stuff
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

Plug 'ycm-core/YouCompleteMe'

Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

"colorscheme stuff
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
colorscheme onedark

"vim airline
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

"ycm stuff
set completeopt-=preview

"comment stuff
nmap <C-_> gcc
vmap <C-_> gc

"telescope
nnoremap <C-p> :Telescope find_files<cr>
