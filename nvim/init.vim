
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
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

set relativenumber
set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set noerrorbells                " don't beep
set autowrite                   "Save on buffer switch
set mouse=a
set timeout timeoutlen=200 ttimeoutlen=100

