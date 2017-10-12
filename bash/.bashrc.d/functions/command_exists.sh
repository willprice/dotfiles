function command_exists {
    local cmd="$1"; shift
    command -v "$cmd" >/dev/null 2>&1
}
