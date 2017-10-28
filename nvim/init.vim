
set nocompatible
filetype off

call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'                 " Git gutter
Plug 'scrooloose/nerdtree'					  " NERDTree
Plug 'tpope/vim-fugitive'                     " Git integration
Plug 'tpope/vim-commentary'                   " Commenting
Plug 'ctrlpvim/ctrlp.vim'	                  " CtrlP
Plug 'vim-airline/vim-airline'                " Airline for vim
Plug 'terryma/vim-multiple-cursors'		      " Multiple cursors
Plug 'Valloric/YouCompleteMe'				  " Autocomplete
Plug 'vim-airline/vim-airline-themes'         " Airline themes
Plug 'flazz/vim-colorschemes'                 " Color Schemes
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
set splitbelow
set splitright
set visualbell t_vb=
set guifont=Meslo\ LG\ S\ for\ Powerline:h12
set guioptions=

syntax enable
colorscheme onedark
let g:airline_powerline_fonts = 1

" start NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Plugin remaps
nnoremap <tab> :NERDTreeToggle<CR>
nnoremap <Leader>gs :Gstatus<Return>
nnoremap <Leader>gc :Gcommit<Return>
nnoremap <Leader>gd :Gdiff<Return>

" Vim remaps
nnoremap <S-l> gt
nnoremap <S-h> gT
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

