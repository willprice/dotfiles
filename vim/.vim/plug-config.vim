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
Plug 'tpope/vim-repeat' " Bring support for `.` on surround operations.
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
" Jump to a match with hotkeys (like f in zathura/vimium)
Plug 'easymotion/vim-easymotion'

" Shows additions and deletions for git in column
Plug 'airblade/vim-gitgutter'
" Graphical undo
" :GundoShow
Plug 'sjl/gundo.vim'
" File tree browser
Plug 'scrooloose/nerdtree'
" FZF fuzzy file/buffer searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Snippet engine
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine.
Plug 'honza/vim-snippets'


" Languages {{{1
" C scope for navigating C projects
Plug 'vim-scripts/cscope.vim', { 'for': 'c' }
" Run processing sketches from within vim
Plug 'sophacles/vim-processing', { 'for': 'processing' }
" Io
Plug 'davidbalbert/vim-io', { 'for': 'io' }
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
" SaltStack
Plug 'saltstack/salt-vim', { 'for': 'salt' }
" SQL
Plug 'vim-scripts/SQLComplete.vim', { 'for': 'sql' }
" Prolog
Plug 'adimit/prolog.vim', { 'for': 'prolog' }
" SaltStack
Plug 'saltstack/salt-vim'
Plug 'tpope/vim-fugitive'
" Extended language support {{{1
" IDE like behaviour etc
" Syntax highlighting for a lot of languages
Plug 'sheerun/vim-polyglot'
" Emmet - expand CSS like selectors into HTML
Plug 'mattn/emmet-vim', { 'for': 'html' }
" Python mode
Plug 'python-mode/python-mode', { 'for': 'python' }
" Haskell intero support
Plug 'parsonsmatt/intero-neovim', { 'for': 'haskell' }
Plug 'neomake/neomake' " dependency of intero-vim.
" Snakemake
Plug 'ivan-krukov/vim-snakemake'
" BATS bash testing
Plug 'vim-scripts/bats.vim'
" LEGO Mindstorms - NQC
Plug 'vim-scripts/nqc.vim'
" jq syntax
Plug 'vito-c/jq.vim'


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
