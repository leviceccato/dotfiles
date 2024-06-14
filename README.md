# dotfiles

My personal dotfile repo, managed with GNU Stow.

## Requirements

- GNU Stow

## Usage

Clone this directory into `~`.

Copy any dotfiles or config from `~` into `~/dotfiles`, maintaining the structure.

Run Stow to create symlinks between the config in both directories. If you have existing files in your home directory
you will need to use the `adopt` flag. This will overwrite the contents of the files in your repo with the ones in
your home folder.

```sh
stow --adopt ~/dotfiles
```

To prevent Stow from symlinking files in this this repo add them to `.stow-local-ignore`.
