call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on

" Can I haz Col0rz plz
set t_Co=256
colorscheme molokai

" Set leader to comma
let mapleader = ","

set encoding=utf-8

" indenting
set expandtab
set tabstop=2
set shiftwidth=2

if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd!
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

" Invisible characters
set listchars=trail:·,tab:‣‒,eol:¬,extends:«,precedes:»
set nolist
noremap <leader>i :set list!<CR> " Toggle invisible chars"

set mouse=a
set number

let g:syntastic_check_on_open=1
let g:syntastic_auto_loc_list=1
let g:syntastic_phpcs_conf="--standard=Hotelsnl --tab-width=2"

"pear install dot.php.net/pman
augroup PHP
  autocmd!
  autocmd FileType php setlocal keywordprg=pman
augroup END

" Remove whitespace from code files on save
function! StripTrailingWhite()
  let l:winview = winsaveview()
  silent! %s/\s\+$//
  call winrestview(l:winview)
endfunction
autocmd BufWritePre *.{php,py,pl,js,css,html} call StripTrailingWhite()

set cursorline
set cursorcolumn
"set colorcolumn=80
match ErrorMsg /\%>80v.\+/
