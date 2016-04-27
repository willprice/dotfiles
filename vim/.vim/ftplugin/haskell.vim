" Advice from http://www.haskell.org/haskellwiki/Vim

" Tab specific option
set tabstop=8                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple

" hdevtools config
au FileType haskell nnoremap <leader>h :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <leader>c :HdevtoolsClear<CR>"
au FileType haskell nnoremap <buffer> <leader>i :HdevtoolsInfo<CR>

" vim2hs config
au FileType haskell compiler ghc   " Enables haskell-mode's type insertion shortcuts
let g:haskell_conceal_wide = 1     " Replace -> with unicode chars etc

let g:hpaste_author = "Will Price"
let g:haskell_tabular = 1          " Adds haskell patterns to Tabular for tabularizing
let g:haskell_tags_generator = 1   " Generate tags upon opening a hs file with a .cabal file in dir

let g:haddock_browser = "/usr/bin/chromium"

" ghc_mod omni-completion
au FileType haskell setlocal omnifunc=necoghc#omnifunc

" Run compiler
au FileType haskell nnoremap <F7> :make<CR>"
" Reload
au FileType haskell map <silent> tu :call GHC_BrowseAll()<CR>
" Type Lookup
au FileType haskell map <silent> tw :call GHC_ShowType(1)<CR>
