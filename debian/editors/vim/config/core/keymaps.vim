" Abbrev "
iab xdate <C-r>strftime("%d/%m/%y %H:%M:%S")<cr>
" GLOBAL "
map 0 ^
" search 
map <space> /

" backsearch
map <C-space> ?

"disable highlighting
map <silent> <leader><cr> :noh<cr>

" move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" close buffer 
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" close all buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map tm: tabmove
map <leader>t<leader> :tabnext<cr>

map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

noremap<Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
map <leader>q :e ~/buffer<cr>
map <leader>x :e ~/buffer.md<cr>
map <leader>pp :setlocal paste!<cr>
map <leader>g :Ack

map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>

map <F5> :call CompileRun<CR>
" NORMAL MODE "
nmap <leader>w :w!<cr>
nmap<leader>tl :exe "tabn ".g:lasttab<CR>
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
"COMMAND MODE"
cno $h e ~/
cno $d e ~/Desktop/
cno $j e ./
cno $c e <C-\>eCurrentFileDir("e")<cr>

cno $q <C-\>eDeleteTillSlash()<cr>

cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>
" INSERT MODE "
inoremap $1  ()<esc>i
inoremap $2  []<esc>i
inoremap $3  {}<esc>i
inoremap $4  {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i

imap <F5> <Esc>:call CompileRun()<CR>

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