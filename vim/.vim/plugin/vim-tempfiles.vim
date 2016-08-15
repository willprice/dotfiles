function! EnsureDirectoryExists (dir)
    if !isdirectory(a:dir)
        call mkdir(a:dir, 'p')
        echom "Made directory: " . a:dir
    endif
endfunction

set directory=~/.tmp/
call EnsureDirectoryExists($HOME . '/.tmp/backup')
set backupdir=~/.tmp/backup
call EnsureDirectoryExists($HOME . '/.tmp/view')
set viewdir=~/.tmp/view
call EnsureDirectoryExists($HOME . '/.tmp/undo')
set undodir=~/.tmp/undo/

set undofile
set backup
set writebackup
