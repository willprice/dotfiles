" See https://begriffs.com/posts/2019-07-19-history-use-vim.html
" for a nice description of some of the temporary files vim creates and what
" purpose they serve. Inline notes are derived from this page and the vim
" manual
"
" Double slashes at the end of  *dir variables mean that the file names are
" built from the FULL PATH of the file to prevent files with the same name
" from clashing

function! EnsureDirectoryExists (dir, ...)
    let permissions = a:0 >= 1 ? a:1 : 700
    if !isdirectory(a:dir)
        call mkdir(a:dir, 'p')
        call system('chmod ' . permissions . ' ' . shellescape(a:dir))
        echom "Made directory: " . a:dir
    endif
endfunction


call EnsureDirectoryExists($HOME . '/.tmp')
" Directory for swap files.
set directory=~/.tmp/
" Number of keystrokes before autosaving (default: 200)
set updatecount=100
" Number of milliseconds when nothing has happened before autosaving 
" (default: 4000)
set updatetime=4000
" Swap files describe the changes made to the original file and are created
" every X seconds. This protects against editor crashes between saves.
set swapfile


call EnsureDirectoryExists($HOME . '/.tmp/backup')
" Directory to save files before overwriting htem.
set backupdir=~/.tmp/backup//
" Backup file before overwriting. The backup is removed after the file is
" written, this prevents data loss between truncating the original file and
" saving the current buffer's contents.
set writebackup
" Don't keep backups of succesfully saved files
set nobackup
" Rename the old file, writing the new one if it's safe, otherwise fall back
" on the default of copying the file and overwriting the original.
set backupcopy=auto


call EnsureDirectoryExists($HOME . '/.tmp/view')
" Directory to save view files (which contain cursor and fold collapse
" information)
set viewdir=~/.tmp/view//


if v:version > '702'
  call EnsureDirectoryExists($HOME . '/.tmp/undo')
  set undodir=~/.tmp/undo//
  " Save the undo information for each file, so `u` works on subsequent
  " invocations of vim on a previously edited file.
  set undofile
endif

