setlocal tabstop=2
setlocal shiftwidth=2
setlocal spell spelllang=en_gb
setlocal conceallevel=2
setlocal textwidth=80
setlocal formatoptions+=a " 'a' sets automatic formatting of paragraphs

map <buffer> ,q i`<esc>Ea`<esc>
map gm :call LivedownPreview()<CR>

" -------------------------------------
" livedown config
" -------------------------------------
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0

" should the browser window pop-up upon previewing
let g:livedown_open = 1 

" the port on which Livedown server will run
let g:livedown_port = 1337
" -------------------------------------
