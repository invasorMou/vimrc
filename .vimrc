""""""""""""""""""""""""""""""""""""""
"InvaderMou VimRC
""""""""""""""""""""""""""""""""""""""
set nocompatible
set backspace=indent,eol,start
set history=200
set ruler
set showcmd
set noshowmode
set number
set showmatch
set relativenumber
set display=truncate
set incsearch
set hlsearch
set ignorecase
set smartcase
set nrformats-=octal
map Q gq
syntax enable 
"set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set tabstop=2 softtabstop=2 shiftwidth=2 smarttab
set timeoutlen=200
set ttimeout
set ttimeoutlen=100
set encoding=utf-8
set fileformats=unix,dos,mac
filetype plugin indent on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set ffs=unix,dos,mac
colorscheme solarized8
set background=dark
"NETRW
"
let g:netrw_list_hide= '.*\.swp$'
"FUNCTIONALITY
"FINDING FILES
"
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=236
"Search down into subfolders
"Providees tab-completion for all file-related tasks
set path+=**
set wildmenu
set wildignore+=**/node_modules/**

"FILE BROWSING
"
let g:netrw_banner=0
let g:netrw_altv=1
let g:netrw_liststyle=3

"LIGHTLINE

set laststatus=2
"PACKAGES
packadd! matchit
colo solarized8
"MAPPING

