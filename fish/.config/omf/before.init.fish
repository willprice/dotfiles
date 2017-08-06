set -l dirs_to_source custom aliases
for dir in $dirs_to_source
    for file in "$OMF_CONFIG/$dir"/*
        source "$file"
        if test $OMF_DEBUG
            echo "[OMF Debug] Loaded $file"
        end
    end
end

set -l MACHINE_SCRIPT_PATH "$OMF_CONFIG"/machine/(hostname)
if test -d "$MACHINE_SCRIPT_PATH"
    for file in "$MACHINE_SCRIPT_PATH"/*.fish
        source "$file"
        if test $OMF_DEBUG
            echo "[OMF Debug] Loaded $file"
        end
    end
end

alias mdv="python2 $HOME/src/terminal_markdown_viewer/mdv.py"
alias f="fuck"
if type -q thefuck
    eval (thefuck --alias | tr '\n' ';')
end

set -x MANPATH "/usr/local/man:/usr/share/man"
