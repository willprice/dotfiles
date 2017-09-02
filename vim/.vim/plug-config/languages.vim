" ##########################
" GENERAL
" ##########################
" Generic Hex colors
Plug 'ap/vim-css-color'
" Syntax checking for most languages (linter)
"Plug 'scrooloose/syntastic'


" ##########################
" HASKELL
" ##########################
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }

" ##########################
" WEB+JS
" ##########################
" ### JS ###
" Nodeunit vim compiler
Plug 'lambdalisue/nodeunit.vim'
" Static JS analysis
Plug 'marijnh/tern_for_vim', { 'for': 'javascript' }

" ### CSS ###
" Coffee script
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
" LESS
Plug 'groenewege/vim-less', { 'for': 'less' }

" ### HTML ###
" Jade
Plug 'digitaltoad/vim-jade', { 'for': 'html' }
" HAML
Plug 'tpope/vim-haml', { 'for': 'haml' }
" HTML5
Plug 'othree/html5.vim', { 'for': 'html' }
" Emmet - expand CSS like selectors into HTML
Plug 'mattn/emmet-vim', { 'for': 'html' }
" Elm
Plug 'lambdatoast/elm.vim', { 'for': 'elm' }


" ##########################
" CLOJURE
" ##########################
Plug 'tpope/vim-salve'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-classpath'
" Clojure syntax & completion
Plug 'vim-scripts/VimClojure', { 'for': 'clojure' }
" Clojure syntax & completion
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
" Clojure REPL
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }


" ##########################
" PYTHON
" ##########################
" Python everything!
Plug 'klen/python-mode', { 'for': 'python' }


" ##########################
" OTHERS
" ##########################
" C scope for navigating C projects
Plug 'vim-scripts/cscope.vim', { 'for': 'c' }
" Run processing sketches from within vim
Plug 'sophacles/vim-processing', { 'for': 'processing' }
" Rust
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" Io
Plug 'andreimaxim/vim-io', { 'for': 'io' }
" Nimrod
Plug 'zah/nimrod.vim', { 'for': 'nim' }
" Go
Plug 'fatih/vim-go', { 'for': 'go' }
" Matlab
Plug 'vim-scripts/MatlabFilesEdition'

" ### ELECTRONICS ###
" VHDL
Plug 'vim-scripts/VIP', { 'for': 'vhdl' }
" Verilog
Plug 'vhda/verilog_systemverilog.vim', { 'for': 'verilog' }
" GAS assembly
Plug 'willprice/vim-gas', { 'for': 'gas' }
" ### OPS ###
" SCons
Plug 'vim-scripts/scons.vim', { 'for': 'scons' }
" Ansible YAML
Plug 'chase/vim-ansible-yaml', { 'for': 'ansible' }
" SaltStack
Plug 'saltstack/salt-vim', { 'for': 'salt' }
" Dockerfiles
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
" SQL
Plug 'vim-scripts/SQLComplete.vim', { 'for': 'sql' }
" Racket
Plug 'wlangstroth/vim-racket'
" Fish shell
Plug 'dag/vim-fish', { 'for': 'fish' }
" Prolog
Plug 'adimit/prolog.vim', { 'for': 'prolog' }

" ### LANGUAGE ENGEERINIG ###
" ANTLR 4 plugin
Plug 'jrozner/vim-antlr'
" ANTLR 3 plguin
Plug 'vim-scripts/antlr3.vim'
" Pentadactyl
Plug 'dogrover/vim-pentadactyl'

" ##########################
" MARKUP LANGUAGES
" ##########################
" Livedown, automatically refresh markdown generated HTML
Plug 'shime/vim-livedown', { 'for': 'markdown' }
" Markdown
Plug 'godlygeek/tabular', { 'for': 'markdown' }
Plug 'plasticboy/vim-markdown'
" Pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
" ASCIIDoc
Plug 'dagwieers/asciidoc-vim', { 'for': 'asciidoc' }
