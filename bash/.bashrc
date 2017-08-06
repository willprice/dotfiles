#!/usr/bin/env bash

BASHRC_D="$HOME/.bashrc.d"


for function_definition in "$BASHRC_D"/functions/*.sh; do
    source "$function_definition"
done

for config in "${BASHRC_D}"/*; do
    [[ -f "$config" ]] && source "$config"
done

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
