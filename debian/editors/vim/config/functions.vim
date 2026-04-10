fun! CleanExtraSpaces()
  let save_cursor = getpost(".")
  let old_query = getreg('/')
  silent! %s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfun
function! HasPaste() 
  if &paste
      return 'PASTE MODE '
    endif 
    return ''
endfunction
function! <SID>BufcloseCloseIt()
  let l:currentBufNum = bufnr("%")
  let l:alternateBufNum = bufnr("#")

  if buflisted(l:alternateBufNum)
      buffer #
  else 
      bnext 
  endif 
  if bufnr("%") == l:currentBufNum 
      new
  endif 
  if buflisted(l:currentBufNum)
    execute("bdelete!, ".l:currentBufNum)
  endif
endfunction

function! CmdLine(str) 
  call feedkeys(":", a:str)
endfunction

function! VisualSelection(direction, extra_filter) range 
   let l:saved_reg = 0
   execute "normal! vgvy"

   let l:pattern = escape(@", "\\/.*'$^~[]")
   let l:pattern = substitute(l:pattern, "\n$", "", "")
   
   if a:direction == 'gv'
     call CmdLine("Ack '" . l:pattern . "' " )
   elseif a:direction == 'replace'
     call CmdLine("%s" . '/', l:pattern . '/')
   endif 
   let @/ = l:pattern
   let @" = l:saved_reg
endfunction
func! DeleteTillSlash()
  let g:cmd = getcmdline()
  if has("win16") || has("win32")
        let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\]\\).*", "\\1", "")
  else
        let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*", "\\1", "")
  endif
  if g:cmd == g:cmd_edited
    if has("win16") || has("win32")
         let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\\]\\).*\[\\\\\]", "\\1", "")
     else
         let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*/", "\\1", "")
     endif
  endif
endfunc
func! CurrentFileDir(cmd) 
  return a:cmd . " " . escape(expand("%:p:h"), " ") . "/"
endfunc
function JavascriptFold()
  setl foldmethod=syntax
  setl foldlevelstart=1
  function FoldText()
    return substitute(getline(v:foldstart), '{.*', '{...}', '')
  endfunction
  setl foldtext=FoldText()
endfunction

function CoffeeScriptFold()
  setl foldmethod=indent
  setl foldlevelstart=1
endfunction 

func! CompileRun()
    exec "w"
  if &filetype == 'c'
    exec "!gcc % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %"
  elseif &filetype == 'sh'
    exec "!time bash %"
  elseif &filetype == 'python'
    exec "!time python3 %"
  elseif &filetype == 'html'
    exec "!google-chrome % &"
  elseif &filetype == 'go'
    exec "!go build %<"
    exec "!time go run %"
  elseif &filetype == 'matlab'
    exec "!time octave %"
  endif
endfunc
