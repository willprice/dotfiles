alias pacman "sudo pacman"
alias psyu "pacman -Syu"

function p
    set has_options 0

    if [ (count $argv) -eq 0 ]
        sudo pacman -Syu
        return
    end

    for arg in $argv
        if echo $arg | grep -E '^-' 2>&1 > /dev/null
            set has_options 1
        end
    end

    if [ $has_options -eq 1 ]
        sudo pacman $argv
    else
        sudo pacman -S $argv
    end
end

alias yrt "yaourt -S --noconfirm"
