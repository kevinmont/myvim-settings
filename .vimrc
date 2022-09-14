" disable compatibility with vi which can cause unexpected issues
set nocompatible 

" enable file type detection
filetype on

" enable plugins and load plugin for the detected file type
filetype plugin on

" load an indent file for the detected file type
filetype indent on

" turn sintax highlighting on
syntax on

" add numbers to each line on the left-hand side
set number

" smart indentation
set smartindent 

" set spaces for one level of indentation
set shiftwidth=2

" set tab width to 2 columns
set tabstop=2

" display line numbers relative to the line width the cursor
set relativenumber


" MAPPINGS ------------------------------------- {{{
let mapleader = " "

" jj to the escape key
inoremap jj <esc>

" to save & execute current java file
nnoremap <leader>java :w<cr>:!javac % && java %:r<cr>

" }}}


" VIMSCRIPT ----------------------------------- {{{
" this will enable code folding
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
