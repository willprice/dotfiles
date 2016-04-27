" w!! to write a file as sudo
" stolen from Steve Losh
cnoremap w!! w !sudo tee % >/dev/null
