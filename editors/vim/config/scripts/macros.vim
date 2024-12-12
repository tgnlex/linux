command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
command! Bclose call <SID>BufcloseCloseIt()
