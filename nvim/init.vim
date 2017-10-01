
set nocompatible                     " Disable vi-compatibility, required
filetype off                         " required

call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-fugitive'                     " plugin on GitHub repo
Plug 'git://git.wincent.com/command-t.git'    " Git plugin not hosted on GitHub
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}      " The sparkup vim script
Plug 'joshdick/onedark.vim'                   " Onedark color theme
Plug 'vim-airline/vim-airline'                " Airline for vim
call plug#end()            " required

set termguicolors

syntax on
colorscheme onedark

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1   " populate airline_symbols dictionary with powerline fonts

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
set timeout timeoutlen=200 ttimeoutlen=100
set noerrorbells                " don't beep
set autowrite                   "Save on buffer switch
set mouse=a
