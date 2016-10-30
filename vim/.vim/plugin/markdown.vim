" Hide markdown link definitions and just show display text.
set conceallevel=2

" Don't fold level 1 headers
let g:vim_markdown_folding_style_pythonic = 1

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" Enable markdown math delimited by $
let g:vim_markdown_math = 1

" Highlight YAML frontmatter
let g:vim_markdown_frontmatter = 1

" God damn it don't do 4 space indentation
" I like flat bullet lists.
let g:vim_markdown_new_list_item_indent = 2

nnoremap <F6> :Toc<CR>
