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

" Abbrev "
iab xdate <C-r>strftime("%d/%m/%y %H:%M:%S")<cr>


