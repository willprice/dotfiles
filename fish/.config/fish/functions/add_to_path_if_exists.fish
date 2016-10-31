function add_to_path_if_exists
    set -l target "$argv[1]"
    if test ! -d "$target"
        return
    end
    switch "$PATH"
    case "*$target*"
    case '*'
        set -x PATH "$target" $PATH
    end
end
