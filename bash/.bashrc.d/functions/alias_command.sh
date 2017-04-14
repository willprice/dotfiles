function alias_command {
    local cmd="$1"; shift
    local replacement="$1"; shift

    if command -v "$cmd" >/dev/null 2>&1; then
        alias "${cmd}=${replacement}";
    fi
}
