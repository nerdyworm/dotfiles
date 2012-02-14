" Dark backgrounds are the roxors or something
set background=dark
" Pretty Colors
" color jellybeans
" color moria
" colorscheme solarized
" color anotherdark
" color grb256
"color zellner
color xoria256

" Use ctrl + movement keys to move around windows
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" Command-T for CommandT
"map <Leader>f :CommandT<CR>
"imap <Leader>f <Esc>:CommandT<CR>

"" Flush Command-T
"map <Leader>F :CommandTFlush<cr>

" CtrlP Fuzzy File Finder
map <Leader>f :CtrlP<cr>
imap <Leader>f <Esc>:CtrlP<cr>

map <Leader>F :ClearCtrlPCache<cr>


" JANUS: format the entire file
" fk this noise
" nmap <leader>fef ggVG=
"noremap <leader>fef
nunmap <leader>fef

" Files Types
"autocmd BufRead,BufNewFile *.erb set filetype=eruby.html5
"autocmd BufRead,BufNewFile *.hbs set filetype=mustache
autocmd BufRead,BufNewFile *.jbuilder set filetype=ruby

" Clojure Section
let vimclojure#WantNailgun = 1
let vimclojure#SplitPos = "bottom"
let vimclojure#SplitSize = 10

autocmd BufRead,BufNewFile *.clj nmap <C-c><C-c> <Plug>ClojureEvalFile
autocmd BufRead,BufNewFile *.clj nmap <C-x><C-x> <Plug>ClojureRunTests

" Ctags tags
set tags=tags;/

" Adjust viewports to the same size
"map <Leader>= <C-w>=
"imap <Leader>= <Esc> <C-w>=

"map <Leader>n :NERDTreeToggle<cr>:vertical resize 31<cr>

augroup AuNERDTreeCmd
autocmd AuNERDTreeCmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
"autocmd BufEnter * call s:FkingSize()

function s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

function s:FkingSize(...)
  "if exists("t:NERDTreeBufName")
    "let crr = bufnr('%')
    "let nr = bufwinnr(t:NERDTreeBufName)
    "echo crr.' == '. nr
    "if crr != nr
      "exec 'vertical' . nr . 'res 31'
    "endif
  "endif
endfunction

" Don't underline links in html
highlight link htmlLink text
