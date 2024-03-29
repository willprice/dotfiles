if [ ! -z $PS1 ] && command -v fish >/dev/null 2>&1; then
    exec fish
fi

if [[ ! -z $PS1 ]]; then
    BASHRC_D="$HOME/.bashrc.d"

    for function_definition in "$BASHRC_D"/functions/*.sh; do
        source "$function_definition"
    done

    for config in "${BASHRC_D}"/*; do
        [[ -f "$config" ]] && source "$config"
    done

    hostname="$(hostname)"
    for host_config in "$BASHRC_D"/hosts/*.sh; do
        host_pattern="$(basename "$host_config" .sh)"
        if [[ "$hostname" = *$host_pattern* ]]; then
            source "$host_config" 
        fi
    done
fi

# shut up pygame
export PYGAME_HIDE_SUPPORT_PROMPT=hide
# Try to get rid of pygame Alsa issues
# see:
# https://raspberrypi.stackexchange.com/questions/83254/pygame-and-alsa-lib-error
export SDL_AUDIODRIVER=dsp

# None of the termcap databases include foot. It is an xterm compatible
# terminal, so we can validly change TERM to be xterm-256color
[ "$TERM" = foot ] && export TERM=xterm-256color


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
