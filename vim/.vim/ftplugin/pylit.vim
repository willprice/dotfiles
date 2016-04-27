compiler pylitlint

augroup pylit
  au BufWritePost *.pylit make!
  au BufWritePost *.pylit silent !unlit % -o %:r.py
  au BufWritePost *.pylit cwindow
  au BufWritePost *.pylit redraw
augroup end
