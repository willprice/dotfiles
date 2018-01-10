function! EnsureDirectoryExists (dir)
    if !isdirectory(a:dir)
        call mkdir(a:dir, 'p')
        echom "Made directory: " . a:dir
    endif
endfunction

" double slashes mean that the file names are built from the FULL PATH of the
" file to prevent files with the same name from clashing
call EnsureDirectoryExists($HOME . '/.tmp')
set directory=~/.tmp/
call EnsureDirectoryExists($HOME . '/.tmp/backup')
set backupdir=~/.tmp/backup//
call EnsureDirectoryExists($HOME . '/.tmp/view')
set viewdir=~/.tmp/view//
call EnsureDirectoryExists($HOME . '/.tmp/undo')
set undodir=~/.tmp/undo//

set undofile
set backup
set writebackup
