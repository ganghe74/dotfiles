set encoding=utf-8
set fileencoding=utf-8
set shell=/bin/bash
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
call vundle#end()

map <C-n> :NERDTreeToggle<CR>
map <Leader>nt <ESC>:NERDTreeToggle<CR>

set background=dark

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
