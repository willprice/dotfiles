map <silent> <Leader>se :Errors<CR>
map <Leader>st :SyntasticToggleMode<CR>
nnoremap <Leader>s :SyntasticCheck<CR>

let g:syntastic_asm_compiler = 'arm-none-eabi-gcc'
let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_enable_racket_racket_checker = 1
