" Set leader to comma
let mapleader = ","

set encoding=utf-8

" indenting
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif
syntax on

" Invisible characters
set listchars=trail:·,tab:‣‒,eol:¬,extends:«,precedes:»
set nolist
noremap <leader>i :set list!<CR> " Toggle invisible chars"
