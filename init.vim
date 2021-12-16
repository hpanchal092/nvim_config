"
"  (_)__  (_) /_ _  __(_)_ _
" / / _ \/ / __/| |/ / /  ' \
"/_/_//_/_/\__(_)___/_/_/_/_/
"


" General settings
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

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

Plug 'navarasu/onedark.nvim'
Plug 'nvim-lualine/lualine.nvim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'

call plug#end()

" Colorscheme
set termguicolors
let g:onedark_darker_diagnostics = v:false
let g:onedark_italic_comment = v:false
colorscheme onedark

" Lualine
lua require 'lualine'.setup { options = { theme = 'onedark', icons_enabled = false } }

" Commentary
nmap <C-_> gcc
vmap <C-_> gc

" Telescope
lua require('telescope').load_extension('fzy_native')

nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>ps <cmd>Telescope live_grep<cr>

" Fugitive
nnoremap <leader>gs <cmd>G<cr>

" LSP
source $HOME/.config/nvim/lsp.vim

" Treesitter
lua << EOF
    require'nvim-treesitter.configs'.setup {
        context_commentstring = {
            enable = true
        },
        highlight = {
            enable = true,
        },
        indent = {
            enable = true
        },
    }
EOF
