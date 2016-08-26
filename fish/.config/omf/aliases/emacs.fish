alias ect "emacsclient --tty"
function ecg
  eval emacsclient -c $argv &
end
