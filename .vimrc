""""""""""""""""""""""""""""""""""""""
"Mou's VimRC
""""""""""""""""""""""""""""""""""""""
set nocompatible

" BASIC CONFIGURATION {{{
"Show commands at the bottom line
set showcmd

"Turn on language syntax
"The docs had a lot of info related to syntax
syntax on

"Detect file types and indent
filetype indent on

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

"Set colorscheme for vim
colorscheme slate

" }}}

" FILE SPECIFIC CONFIGS ---------------------------------------------------- {{{

" VIM FILES ---------------------------------------------------- {{{
" Enable the marker method of folding for vim file
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevel=0
augroup END
" }}}

" HTML FILES ---------------------------------------------------- {{{
augroup filetype_html
  autocmd!
  autocmd BufNewFile *.html 0r ~/.vim/skeletons/boilerplate.html
  autocmd FileType html setlocal foldlevel=2
  inoremap ><Tab> ><Esc>F<lyt>o</<C-r>"><Esc>ki<Space>
  let indent = 2
  let &softtabstop = indent
  let &shiftwidth = indent
augroup END

" }}}
" }}}
" WILDMENU ----------------------------------------------- {{{

"Enable auto completion menu after pressing TAB
set wildmenu 

"Enable pop menu for autocompletion
set wildoptions=pum

"Wildmenu will ignore files with the following extension
set wildignore+=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"Ignore folder when searching in multiple folder
set wildignore+=**/node_modules/**,**/venv/**

" }}}

" LEADER {{{
" Set leader key for custom mappins
let mapleader=","
let maplocalleader="\\"
" }}}

" NAVIGATION {{{
nnoremap <leader>x :25Lexplore<Enter>

"Netrw list style to tree
let g:netrw_liststyle= 3

"Netrw show no banner
let g:netrw_banner=0

let g:netrw_browse_split=4

let g:netrw_winsize=75

"Netrw open vertical split to right
let g:netrw_altv=1

" }}}

" NORMAL MODE MAPPINS ------------------------------------------------- {{{

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

" Ident the whole file
nnoremap <leader>i gg=G<c-o><c-o>zz

" Remap reverse character search command
nnoremap <leader>, ,

nnoremap <leader>f :find **/*
" }}}

" INSERT MODE MAPPINS --------------------------------------------------{{{

" Better delete key behavior
set backspace=indent,eol,start

" Turn word into Uppercase and set cursor at the end of the word
inoremap <c-u> <esc>viwUea

" Exit insert mode
inoremap jk <esc>
inoremap <c-c> <nop>

func Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

augroup filetype_javascript
  autocmd!
  " Comment current line 
  autocmd FileType javascript nnoremap <buffer> <leader>c I// <esc>

  " Abbreviation for insert mode
  autocmd FileType javascript :iabbrev <buffer> <silent> ff if () {<CR>}<Esc>?(<CR>a<C-R>=Eatchar('\s')<CR>
  autocmd FileType javascript :iabbrev <buffer> <silent> cnl console.log();<Esc>?(<CR>a<C-R>=Eatchar('\s')<CR>
  autocmd FileType javascript :iabbrev <buffer> <silent> cst const
  autocmd FileType javascript :iabbrev <buffer> <silent> ael addEventListener(

augroup END

autocmd Filetype typescript setlocal re=2

  " }}}

  " VISUAL MODE MAPPINS --------------------------------------------------{{{

  " Wrap visual selection between single quotes
  vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>f'

  " }}}

  " SHORTCUTS TO .VIMRC -------------------------------------------------- {{{

  " Opens up .vimrc in a different split
  nnoremap <leader>ev :vsplit $MYVIMRC<cr>

  " Source .vimrc in order to new changes to take effect
  nnoremap <leader>sv :source $MYVIMRC<cr>

  " }}}

  " STATUS LINE CONGIF --------------------------------------------------- {{{
  "show status line all the time
  set laststatus=2

  set statusline=%f             " Path to the file
  set statusline+=\ -\          " Separator
  set statusline+=%Y            " Filetype of the file
  set statusline+=%=%l          " Current line
  set statusline+=:             " Separator
  set statusline+=%c            " Column number
  " }}}

