""""""""""""""""""""""""""""""""""""""
"Mou's VimRC
""""""""""""""""""""""""""""""""""""""
"Show line's number in file
set number
"Show relative number to current line"
set relativenumber
"Show commands at the bottom line"
set showcmd
"Turn on language syntax
syntax on
"Detect file types and indent
filetype indent on
"Set cursor row & column
set cursorline
"Set colors for cursorline
hi clear CursorLine
hi link CursorLine CursorColumn
set cursorcolumn
"Set variable to control size of tabs and indets
let indent = 2
"Set tab width to 8 columns
set tabstop=8
"Set softabstop to 2
let &softtabstop = indent
"Set shift width to indent variable
let &shiftwidth = indent
"Use space characters instead of tabs
set expandtab
" WILDMENU ----------------------------------------------- {{{
"Enable auto completion menu after pressing TAB
set wildmenu
"Make wildmenu behave like similar to Bash completion
set wildmode=list:longest
"Wildmenu will ignore files with the following extension
set wildignore+=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
"Ignore folder when searching in multiple folder
set wildignore+=**/node_modules/**,**/venv/**
" }}}
"Set colorscheme for vim
colorscheme desert

" VIMSCRIPT ---------------------------------------------- {{{
" Enable the marker method of folding for vim file
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
set foldmethod=indent

" Set leader key for custom mappins
let mapleader=","

" Normal Mode Mappins ------------------------------------------------- {{{

" Turn word into Uppercase and set cursor at the end of the word
nnoremap <leader><c-u> viwU<esc>e

" Wrap word between double quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" Wrap word between single quotes
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" Move cursor to beginning of the line
nnoremap H 0

" Move cursor to end of the line
nnoremap L $
" }}}

" Insert Mode Mappins --------------------------------------------------{{{

" Turn word into Uppercase and set cursor at the end of the word
inoremap <leader><c-u> <esc>viwU<esc>ei

" Exit insert mode
inoremap jk <esc>

" }}}

" Visual Mode Mappins --------------------------------------------------{{{

" Wrap visual selection between single quotes
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>f'

" }}}

" Shortcuts to .vimrc -------------------------------------------------- {{{

" Opens up .vimrc in a different split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Source .vimrc in order to new changes to take effect
nnoremap <leader>sv :source $MYVIMRC<cr>

" }}}

" Abbreviation for insert mode ----------------------------------------- {{{

iabbrev rt return

" }}}
