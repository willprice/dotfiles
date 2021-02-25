" Call Make when writing a buffer (no delay), and on normal mode changes (after 750ms).
if exists("neomake#configure#automake")
    call neomake#configure#automake('nw', 750)
endif

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
