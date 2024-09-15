augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END

autocmd Filetype  html setlocal tabstop=2 shiftwidth=2 expandtab

if version >= 703 
    set undodir=~/.vim/backup
    set undofile 
    set undoreload=10000
endif
