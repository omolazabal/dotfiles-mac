
set nocompatible                     " Disable vi-compatibility, required
filetype off                         " required

call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'                        " Gruvbox
Plug 'vim-airline/vim-airline-themes'         " Airline themes
Plug 'scrooloose/nerdtree'					  " NERDTree
Plug 'tpope/vim-fugitive'                     " Git integration
Plug 'tpope/vim-commentary'                   " Commenting
Plug 'ctrlpvim/ctrlp.vim'	                  " CtrlP
Plug 'vim-airline/vim-airline'                " Airline for vim
Plug 'terryma/vim-multiple-cursors'		      " Multiple cursors
Plug 'Valloric/YouCompleteMe'				  " Autocomplete
call plug#end()

set termguicolors
set background=dark
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

syntax enable
colorscheme gruvbox
let g:airline_powerline_fonts = 1

" start NERDTree if no file is specified or if a directory is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

