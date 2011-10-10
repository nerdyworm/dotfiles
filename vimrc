" Map jj to Esc
:imap jj <Esc>

" Map leader to ,
let mapleader=","

" Horizontal split resizing
set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set winheight=5
set winminheight=5
set winheight=999

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Pretty Colors
color jellybeans

" Use ctrl + movement keys to move around windows
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
