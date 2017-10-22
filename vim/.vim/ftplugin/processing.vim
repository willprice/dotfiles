"  Calls the function compiling the file being edited
setlocal makeprg=processing-run\ %
noremap :w<cr> :make<cr>
