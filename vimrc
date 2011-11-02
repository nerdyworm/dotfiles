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

" Dark backgrounds are the roxors or something
set background=dark
" Pretty Colors
" color grb256
" color jellybeans
color moria
" colorscheme solarized

" Use ctrl + movement keys to move around windows
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" Command-T for CommandT
map <Leader>f :CommandT<CR>
imap <Leader>f <Esc>:CommandT<CR>

" Flush Command-T
map <Leader>F :CommandTFlush<cr>

" Files Types
autocmd BufRead,BufNewFile *.erb set filetype=eruby.html5
autocmd BufRead,BufNewFile *.hbs set filetype=mustache

" Clojure Section
let vimclojure#WantNailgun = 1
let vimclojure#SplitPos = "bottom"
let vimclojure#SplitSize = 10

autocmd BufRead,BufNewFile *.clj nmap <C-c><C-c> <Plug>ClojureEvalFile
autocmd BufRead,BufNewFile *.clj nmap <C-x><C-x> <Plug>ClojureRunTests

" Ctags tags
set tags=tags;/
