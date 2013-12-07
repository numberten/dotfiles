:set wrapscan

:set nu

:set mousehide

inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

"Enable pathogen for vim plugins and such
call pathogen#infect()
syntax enable
filetype plugin indent on

"aesthetics
colorscheme koehler
"hi clear
"necesary for lots of cool vim things, according to that one guy!
set nocompatible

" Needed for Syntax Highlighting and stuff
syntax on
filetype on
filetype plugin on
set grepprg=grep\ -nH\ $*

" Autoindent :D
set autoindent

" Spaces > tabs
set expandtab
set smarttab

" Short tab is a smart tab
set shiftwidth=2
set softtabstop=2

" Except in Haskell
autocmd FileType haskell set shiftwidth=4|set softtabstop=4
autocmd FileType python  set shiftwidth=4|set softtabstop=4

" English for spell checking, but don't use spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" line numbers
set number

" ignoring case
set ignorecase

" Remap jj to escape in insert mode. Obviously this is the best.
inoremap jj <Esc>

nnoremap JJJJ <Nop>

" Incremental searching
set incsearch

" Highlight things found in search
set hlsearch

"When I close a tab, remove a buffer
set nohidden

" Set off the other paren
highlight MatchParen ctermbg=4
"}}}

