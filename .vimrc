set noic
filetype plugin on
syntax on

set shiftwidth=2
set tabstop=4
set softtabstop=2

set shellslash
set fileformat=unix

set nobackup
set noswapfile

set incsearch
set hlsearch
set hidden
set number

set history=200
set undolevels=2000
set expandtab
set listchars=tab:>~,nbsp:_,trail:.

set wildignore=*.swp,*.bak,*.class

let mapleader=","

set background=light
colorscheme solarized

" gui stuff
set guifont=Consolas:h9:cANSI
set guioptions=ae "disable menubar, toolbar, scrollbars

" irritating bells -all off
if has("gui_running")
  autocmd! GUIEnter * set vb t_vb=
endif

" a better escape key - brute force learn
" history lesson - https://en.wikipedia.org/wiki/Vi#/media/File:KB_Terminal_ADM3A.svg
inoremap <esc> <nop>
inoremap jk <esc>
" testing test  

" switch quickly to last buffer
nnoremap <leader>, :e #<cr>

" show status line always
set laststatus=2

" Without this, it really drives me crazy
set splitbelow
set splitright

" working with $MYVIMRC
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>so :so %<cr>

" buffers
nnoremap <leader>d :bd<cr>
nnoremap <leader>b :b 

" work with the clipboard
vnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>z :set pastetoggle

"ctrl-s for saving in both normal and insert mode
nnoremap <c-s> <esc>:w<cr> 
inoremap <c-s> <esc>:w<cr>

" ; -> : to save that extra bit of effort
nnoremap ; :
vnoremap ; :

" syntax and highlighting stuff
nnoremap <leader>s :syntax sync fromstart<cr>
nnoremap <leader>/ :nohlsearch<cr>

" windows stuff
nnoremap - <c-w><
nnoremap + <c-w>>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-h> <c-w><c-h>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-_> <c-w>= 

" js
iab clo console.log(

" window operations
" echo winnr() - get current window number
" let g:netrw_chgwin=2 - use the number found earlier to open the file in this
" split
"
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4 " open file in previous window

" control font-size
nnoremap <C-Up> :silent! let &guifont = substitute(&guifont, ':h\zs\d\+', '\=eval(submatch(0)+1)', '')<cr>

nnoremap <C-Down> :silent! let &guifont = substitute(&guifont, ':h\zs\d\+', '\=eval(submatch(0)-1)', '')<cr>
