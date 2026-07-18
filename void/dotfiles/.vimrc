" REQUIRED = download plug.vim via curl " 
"---------- SETTINGS ----------"
set nocompatible

filetype on
filetype plugin on
filetype indent on 
syntax on

set shiftwidth=4
set tabstop=4
set cmdheight=1
set scrolloff=10
set history=1000
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.img,*.xlsx

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

set showmatch
set hlsearch
set lazyredraw

set wildmenu


" -------------------------------"
" ---------- PLUGINS ----------- "
call plug#begin('~/.vim/plugged')
  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-obsession'
call plug#end()
" ------------------------------ "

" ---------- KEYMAPS ----------- "
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
" -------------------------------"

" --------- VIMSCRIPT ---------- "
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END 
" -------------------------------"
"
" --------- STATUS LINE -------- "

" ------------------------------ "
