set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/plugins')

Plugin 'VundleVim/Vundle.vim'
Plugin 'othree/xml.vim'

Plugin 'OrangeT/vim-csharp.git'
Plugin 'nosami/Omnisharp'
Plugin 'OmniSharp/omnisharp-vim'

call vundle#end()
filetype plugin indent on

### Global configurations

" Show line numbers
set nu

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

### Plugin configurations

# Omnisharp

" Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 5

let g:OmniSharp_server_path=$HOME/.omnisharp/OmniSharp.exe 


