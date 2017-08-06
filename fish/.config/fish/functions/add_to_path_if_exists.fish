function add_to_path_if_exists
    set -l target "$argv[1]"
    if test -d "$target"
        set -x PATH "$target" $PATH
    end
end

