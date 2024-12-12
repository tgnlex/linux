if has("gui_macvim")
  autocmd GUIENTER * set vb t_vb=
endif
if has("autocmd")
 autocmd BufWritePre *.txt, *.js, *.py, *.wiki, *.sh, *.zsh, *.ksh, *.md,  *.lua, *.rb, *.ts, *.json, *.jsx, *.tsx 
endif 

au FocusGained,BufEnter * silent! checktime
au BufReadPost *  if line("'\"") > 1 && line("'\"") <= line("$")  | exe "normal! g'\"" | endif
au TabLeave * let g:lasttab = tabpagenr()
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

au FileType python syn keyword pythonDecorator true None False self
au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f # --- <esc>a
au Filetype python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def 

au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au Filetype javascript,typescript imap <C-t>console.log();<esc>hi
au FileType javascript,typescript imap <C-a>alert();<esc>hi

au FileType javsacript,typescript inoremap <buffer> $r return 
au FileType javascript,typescript inoremap <buffer> $f // --- PH<esc>FP2xi

au FileType coffee call CoffeScriptFold()
au FileType gitcommit call setpos('.', [0, 1, 1, 0])

autocmd FileType BufRead *.twig set syntax=html filetype=html
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
