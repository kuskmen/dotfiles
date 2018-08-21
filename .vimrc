set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/plugins')

Plugin 'VundleVim/Vundle.vim'
Plugin 'othree/xml.vim'

call vundle#end()
filetype plugin indent on

" Show line numbers
set nu

" Spaces are better than tabs
set expandtab
set smarttab

" Set tab to 4 spaces
set tabstop=4

" Incremental search
set incsearch

" Highlight search
set hlsearch

" jj to escape in insert mode. Who writes jj anyway?
inoremap jj <Esc>

" CTRL-s to save
nnoremap <silent> <C-s> :write<CR>
