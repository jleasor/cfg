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

" FILE BROWSING
let g:netrw_banner=0 " disable annoying bannder
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 " open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide=',\(^\|\s\s\)\zs\.\S\+'
