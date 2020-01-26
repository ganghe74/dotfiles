set nocompatible
set background=dark

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
call vundle#end()

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
