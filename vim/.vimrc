
" Visual
syntax enable
colorscheme slate
set number
set relativenumber

" Editor
set laststatus=2
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P
set nocompatible
set showmode
set nowrap
set smartindent
set copyindent
set breakindent
set expandtab
set tabstop=4
set smarttab
set tags=tags
set softtabstop=4
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set ignorecase
set smartcase
set noerrorbells
set autowrite
set mouse=a
set splitbelow
set splitright
set scrolloff=5
set completeopt-=preview
set visualbell
set t_vb=
set hlsearch

" Auto Commands
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd BufNewFile,BufRead *.md,*.txt set wrap linebreak nolist

