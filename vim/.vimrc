
"=================================== Plugins =================================="
call plug#begin('~/.vim/plugged')
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
Plug 'jaxbot/semantic-highlight.vim'          " Semantic highlighting
Plug 'xolox/vim-notes'                        " Note taking
Plug 'xolox/vim-misc'                         " Dependencies for xolox plug-ins
call plug#end()


"================================ Vim Settings ================================"
set nocompatible
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

autocmd BufRead *.asm set syntax=nasm
autocmd BufRead *.md set wrap linebreak nolist
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

filetype plugin on
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

" CtrlP
let g:ctrlp_prompt_mappings = {
    \ 'ToggleType(1)':        ['<c-h>', '<c-up>'],
    \ 'ToggleType(-1)':       ['<c-l>', '<c-down>'],
    \ 'PrtCurLeft()':         ['<left>', '<c-^>'],
    \ 'PrtCurRight()':        ['<right>'],
    \ 'CreateNewFile()':      ['<c-n>'],
    \ 'AcceptSelection("v")': ['<c-s>'],
    \ 'AcceptSelection("h")': ['<c-x>'],
    \ 'PrtHistory(-1)':       ['<c-y>']
    \ }

let g:notes_directories = ['~/Documents/notes']

"================================= Key Remaps ================================="
" Vim Commands
nmap <tab> gt
nmap <s-tab> gT
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <F1> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <F2> :set spell!<CR>
nnoremap <F3> :SemanticHighlightToggle<CR>

