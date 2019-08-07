#!/usr/bin/env bash
set -e

usage() {
    echo "./install.sh <TARGET PATH> <PACKAGE NAME>"
    echo "./install.sh $HOME vim"
}

command -v stow 2>&1 >/dev/null || { echo "Stow is not installed"; exit 2; }
[[ $# -ne 2 ]] && { usage; exit 1; }

target_directory="$1"; shift
package="$1"; shift

cd $(dirname $(readlink -f $0))
if [[ -f "$package/dotfile-pre-symlink.sh" ]]; then
    echo "Running pre-symlink script for $package"
    (cd "$package"; bash dotfile-pre-symlink.sh)
fi

stow \
    --restow \
    --ignore "dotfile-post-symlink.sh" \
    --ignore "dotfile-pre-symlink.sh" \
    --target "$target_directory" \
    "$package"

if [[ -f "$package/dotfile-post-symlink.sh" ]]; then
    echo "Running post-symlink script for $package"
    (cd "$package"; bash dotfile-post-symlink.sh)
fi
# vim: set ft=sh:
