set shell=/bin/sh " Rquired when using the fish sell. All plugins break without this.

let mapleader = "\<Space>" 
let localleader = "\<Space>" 

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType mumps nnoremap <buffer> <localleader>c I;<esc>
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us

autocmd BufNewFile,BufRead *.py
     set expandtab
     set tabstop=4
     set softtabstop=4
     set shiftwidth=4
     set autoindent
     set fileformat=unix
     set formatprg=yapf

autocmd BufNewFile,BufRead *.js, *.html, *.css
     set tabstop=2
     set softtabstop=2
     set shiftwidth=2

" Status lines
set statusline=%f
set statusline+=\ -\ FileType:
set statusline+=%y
set statusline=+%=
set statusline+=%l
set statusline+=/
set statusline+=%L

" Search settings
set smartcase " Use case if caps are used
set incsearch " Show match as search proceeds
set hlsearch  " Search highlighting
set number    " Show line numbers

set ruler
set showcmd
set encoding=utf-8
syntax on

" remap escape insert mode
inoremap jk <ESC>

" Allow us to insert new lines without entering insert mode
nnoremap <Enter> i<Enter><ESC>

" Set up vundle and plugins"
set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Stop overwriting paste buffer when I delete one character
nnoremap "_x x

call vundle#begin()
" Keep Plugin commands between vundle#begin/end.
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'suan/vim-instant-markdown'
"Plugin 'nvie/vim-flake8'
Plugin 'klen/python-mode'
Plugin 'file:///Users/nicholasdrane/coding/vim_mumps'
call vundle#end()            " required

filetype plugin indent on    " required

let g:pymode_lint_on_fly = 1
let  g:pymode_folding = 0

let g:flake8_show_in_gutter=1
"To customize whether the show marks in the file, set g:flake8_show_in_file:
let g:flake8_show_in_file=1

" To ignore plugin indent changes, instead use:
" Filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
