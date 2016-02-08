set shell=/bin/sh " Rquired when using the fish sell. All plugins break without this.

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set fileformat=unix
set formatprg=yapf

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

au BufNewFile,BufRead *.py
    \ set expandtab
"    \ set textwidth=120 Requires a special addon to be installed to work
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set autoindent
    \ set fileformat=unix
    \ set formatprg=yapf

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tapstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Search settings
set smartcase " Use case if caps are used
set incsearch " Show match as search proceeds
set hlsearch  " Search highlighting

set ruler
set showcmd
set encoding=utf-8
syntax on

" remap escape insert mode
inoremap jk <ESC>

" Allow us to insert new lines without entering insert mode
map <Enter> O<ESC>

" Set up vundle and plugins"
set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Keep Plugin commands between vundle#begin/end.
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'suan/vim-instant-markdown'
"Plugin 'nvie/vim-flake8'
Plugin 'klen/python-mode'
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
