" Shims and sensible defaults {{{1
" Defaults that should be baked into vim
Plug 'tpope/vim-sensible'
" Support asynchronous commands
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Editorconfig support: reads a .editorconfig file to keep editor configs
" consistent across multiple dev machines
Plug 'editorconfig/editorconfig-vim'


" Mappings and movements {{{1
" Sensible mappings for those nasty ex commands like :cnext, :bnext etc
" [a, ]a, [A, ]A, [b, ]b, [B, ]B, [l, ]l, [L, ]L,
" [<C-L>, ]<C-L, [q, ]q, [Q, ]Q, [<C-Q>, ]<C-Q>,
" [t, ]t, T, ]T
" See :help unimpaired for definitions
Plug 'tpope/vim-unimpaired'
" Surround text objects with things
" ds, cs, ys
Plug 'tpope/vim-surround'
" Extended % matching (HTML, LaTeX, Shell, Vim, XML)
Plug 'tmhedberg/matchit'
" Automatically end blocks
Plug 'tpope/vim-endwise'


" UI {{{1
" Nice looking statusline
Plug 'itchyny/lightline.vim'
" Show hex colours by changing the background to the specified colour
Plug 'ap/vim-css-color'


" Additional features {{{1
" Asynchronous autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Table mode
" :TableModeEnable
" Start typing on a new line with `table-mode-separator` to start a
" table
Plug 'dhruvasagar/vim-table-mode'
" Asynchronous linting (c.f. syntastic)
Plug 'w0rp/ale'
" A tabular replacement
" :EasyAlign, <Enter>, ga
Plug 'junegunn/vim-easy-align'
" Git wrapper
" :Gblame, :Gbrowse, :Gcd, :Gcommit, :Gdiff, :Gfetch, Ggrep, etc
Plug 'tpope/vim-fugitive'
" Shows additions and deletions for git in column
Plug 'airblade/vim-gitgutter'
" Graphical undo
" :GundoShow
Plug 'sjl/gundo.vim'
" Edit files from remote locations
" :MirrorConfig
Plug 'zenbro/mirror.vim'
" File tree browser
Plug 'scrooloose/nerdtree'
" FZF fuzzy file/buffer searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Snippet engine
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'


" Languages {{{1
" C scope for navigating C projects
Plug 'vim-scripts/cscope.vim', { 'for': 'c' }
" Run processing sketches from within vim
Plug 'sophacles/vim-processing', { 'for': 'processing' }
" Io
Plug 'andreimaxim/vim-io', { 'for': 'io' }
" Nimrod
Plug 'zah/nimrod.vim', { 'for': 'nim' }
" Matlab
Plug 'vim-scripts/MatlabFilesEdition'
" GAS assembly
Plug 'willprice/vim-gas', { 'for': 'gas' }
" VHDL
Plug 'vim-scripts/VIP', { 'for': 'vhdl' }
" Verilog
Plug 'vhda/verilog_systemverilog.vim', { 'for': 'verilog' }
" SCons
Plug 'vim-scripts/scons.vim', { 'for': 'scons' }
" SaltStack
Plug 'saltstack/salt-vim', { 'for': 'salt' }
" SQL
Plug 'vim-scripts/SQLComplete.vim', { 'for': 'sql' }
" Prolog
Plug 'adimit/prolog.vim', { 'for': 'prolog' }
" SaltStack
Plug 'saltstack/salt-vim'


" Extended language support {{{1
" IDE like behaviour etc
" Livedown, automatically refresh markdown generated HTML
Plug 'shime/vim-livedown', { 'for': 'markdown' }
" Syntax highlighting for a lot of languages
Plug 'sheerun/vim-polyglot'
" TypeScript IDE functionality
Plug 'Quramy/tsuquyomi', { 'for': 'typescript' } " typescript IDE
" Emmet - expand CSS like selectors into HTML
Plug 'mattn/emmet-vim', { 'for': 'html' }
" Python mode
Plug 'python-mode/python-mode', { 'branch': 'develop', 'for': 'python' }


" Themes {{{1
Plug 'freeo/vim-kalisi'
Plug 'michalbachowski/vim-wombat256mod'
Plug 'ricardovaleriano/vim-github-theme'
Plug 'john2x/flatui.vim'
Plug 'guns/jellyx.vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'chriskempson/base16-vim'
Plug 'sjl/badwolf'
Plug 'iCyMind/NeoSolarized'
