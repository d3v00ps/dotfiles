set nocompatible
set number
set tabstop=4
set shiftwidth=4
set expandtab

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'alvan/vim-closetag'
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

call vundle#end()
filetype plugin indent on
