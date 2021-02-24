#!/usr/bin/env bash
set -euo pipefail

docker run -it --rm \
    -v "$PWD/..:/home/user/.dotfiles" \
    --entrypoint /home/user/.dotfiles/.test/within-box-run-tests.sh \
    willprice/dotfiles-test-box
