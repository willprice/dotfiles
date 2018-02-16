function ssh-print
    if test ! -n "$SSH_PRINT_HOST"
        set SSH_PRINT_HOST uni-desktop
    end
    set -l file $argv[1]
    cat "$file" | ssh "$SSH_PRINT_HOST" 'lp -'
end
