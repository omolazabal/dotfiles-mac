
set nocompatible                     " Disable vi-compatibility, required
filetype off                         " required

call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'					  " NERDTree
Plug 'tpope/vim-fugitive'                     " Vim Fugitive - Git
Plug 'ctrlpvim/ctrlp.vim'	                  " CtrlP
Plug 'joshdick/onedark.vim'                   " Onedark color theme
Plug 'vim-airline/vim-airline'                " Airline for vim
Plug 'terryma/vim-multiple-cursors'		      " Multiple cursors
Plug 'Valloric/YouCompleteMe'				  " Autocomplete
Plug 'Yggdroot/indentLine'					  " Indent line
call plug#end()

set termguicolors
syntax on
colorscheme onedark
hi LineNr guibg=#181921

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:indentLine_color_gui = "#484b53"
let g:indentLine_char = '┆'

" start NERDTree if no file is specified or if a directory is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set relativenumber
set showmode
set nowrap
set expandtab
set tabstop=4
set smarttab
set tags=tags
set softtabstop=4 
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set ignorecase
set smartcase
set noerrorbells
set autowrite
set mouse=a