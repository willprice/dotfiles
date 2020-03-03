function command_exists
    command -v $argv[1] 2>&2 > /dev/null
end

