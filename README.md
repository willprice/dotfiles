# Dotfiles
A personal collection of dotfiles managed using [GNU Stow]k


## Explanation
The dotfiles are managed via `stow` where dotfiles are organised by tool.

* Install for the first time: `stow <FOLDER_NAME>`
* Update symlinks (if new files have been added: `stow -R <FOLDER_NAME>`)
* Remove folder: `stow -D <FOLDER_NAME>`
