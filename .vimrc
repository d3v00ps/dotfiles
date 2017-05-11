" Colors
syntax enable

" Spaces & Tabs
set tabstop=4
set softtabstop=4
set expandtab

" UI Config
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set showmatch

" Searching
set incsearch
set hlsearch
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
" space open/closes folds
nnoremap <space> za
" fold based on indent level
set foldmethod=indent

" Movement
nnoremap j gj
nnoremap k gk

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'alvan/vim-closetag'
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

call vundle#end()
filetype plugin indent on
