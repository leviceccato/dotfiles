# dotfiles

My personal dotfile repo, managed with GNU Stow.

## Requirements

- GNU Stow

## Usage

1. Clone this directory into your home folder.
2. Copy any dotfiles or config from your home folder into the dotfiles folder, maintaining the structure.
3. Run `stow --adopt .` to create symlinks between the config in this repo and that which is in your home folder. The `--adopt` flag will allow you to symlink with existing files in your home folder and will overwrite the files in the repo with their contents.
