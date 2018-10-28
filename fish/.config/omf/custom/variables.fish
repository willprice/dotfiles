# private variables
if type -q nvim
    set editor nvim
else if type -q vim
    set editor vim
else
    set editor vi
end

# public variables
set --export EDITOR     "$editor"
set --export VISUAL     "$editor"
set --export BROWSER    chromium
set --export TERMINAL   urxvt
set --export GOPATH     "$HOME/code/go"
set --global PYTHONDOCS /usr/share/doc/python2/html/
