function source_if_exists {
    local script="$1"; shift
    [[ -f "$script" ]] && source "$script"
}
