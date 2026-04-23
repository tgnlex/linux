" REQUIRED = download plug.vim via curl " 
"---------- SETTINGS ----------"
set nocompatible

filetype on
filetype plugin on
filetype indent on 
syntax on

set number
set cursorline 
set cursorcolumn

set expandtab
set shiftwidth=4
set tabstop=4
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode

set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.img,*.xlsx
" -------------------------------"
" ---------- PLUGINS ----------- "
call plug#begin('~/.vim/plugged')
  Plug 'dense-analysis-ale'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-obsession'
  Plug 'neoclide/coc.nvim'
call plug#end()
" ------------------------------ "

" ---------- KEYMAPS ----------- "

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
