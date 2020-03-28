function print_uni

    if count $argv > /dev/null
        ssh uni-desktop "bash -c \"lp -d 'Print_Release_B&W_PS' <(wget -U Mozilla/5.0 -O - '$argv[1]')\""
    else
        echo "No URL provided"
        echo "USAGE: print_uni <URL>"
        return 1
    end
end
