# Vim Cheatsheet


## [NERDTree](https://github.com/scrooloose/nerdtree)

- Press `<F3>` to toggle the nerdtree window open or closed.
- Press `I` when in nerdtree browser to show hidden files.
- Press `C` on a directory to make that the new root.
- Press `o` to open a file in a new window.
- Press `i` to open in a horizontal split.
- Press `s` on a file to open in a vertical split.
- Press `gs` to preview in a vertical split.
- Press `P` to go to the root node in the browser.


## [Unimpaired](https://github.com/tpope/vim-unimpaired)

- Press `[b`/`]b` for next/previous buffer.
- Press `[B`/`]B` for first/last buffer.
- Press `[q`/`]q` for next/previous quickfix item.
- Press `[t`/`]t` for next/previous tag.
- Press `[<Space>`/`]<Space>` to add a line before/after the current line.

## [Fzf](https://github.com/junegunn/fzf.vim)

### Normal mode

- Press `<C-p>` to open a fuzzy search for files starting from the current
  directory root. (`<C-g>` to close the window, `<C-k>` to navigate up the
  list and `<C-j>` to navigate down, `<Enter>` to open the item in a new window).

### Insert mode:

- Press `<C-p>`


## [Surround](https://github.com/tpope/vim-surround)

These are mostly examples from the
[README](https://github.com/tpope/vim-surround)

- Change delimiters of a string:
  ```
  "Hello world!"
  ```
  Type: `cs"'`
  ```
  'Hello world!'
  ```
  Type: `cs'<q>`
  ```
  <q>Hello world!</q>
  ```
  Type: `cst"`
  ```
  "Hello world!"
  ```
- Surround a text object with delimiters:
  Place cursor on `Hello`
  ```
  Hello world!
  ```
  Type `ysiw]`
  ```
  [Hello] world!
  ```
  Remove the delimiters with `ds]`
  ```
  Hello world!
  ```
  Wrap the whole line: `yss)`
  ```
  (Hello world!)
  ```
  If you want to add spacing around the delimiters, use the opening delimiter
  form, `yss(`
  ```
  ( Hello world! )
  ```
- You can do some very impressive HTML tag editing too:
  ```
  <em>Hello</em> world!
  ```
  Highlight the line with `V` and type `S<p class="important">`
  ```
  <p class="important">
  <em>Hello</em> world!
  </p>
  ```

## [Gundo](https://github.com/sjl/gundo.vim)

A frontend for the undolist vim keeps.

- Press `<Leader>u` to bring up the undo tree.
- Press `q` to quit the window.
- Press `p` to show a diff between current version and the selected revision.

## [Table mode](https://github.com/dhruvasagar/vim-table-mode)

A plugin for creating tables 

- Press `<leader>tm` to enable table mode
- Start typing out the header
  ```
  | Hello | World | Table |
  ```
- Add `||` on the line below to expand the header separator row
  ```
  | Hello | World | Table |
  |-------|-------|-------|
  ```
- Add contents to a row, the table will automatically adjust in size
  ```
  | Hello           | World | Table   |
  |-----------------|-------|---------|
  | I need more vim | in    | my life |
  ```
- If you're writing RST tables then set the following vars:
  ```vimscript
  let g:table_mode_corner_corner='+'
  let g:table_mode_header_fillchar='='
  ````
- If you have an existing table you'd like to reformat, then enable table mode
  and simply hover over it to reformat.
  ```
  | Hello | World | Table   |
  |--|-------|---------|
  | I need more vim | in    | my life |
  ```
  Becomes

  ```
  | Hello           | World | Table   |
  |-----------------|-------|---------|
  | I need more vim | in    | my life |
  ```
- CSVs can be turned into tables through `:Tableize` (mapped to `<leader>tt`)
  ```
  one,two,three
  1,2,3
  ```
  Highlight the CSV contents in visual mode and press `<leader>tt`
  ```
  | one | two | three |
  | 1   | 2   | 3     |
  ```
  Add a new line line below the header and type `||` to create the separator
  ```
  | one | two | three |
  |-----|-----|-------|
  | 1   | 2   | 3     |
  ```
