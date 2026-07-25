" REQUIRED = download plug.vim via curl " 
"---------- SETTINGS ----------"
let mapleader = " "

filetype on
filetype plugin on
filetype indent on 
syntax on

set nocompatible
set number
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
  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-obsession'
call plug#end()
" ------------------------------ "

" ---------- KEYMAPS ----------- "
nmap <leader>w :w!<cr>
map <space> /
map <C-space> ?
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>bd :Bclose<cr>
map <leader>ba :1,100 bd!<cr>
map <leader>tn :tabnew<cr>
map <leader>w :split<cr>
map <leader>v :vsplit<cr>
nnoremap o o<esc>
nnoremap O O<esc>
nnoremap <F3> :NERDTreeToggle<cr>
" -------------------------------"


" --------- VIMSCRIPT ---------- "
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END 
augroup cursor_off
  autocmd!
  autocmd WinLeave * set nocursorline nocursorcolumn
  autocmd WinEnter * set cursorline cursorcolumn
augroup END
" -------------------------------"
"
" --------- STATUS LINE -------- "

set statusline=

" Left side info
set statusline+=%F    " Full path to the file
set statusline+=%m    " Modified flag [+] if the file has unsaved changes
set statusline+=%r    " Read-only flag [RO]
set statusline+=%y    " File type (e.g., [python])

" Right-align alignment separator
set statusline+=%=

" Right side info
set statusline+=[%{&fileencoding}] " File encoding (e.g., utf-8)
set statusline+=\ %l          " Current line number
set statusline+=/%L           " Total lines in the file
set statusline+=,%c           " Current column number
set statusline+=\ %P          " Percentage through the fil
" ------------------------------ "
