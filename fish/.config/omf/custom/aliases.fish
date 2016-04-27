# Source code
alias g git

# Editors
alias ect "emacsclient --tty"
function ecg 
  eval emacsclient -c $argv &
end

# Tools
alias t "todo.sh"

# General
alias pbcopy 'xclip -selection clipboard'
alias pbpaste 'xclip -selection clipboard -o'

# Arch specific
alias pacman "sudo pacman"
alias p "sudo pacman"
alias psyu "sudo pacman -Syu"
