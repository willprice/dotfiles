#!/usr/bin/env bash

BASHRC_D="$HOME/.bashrc.d"


for function_definition in "$BASHRC_D"/functions/*.sh; do
    source "$function_definition"
done

for config in "${BASHRC_D}"/*; do
    [[ -f "$config" ]] && source "$config"
done

hostname="$(hostname --short)"
for host_config in "$BASHRC_D"/hosts/*.sh; do
    host_pattern="$(basename "$host_config" .sh)"
    echo "Checking host pattern $host_pattern"
    case "$hostname" in
        $host_pattern*) 
            echo "Matched"
            source "$host_config" 
        ;;
    esac
done
