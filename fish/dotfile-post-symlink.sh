#!/usr/bin/env bash
for pip_exe in pip pip2; do
    if command -v "$pip_exe" >/dev/null 2>&1; then
        "$pip_exe" install --user virtualfish
    fi
done
fish -c 'omf install'
fish -c 'omf update'
