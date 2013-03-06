call pathogen#infect()
call pathogen#helptags()

set cindent
set smartindent
set autoindent
set number
set ruler
set smartcase
set hlsearch
set incsearch
set ic

filetype on
syntax enable
syntax on

if winwidth(0) > 84
    let g:gitgutter_enabled = 1
else
    let g:gitgutter_enabled = 0
endif

set background=dark
if has("gui_running")
    color solarized
else
    color elflord
endif
"color solarized
set sts=4 sw=4 ts=4 expandtab

nmap j gj
nmap k gk

filetype plugin indent on
au BufRead,BufNewFile *.sage set filetype=python
au BufRead,BufNewFile *.cuh set filetype=cpp
au BufRead,BufNewFile *.sbt set filetype=scala
au BufRead,BufNewFile *.aidl set filetype=java
"au BufRead,BufNewFile *.pp set filetype ruby

imap <C-e> <esc>$<right>i
imap <C-a> <esc>0i

autocmd BufEnter ?akefile* set noet ts=8 sw=8
autocmd BufEnter */debian/rules set noet ts=8 sw=8

autocmd BufRead,BufNewFile,BufEnter *.c set tabstop=8 sts=8 sw=8 noexpandtab
autocmd BufRead,BufNewFile,BufEnter *.h set tabstop=8 sts=8 sw=8 noexpandtab

autocmd BufRead *.md setlocal spell spelllang=en_us
autocmd BufRead *.tex setlocal spell spelllang=en_us
autocmd BufRead *.txt setlocal spell spelllang=en_us

"autocmd BufRead *.txt setlocal textwidth=80 
"autocmd BufRead *.md setlocal textwidth=80
"

let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1
