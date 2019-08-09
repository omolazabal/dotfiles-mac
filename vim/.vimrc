
set nocompatible

" Visual
syntax enable
colorscheme slate
set hlsearch

" Lines
set number
set relativenumber
set showcmd
set ruler
set nowrap

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

" Flag whiteapce
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Auto Commands
autocmd FileType html,css setlocal shiftwidth=2 tabstop=2
autocmd BufNewFile,BufRead *.md,*.txt set wrap linebreak nolist

