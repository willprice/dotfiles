if test (uname) = 'linux'; and which xclip
    function pbcopy
        xclip -i -sel c -f |xclip -i -sel p
    end

    function pbpaste
          xclip -selection clipboard -o
    end
end
