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

" Remove gui options
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r
set guioptions-=m

" Command-][ to increase/decrease indentation
"vmap <m-]> >gv
"vmap <m-[> <gv

" Set font
if has("gui_macvim")
  set guifont=Monaco:h12
else
  set guifont=Monaco\ 10
endif

" No visual bell
set visualbell t_vb=

" Auto refresh google chrome on save
"autocmd BufWriteCmd *.html,*.css,*.erb,*.less,*.js,*.scss,*.coffee :call Refresh_browser()
"function Refresh_browser()
"if &modified
"write
"" silent !xdotool search --onlyvisible "Google Chrome" key ctrl+r
"" silent !osascript ~/bin/refresh.scpt
"endif
"endfunction
