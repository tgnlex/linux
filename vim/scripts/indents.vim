augroup filetype_vim 
    autocmd! 
    autocmd FileType vim setlocal foldmethod=marker
augroup END

autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType css  setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType lua  setlocal tabstop=4 shiftwidth=4 expandtab
