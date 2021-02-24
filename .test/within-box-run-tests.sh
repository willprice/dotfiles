#!/usr/bin/env bash
set -euo pipefail
/bin/rm -rf ~/.bash*
cd /home/user/.dotfiles
./install-all.sh
