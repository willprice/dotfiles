" Mapping selecting mappings
nnoremap <c-p> :call fzf#run({'sink': 'e'})<CR>

" Insert mode completion
inoremap <c-p> <plug>(fzf-complete-path)
