
"=================================== Plugins =================================="
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-syntastic/syntastic'                " Syntax Checker
Plug 'Valloric/YouCompleteMe'				  " Auto-completion
Plug 'airblade/vim-gitgutter'                 " Git info on gutter
Plug 'scrooloose/nerdtree'					  " Tree explorer
Plug 'tpope/vim-fugitive'                     " Git integration
Plug 'tpope/vim-commentary'                   " Quick Commenting
Plug 'ctrlpvim/ctrlp.vim'	                  " Fuzzy file search
Plug 'vim-airline/vim-airline'                " Status bar
Plug 'terryma/vim-multiple-cursors'		      " Multiple cursors
Plug 'vim-airline/vim-airline-themes'         " Status bar themes
Plug 'flazz/vim-colorschemes'                 " Color schemes
Plug 'Valloric/ListToggle'                    " Toggle location list
call plug#end()


"================================ Vim Settings ================================"
set nocompatible
filetype off
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
set completeopt-=preview
set visualbell t_vb=
set guifont=Meslo\ LG\ S\ for\ Powerline:h12
set guioptions=
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
syntax enable
colorscheme onedark


"=============================== Plugin Settings =============================="
" Start NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" YouCompleteMe
let g:ycm_always_populate_location_list = 1
let g:ycm_confirm_extra_conf = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" Airline
let g:airline_powerline_fonts = 1

" List Toggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'


"================================= Key Remaps ================================="
" Plugin Commands
nnoremap <tab> :NERDTreeToggle<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gd :Gdiff<CR>

" Vim Commands
nnoremap <S-l> gt
nnoremap <S-h> gT
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

