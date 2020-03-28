function print_file_uni

    if count $argv > /dev/null
        ssh uni-desktop "bash -c \"lp -d 'Print_Release_B&W_PS' - \"" < $argv[1]
    else
        echo "No URL provided"
        echo "USAGE: print_uni <URL>"
        return 1
    end
end
