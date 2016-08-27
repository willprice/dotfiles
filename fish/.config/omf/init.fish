set -x MANPATH /usr/local/man /usr/share/man

set -l dirs_to_source custom aliases
for dir in $dirs_to_source
    for f in (dirname (status --current-filename))/$dir/*
        . "$f"
    end
end
alias mdv="python2 $HOME/src/terminal_markdown_viewer/mdv.py"
alias f="fuck"
eval (thefuck --alias | tr '\n' ';')
