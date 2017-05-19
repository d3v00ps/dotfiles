" File: .vimrc
" Author: @zblankinship
" References:
" - https://github.com/dikiaap/minimalist
" - https://github.com/jez/vim-as-an-ide

" Gotta be first.
set nocompatible

" First use.
" vim +PluginInstall +qall

" Key bindings.

" Open nerdtree                 --> \t
" Open tagbar                   --> \b
" Fuzzy search                  --> ctrl+p
" Open alternate files          --> :AT
" Open man page for word        --> K

" - Git
"   git add                     --> :Gwrite
"   git commit                  --> :Gcommit
"   git push                    --> :Gpush
"   git checkout <file name>	--> :Gread
"   git blame                   --> :Gblame

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugins.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'dikiaap/minimalist'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
Plugin 'jez/vim-superman'

call vundle#end()

filetype plugin indent on

" General.
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab

syntax on

set mouse=a

hi clear SignColumn

" Theme.
colorscheme minimalist
set t_Co=256

" Plugin settings.
execute pathogen#infect()

" - jistr/vim-nerdtree-tabs
"   Open/close with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
"   Open on startup
let g:nerdtree_tabs_open_on_console_startup = 1

" - scrooloose/syntastic
let g:syntastic_error_symbol = "✘"
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
    au!
    au FileType tex let b:syntastic_mode = "passive"
augroup END

" - xolox/vim-easytags
" Where to look for tag files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" - majutsushi/tagbar
"   Open/close with \b
nmap <silent> <leader>b :TagbarToggle<CR>
"   Uncomment  to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)
"
" - airblade/vim-gitgutter
"   In vim-airline, only display "hunks" if the diff is non-zero
let g:gitgutter_enable = 1
let g:airline#extensions#hunks#non_zero_only = 1

" - Raimondi/delimitMate
let delimitMate_expand_cr = 1
augroup mydelimitMate
    au!
	au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
	au FileType tex let b:delimitMate_quotes = ""
	au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
	au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" - jez/vim-superman
" better man page support
noremap K :SuperMan <cword><CR>
