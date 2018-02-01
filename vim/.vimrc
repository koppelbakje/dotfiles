set nocompatible

call plug#begin('~/.vim/plugged')

"Syntax and language improvements
Plug 'othree/html5.vim'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'mxw/vim-jsx', {'for': 'javascript'}

" Colorschemes
Plug 'dracula/vim'

Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

call plug#end()

" Theme
syntax on
color dracula
set termguicolors
set t_Co=256

set encoding=utf-8
set number
set ruler
set visualbell
set nopaste

set history=1000
set undolevels=1000
set title

" Status lines
set noshowmode
set laststatus=2

" Indentation
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set wrap

" Ensure max height isn't too large. (for performance)
let g:ctrlp_max_height = 10
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>f :CtrlPCurWD<CR>
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
    \ },
  \ 'fallback': 'find %s -type f'
  \ }

let g:ctrlp_custom_ignore = {
    \ 'dir': 'node_modules\|\.DS_Store$\|bower_components\|\.git$'
    \ }


" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'
let g:airline_powerline_fonts=1

" netrw
let g:netrw_liststyle = 3
let g:netrw_list_hide = ".git,.sass-cache,.jpg,.png,.svg,.DS_Store"
let g:netrw_preview = 1

