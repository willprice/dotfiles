" Use fuzzy matching
call unite#filters#matcher_default#use(['matcher_fuzzy'])

nnoremap <leader>r :<C-u>Unite -start-insert file_rec/async:!<CR>
