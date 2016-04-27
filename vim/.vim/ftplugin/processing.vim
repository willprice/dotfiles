"  Calls the function compiling the file being edited
set makeprg=processing-run\ %
nmap  :w<cr> :make<cr>
