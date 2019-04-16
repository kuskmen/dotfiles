set nocompatible

" OmniSharp won't work without this setting
filetype plugin on 

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/plugins')

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-dispatch'
Plugin 'Shougo/vimprc.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'OmniSharp/omnisharp-vim'

call vundle#end()
filetype plugin indent on

""" Global configurations

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

""" Plugin configurations

augroup omnisharp_commands
	autocmd!
	
	" Automatic syntax check on various events
	autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck
	" Show type information automatically when the cursor stops moving
	autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
	autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>
	
	autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
    autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
    autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>


    " Navigate up and down by method/property/field
    autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

augroup END	

" Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 5
let g:OmniSharp_selector_ui = 'ctrlp'
" let g:OmniSharp_server_path = $HOME + "/.omnisharp/OmniSharp.exe"

" Don't autoselect first omnicomplete option
set completeopt=longest,menuone,preview

noremap <silent> <C-k> <C-d> :OmniSharpCodeFormat<CR>

" Syntastic
" let g: syntastic_cs_checkers = ['code_checker']
