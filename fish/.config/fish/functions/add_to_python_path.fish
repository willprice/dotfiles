function add_to_python_path
    set -l path $argv[1]

    switch (echo $PYTHONPATH)
    case "*$path*"
        return
    case ''
        set -gx PYTHONPATH "$path"
    case '*'
        set -gx PYTHONPATH "$path:$PYTHONPATH"
    end
end
