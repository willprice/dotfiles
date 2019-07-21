" Mapping selecting mappings
nnoremap <c-p> :call fzf#run({'sink': 'e'})<CR>
nnoremap <leader>hp :call fzf#run({'sink': 'split'})<CR>
nnoremap <leader>vp :call fzf#run({'sink': 'vsplit'})<CR>

" Insert mode completion
inoremap <c-p> <plug>(fzf-complete-path)
