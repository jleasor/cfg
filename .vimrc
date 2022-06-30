" BASIC SETUP
set nocompatible
syntax enable
filetype plugin on

" FINDING FILES:
" Search down into subfolders
" Provide tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" CREATE TAGS:
command! MakeTags !ctags -R


