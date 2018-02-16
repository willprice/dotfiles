if command_exists pyenv; and status --is-interactive
    source (pyenv init -|psub)
end
