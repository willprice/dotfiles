" Vim compiler file for Literate Python

if exists('current_compiler')
  finish
endif
let current_compiler = 'pylitlint'

if !exists('g:pylitlint_onwrite')
    let g:pylitlint_onwrite = 1
endif

if !exists('g:pylitlint_cwindow')
    let g:pylitlint_cwindow = 1
endif

"if g:pylitlint_onwrite
" augroup python
" au!
" au BufWritePost * call Pylitlint(1)
" augroup end
"endif

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif
"CompilerSet errorformat="%f:%l [%t] %m"
CompilerSet makeprg=(pylitlint\ %)

if !exists("*s:Pylitlint")
function! Pylitlint(writing)
" If check is executed by buffer write - do not jump to first error
    if !a:writing
        silent make
    else
        silent make!
    endif

    if g:pylitlint_cwindow
        cwindow
    endif
endfunction
endif
