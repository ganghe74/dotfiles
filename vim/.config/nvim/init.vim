set nocompatible
set encoding=utf-8
set fileencoding=utf-8
set shell=/bin/bash
set showcmd
set hidden
set nobackup
set nowritebackup
set nofixeol
set history=10000
set wildmenu
set wildmode=full
set mouse=a
set signcolumn=yes

" Plugin
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync
endif

let mapleader=","
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'felleg/TeTrIs.vim'
call plug#end()

cabbrev ㅈ write
cabbrev ㅂ quit
cabbrev ㅈㅂ wq
cabbrev ㅂㅁ qa

set background=dark
colorscheme dracula

if has("syntax")
    syntax on
endif

set autoindent
set cindent

set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
