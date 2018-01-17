set nocompatible

call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'dracula/vim'

Plug 'vim-airline/vim-airline'
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

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'
let g:airline_powerline_fonts=1

" Gitgutter

