" Basic mappings {{{1
let mapleader = ","

" I got used to this thanks to spacemacs!
nnoremap <space> :
" wrapped lines navigation
nnoremap j gj
nnoremap k gk
inoremap jj <ESC>

" F1 usually brings up help, but I never want that. I usually
" hit it instead of F2!
inoremap <F1> nop
nnoremap <F1> nop
vnoremap <F1> nop

" UI control {{{1
" hlsearch toggle
nnoremap <Leader> :set hlsearch!<cr>
" Toggle whitespace characters
nnoremap <F2> :set list!<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>t :Tags<CR>
nnoremap <Leader>u :GundoToggle<CR>

" Navigation {{{1
" Fuzzy search mappings {{{2
let g:gitgutter_map_keys = 0
nnoremap <c-p> :call fzf#run({'sink': 'e'})<CR>
nnoremap <Leader>p :call fzf#run({'sink': 'split'})<CR>
nnoremap <Leader>vp :call fzf#run({'sink': 'vsplit'})<CR>
" Insert mode completion
inoremap <c-p> <plug>(fzf-complete-path)
" Toggle NERDTree easily with F3
nnoremap <F3> :NERDTreeToggle<cr>
"


" File Helpers {{{1
" Remove trailing whitespace
nnoremap <Leader>w :%s/\s\+$//<cr>:let @/=''<CR>
" Edit vim
nnoremap <Leader>ev :vsplit ~/.vim/vimrc<CR>
" Source vim
nnoremap <Leader>sv :source ~/.vim/vimrc<CR>

" Alignment {{{2
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vnoremap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nnoremap ga <Plug>(EasyAlign)
