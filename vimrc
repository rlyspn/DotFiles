
call pathogen#infect()
call pathogen#helptags()

set cindent
set smartindent
set autoindent
set number
set ruler
color elflord
syntax enable
syntax on
set background=dark
set sts=4 sw=4 ts=4 expandtab
filetype on
filetype plugin indent on
au BufRead,BufNewFile *.sage set filetype=python
au BufRead,BufNewFile *.cuh set filetype=cpp
au BufRead,BufNewFile *.sbt set filetype=scala
"au BufRead,BufNewFile *.pp set filetype ruby

imap <C-e> <esc>$<right>i
imap <C-a> <esc>0i

autocmd BufEnter ?akefile* set noet ts=8 sw=8
autocmd BufEnter */debian/rules set noet ts=8 sw=8

autocmd BufRead *.md setlocal spell spelllang=en_us
autocmd BufRead *.tex setlocal spell spelllang=en_us
autocmd BufRead *.txt setlocal spell spelllang=en_us

autocmd BufRead *.txt setlocal textwidth=80
autocmd BufRead *.md setlocal textwidth=80

let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1
"let vimclojure#WantNailgun = 1
"let vimclojure#NailgunClient = $HOME . "/.vim/lib/vimclojure-nailgun-client/ng"
