#!/usr/bin/env bash
set -e

usage() {
    echo "./install.sh <TARGET PATH> <PACKAGE NAME>"
    echo "./install.sh $HOME vim"
}

which stow || { echo "Stow is not installed"; exit 2; }
[[ $# -ne 2 ]] && { usage; exit 1; }

target_directory="$1"; shift
package="$1"; shift

cd $(dirname $(readlink -f $0))
stow --restow --target "$target_directory" "$package"

# vim: set ft=sh:
