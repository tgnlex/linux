" Visual Mode "
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>@/<CR><CR>
vnoremap $1 <esc>`>a) <esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $4 <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a`<esc>`<i`<esc>
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>
vnoremap <silent> <leader> :call VisualSelection('replace', '')<CR>
vmap <M-j> :m'<+<cr>`my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`my`<mzgv`yo`z
vmap <F5> <Esc> :call CompileRun()<CR>