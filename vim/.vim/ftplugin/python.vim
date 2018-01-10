" Execute file being edited with <Shift> + e:
noremap <leader><c> :w<CR> :!/usr/bin/env python %<CR>

setlocal shiftwidth=4
setlocal tabstop=4
setlocal expandtab

" Pymode rope home recursive scan fix
let g:pymode_rope_lookup_project = 0
" Disable autocomplete, pain in the arse with YouCompleteMe
let g:pymode_rope_complete_on_dot = 0
