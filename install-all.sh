#!/usr/bin/env bash
# vim: set ft=sh:
target_directory="${1:-$PWD}"
cd $(dirname $(realpath $0))

EXCLUDED_PACKAGES_REGEX=".*\(system\|personal\|x230\).*"

for package in $(find . -mindepth 1 -maxdepth 1 -type d ! -regex "$EXCLUDED_PACKAGES_REGEX" ! -name '.*'); do
  stow --restow --target "$target_directory" "${package##./}"
done

echo "The following packages haven't been linked as you may or may not want them on all machines"
for unlinked_pacakge in $(find . -mindepth 1 -maxdepth 1 -type d -regex "$EXCLUDED_PACKAGES_REGEX"); do
  echo "* ${unlinked_pacakge##./}"
done

