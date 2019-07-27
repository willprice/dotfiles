# Dotfiles
A personal collection of dotfiles managed using [GNU Stow](https://www.gnu.org/software/stow/)

## Manual setup

* First set up submodules: `git submodule update --init --recursive`
* Link everything: `./install-all.sh`

## Explanation
The dotfiles are managed via `stow` where dotfiles are organised by tool.

* Install for the first time: `stow <FOLDER_NAME>`
* Update symlinks (if new files have been added: `stow -R <FOLDER_NAME>`)
* Remove folder: `stow -D <FOLDER_NAME>`
