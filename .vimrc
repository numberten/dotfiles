set wrapscan

set nu

set mousehide

inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" Enable pathogen for vim plugins and such
call pathogen#infect()
syntax enable
filetype plugin indent on

" Aesthetics (solarized woohoo)
set t_Co=256
let g:solarized_termcolors=256 
let g:solarized_termtrans=1 
let g:solarized_bold=1
let g:solarized_underline=0
let g:solarized_italic=1 
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"

set background=dark
colorscheme solarized

" Necessary for lots of cool vim things, according to that one guy!
set nocompatible

" Needed for Syntax Highlighting and stuff
syntax on
filetype on
filetype plugin on
set grepprg=grep\ -nH\ $*

" Makes the linenumber column background colour transparent
hi LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE 

" Autoindent
set autoindent

" Spaces > tabs
set expandtab
set smarttab

" Short tab is a smart tab
set shiftwidth=2
set softtabstop=2

" Except in python
autocmd FileType python set shiftwidth=4|set softtabstop=4

" English for spell checking, but don't use spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Line numbers
set number

" Ignoring case
set ignorecase

" Remap jj to escape in insert mode. Obviously this is the best.
inoremap jj <Esc>

nnoremap JJJJ <Nop>

" Make Y consistent with C and D
nnoremap Y y$"

" Opens a new tab with the current buffer's path
map <leader>t :tabedit <c-r>=expand("%:p:h")<cr>/<CR>

" Adds line numbers to directory listings
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" Incremental searching
set incsearch

" Highlight things found in search
set hlsearch

" When I close a tab, remove a buffer
set nohidden

" Set off the other paren
highlight MatchParen ctermbg=4

" Rainbow parens for clojure
au VimEnter * RainbowParenthesesToggle
