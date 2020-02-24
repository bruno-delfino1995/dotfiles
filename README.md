# .dotfiles

Inspired by some of the most awesome repositories for dotfiles, I've created this one to help me with my helpful configurations and scripts

## Install

Run this:

```bash
cd ~
git clone <repository> .dotfiles
cd ~/.dotfiles
# copy your base16 template to colorschemes
./install <colorcheme-filename>
```

This will symlink the appropriate files to `.dfiles`.

## Uninstall

In case you're tired of the current config:

```sh
cd ~/.dfiles
./uninstall
```
