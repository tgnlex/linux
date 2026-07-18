" REQUIRED = download plug.vim via curl " 
"---------- SETTINGS ----------"
filetype on
filetype plugin on
filetype indent on 
syntax enable
syntax on
set background=dark
set encoding=utf8
set shiftwidth=4
set tabstop=4
set cmdheight=1
set scrolloff=10
set history=1000
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.img,*.xlsx
set foldcolumn=1
set regexpengine=0
set nocompatible
set nobackup
set number 
set expandtab
set hid
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set magic
set showmatch
set hlsearch
set lazyredraw

set wildmenu
" ------------------------------ "
" ############################## "
" --------- COLORSCHEME -------- "
try 
    colorscheme desert
catch
endtry
" ------------------------------ "
" #############################  "
" ---------- PLUGINS ----------- "
call plug#begin('~/.vim/plugged')
  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-obsession'
call plug#end()
" ------------------------------ "
" ############################## "
" ---------- KEYMAPS ----------- "
" Search "
map <space> / 
map <C-space> ?
" Basic Aliasing
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
" Move between windows "
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Close curent buffer "
map <leader>bd :Bclose<cr>:tabclose<cr>gT
" Close all buffers"
map <leader>ba :bufdo bd<cr>
" Next Buffer "
map <leader>l :bnext<cr>
" Previous Buffer "
map <leader>h :bprevious<cr>
" Tab management "
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>t<leader> :tabnext<cr>

" -------------------------------"
" ############################## "
" --------- VIMSCRIPT ---------- "
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END 
" -------------------------------"
"
" --------- STATUS LINE -------- "
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
" ------------------------------ "
