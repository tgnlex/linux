if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

if $COLORTERM=='gnome-terminal'
  set t_Co=256
endif
try 
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry 
set wildignore="*.o, *~,*.pyc       

if has("win16") || has("win32")                               
  set wildignore+=.git\*,.hg\*,.svn\*                         
endif



if exists('$TMUX')
    if has('nvim')
        set termguicolors
    else 
        set term=screen-256color
    endif
endif


if has("gui_running") 
  set guioptions-=T
  set guioptions-=e
  set t_Co=256
  set guitablabel=%m\ %t
endif

if has("mac") || has ("macunix")
  set gfn=IBM\ Plex\ Mono:h14, Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
  set gfn=IBM\ Plex\ Mono:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
  set gfn=IBM\ Plex\ Mono\ 14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
  set gfn=IBM\ Plex\ Mono\ 14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
  set gfn=Monospace\ 11
endif

