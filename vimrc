"" Import Pathogen
call pathogen#infect()
call pathogen#helptags()

"" Set Up Indention
"set cindent
set smartindent
set autoindent

" No menus or scrollbars.
set guioptions-=m
set guioptions-=R
set guioptions-=r
set guioptions-=L
set guioptions-=l

"" Case insensitive unless searching capital
set smartcase
set hlsearch
set incsearch
set ic

"" Ruler and Line Numbers
set ruler
set number

"" Use filetypes
filetype on
filetype plugin on
filetype indent on
syntax enable
syntax on
set cc=80
autocmd BufEnter *.md set cc=0
autocmd BufEnter *.txt set cc=0
autocmd BufEnter *.tex set cc=0

"" Set up folding
set foldmethod=syntax
set foldlevel=20
au FileType python setlocal foldmethod=indent
"" Folding dies on Android
au FileType java setlocal nofoldenable

let g:gitgutter_enabled = 1

set sts=4 sw=4 ts=4 expandtab

"" Set up Color
if has('gui_running')
    color molokai
else
    color solarized
    let g:solarized_termtrans = 1
endif
set t_Co=16
set background=dark
set guioptions-=T

""autocmd BufRead,BufNewFile *.md color elflord

let Tlist_WinWidth = 40

"" Remap to move screen and not real lines.
nmap j gj
nmap k gk

"" Map specialized files to file types.
filetype plugin indent on
au BufRead,BufNewFile *.sage set filetype=python
au BufRead,BufNewFile *.cuh set filetype=cpp
au BufRead,BufNewFile *.sbt set filetype=scala
au BufRead,BufNewFile *.aidl set filetype=java
au BufRead,BufNewFile *.pde set filetype=java
au BufRead,BufNewFile *.bats set filetype=sh
au BufRead,BufNewFile *.jmd set filetype=markdown
au BufRead,BufNewFile *.mdw set filetype=markdown
au BufRead,BufNewFile *.oc set filetype=c
au BufRead,BufNewFile *.oh set filetype=c

"" Set up Python Flake8
let g:flake8_max_line_length=99
let g:syntastic_python_checkers = ['flake8']

imap <C-e> <esc>$<right>i
imap <C-a> <esc>0i

"" Makefile Tabs
autocmd BufEnter ?akefile* set noet ts=8 sw=8
autocmd BufEnter */debian/rules set noet ts=8 sw=8
au FileType ruby setl sw=2 sts=2 ts=2 et
au FileType javascript setl sw=2 sts=2 ts=2 et
au FileType h setl sw=2 sts=2 ts=2 et
au FileType c setl sw=2 sts=2 ts=2 et
au FileType cpp setl sw=2 sts=2 ts=2 et
"autocmd BufRead,BufNewFile,BufEnter *.c set tabstop=8 sts=8 sw=8 noexpandtab
"autocmd BufRead,BufNewFile,BufEnter *.h set tabstop=8 sts=8 sw=8 noexpandtab

"" Spell check markdown and tex files.
hi clear SpellBad
highlight SpellBad term=underline
autocmd BufRead,BufEnter *.md setlocal spell spelllang=en_us
autocmd BufRead,BufEnter *.tex setlocal spell spelllang=en_us

"" Nerdtree and Rainbow Parentheses
autocmd vimenter * NERDTree
au Syntax * RainbowParenthesesToggleAll

"" Resize windows using the arrow keys
nnoremap <Up> 3<C-w>-
nnoremap <Down> 3<C-w>+
nnoremap <Left> 3<C-w><
nnoremap <Right> 3<C-w>>

"" Remap F Keys
nnoremap <F5> :YRShow<CR>
nnoremap <F6> :GundoToggle<CR> 
nnoremap <F7> :set background=light<CR>
nnoremap <F8> :set background=dark<CR>
