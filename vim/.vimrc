
set nocompatible                     " Disable vi-compatibility, required
filetype off                         " required
set rtp+=~/.vim/bundle/Vundle.vim    " set the runtime path to include Vundle and initialize


call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                   " let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive'                     " plugin on GitHub repo
Plugin 'git://git.wincent.com/command-t.git'    " Git plugin not hosted on GitHub
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}      " The sparkup vim script
Plugin 'joshdick/onedark.vim'                   " Onedark color theme
Plugin 'vim-airline/vim-airline'                " Airline for vim

call vundle#end()            " required
filetype plugin indent on    " required


if $COLORTERM == 'gnome-terminal'
    " Enable 256 colors palette in Gnome Terminal
    set t_Co=256
endif

if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif

let g:airline_powerline_fonts = 1   " populate airline_symbols dictionary with powerline fonts
syntax enable
colorscheme onedark


set background=dark
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
