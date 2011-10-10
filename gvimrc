" colorscheme
" color jellybeans
color moria
" color lucius
" color solarized

" set size of window
au GUIEnter * set lines=48 columns=120

" No really, do not wrap lines by default
set nowrap

" Ctrl-s save
"noremap <C-S> :update<CR>
"vnoremap <C-S> <C-C>:update<CR>
"inoremap <C-S> <C-O>:update<CR>

" Ctrl-V paste, Ctrl-C copy
map <C-V> "+gP
cmap <C-V> <C-R>+
vnoremap <C-C> "+y

" Use ctrl + movement keys to move around windows
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" Remove gui options
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r
set guioptions-=m

" Command-T for CommandT
map <Leader>f :CommandT<CR>
imap <Leader>f <Esc>:CommandT<CR>

" Command-][ to increase/decrease indentation
"vmap <m-]> >gv
"vmap <m-[> <gv

" Set font
"set guifont=Inconsolata\ 12
set guifont=Monaco:h12

" Auto refresh google chrome on save
"autocmd BufWriteCmd *.html,*.css,*.erb,*.less,*.js,*.scss,*.coffee :call Refresh_browser()
"function Refresh_browser()
"if &modified
"write
"" silent !xdotool search --onlyvisible "Google Chrome" key ctrl+r
"" silent !osascript ~/bin/refresh.scpt
"endif
"endfunction

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
