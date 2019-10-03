
set nocompatible

" Visual
syntax enable
colorscheme default
set hlsearch

" Menu
set wildmenu
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*

" Lines
set number
set relativenumber
set showcmd
set ruler
set nowrap

"Completion
set completeopt=menu

" Status bar
set laststatus=2
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P
set showmode

" Indentation
set smartindent
set copyindent
set breakindent
set autoindent
set expandtab
set tabstop=4
set smarttab
set softtabstop=4
set shiftwidth=4
set shiftround
set backspace=indent,eol,start

" Case
set ignorecase
set smartcase

" Clipboard
set clipboard=unnamed

" UTF-8 support
set encoding=utf-8

" Mouse
set mouse=a

" Splits
set splitbelow
set splitright
set scrolloff=5
set completeopt-=preview

" Bells & sounds
set visualbell
set t_vb=
set noerrorbells

" Folding
set foldmethod=indent
set foldlevel=99

" Files
autocmd FileType html,css setlocal shiftwidth=2 tabstop=2
autocmd BufNewFile,BufRead *.md,*.txt set wrap linebreak nolist

