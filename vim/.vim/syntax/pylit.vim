if exists('b:current_syntax') && b:current_syntax == 'pylit'
  finish
endif

runtime! syntax/markdown.vim
unlet b:current_syntax

syntax clear markdownCode 

syntax include @inlinePython syntax/python.vim

syntax region inlinePython start='^  \|\t' end='$' contains=@inlinePython


let b:current_syntax = "pylit"

" vim: ts=8
