
"=================================== Plugins =================================="
call plug#begin('~/.local/share/nvim/plugged')
Plug 'Valloric/YouCompleteMe'                 " Auto-completion
Plug 'airblade/vim-gitgutter'                 " Git info on gutter
Plug 'tpope/vim-fugitive'                     " Git integration
Plug 'tpope/vim-commentary'                   " Quick Commenting
Plug 'ctrlpvim/ctrlp.vim'                     " Fuzzy file search
Plug 'vim-airline/vim-airline'                " Status bar
Plug 'terryma/vim-multiple-cursors'           " Multiple cursors
Plug 'vim-airline/vim-airline-themes'         " Status bar themes
Plug 'flazz/vim-colorschemes'                 " Color schemes
Plug 'Valloric/ListToggle'                    " Toggle location list
Plug 'jaxbot/semantic-highlight.vim'              " Semantic highlighting
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
set scrolloff=5
set completeopt-=preview
set visualbell t_vb=
set guifont=Meslo\ LG\ S\ for\ Powerline:h12
set guioptions=
set guitablabel=\[%N\]\ %t\ %M
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
syntax enable
colorscheme onedark


"=============================== Plugin Settings =============================="
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
nnoremap <F1> :Gstatus<CR>
nnoremap <F2> :Gcommit<CR>
nnoremap <F3> :Gdiff<CR>

" Vim Commands
nmap <tab> gt
nmap <s-tab> gT
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <F12> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <F11> :retab<CR>
nnoremap <F4> :SemanticHighlightToggle<CR>
nnoremap <F5> :set spell!<CR>

