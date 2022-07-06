" BASIC SETUP
" vim-plug

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}
Plug 'itchyny/lightline.vim'
call plug#end()

set nocompatible
syntax enable
filetype plugin on

set laststatus=2
set showmode
set title
set number
set hidden
set ttyfast
set nobackup
set nowritebackup
set noswapfile
set undolevels=1000
set hlsearch

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

" vim-go

let mapleader=","
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage-toggle)
au FileType go nmap <leader>e <Plug>(go-rename)
au FileType go nmap <leader>s <Plug>(go-implements)
au FileType go nmap <leader>i <Plug>(go-info)


" Navigation commands
au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)

" Alternate commands
au FileType go nmap <leader>ae <Plug>(go-alternate-edit)
au FileType go nmap <leader>av <Plug>(go-alternate-vertical)

" Go syntax highlighting
let g:go_highlight_fields=1
let g:go_highlight_functions=1
let g:go_highlight_function_calls=1
let g:go_highlight_extra_types=1
let g:go_highlight_operators=1



" Auto formatting and importing
let g:go_fmt_autosave=1
let g:go_fmt_command="goimports"












