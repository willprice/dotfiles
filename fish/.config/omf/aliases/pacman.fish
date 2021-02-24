function pacman
    sudo pacman --color=auto $argv
end

function p
    set has_options 0
    set flags "--color=auto"

    if [ (count $argv) -eq 0 ]
        sudo pacman $flags -Syu
        return
    end

    for arg in $argv
        if echo $arg | grep -E '^-' 2>&1 > /dev/null
            set has_options 1
        end
    end

    if [ $has_options -eq 1 ]
        sudo pacman $flags $argv
    else
        sudo pacman $flags -S $argv
    end
end

alias yrt "yaourt -S --noconfirm"
