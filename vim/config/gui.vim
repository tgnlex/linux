if has('gui_running')
  set background=dark
	colorscheme molokai
  set guifont=Monospace\ Regular\ 12
	set guioptions-=T
	set guioptions-=L
	set guioptions-=r 
	set guioptions-=m 
	set guioptions-=b 
	nnoremap <F4> :if &guioptions=~#'mTr'<Bar>
    \set guioptions-=mTr<Bar> 
		\else<Bar>
	  \set guioptions+=mTr<Bar>
		\endif<CR>
endif
