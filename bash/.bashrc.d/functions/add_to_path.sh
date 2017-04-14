function add_to_path {
    local dir="$1"; shift
    _dir_in_path "$dir" && return
    if [[ -d "$dir" ]]; then
        export PATH="$dir:$PATH"
    fi
}

function _dir_in_path {
    [[ "$PATH" =~ "$dir" ]]
}

