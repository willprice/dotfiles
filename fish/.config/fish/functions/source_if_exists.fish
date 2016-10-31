function source_if_exists
    set -l target "$argv[1]"
    if test -f "$target"
        . "$target"
    end
end
