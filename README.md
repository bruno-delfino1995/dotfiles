# .dotfiles

Inspired by some of the most awesome repositories for dotfiles, I've created this
one to help me with my helpful configurations and scripts

## Special files

There's some special files in the hierarchy.

- **root/**: Anything insided that will be symlinked to the respective path in
  your filesystem
- **home/**: Here's the fun, the files inside will be treated by their extensions and
  symlinked in the right place. The special extension will be removed and the file
  gets a link to the normal version.
- **\*.path**: Anything ending in `.path` will be in `$BIN_FOLDER` and
  made available everywhere by your `$PATH`.
- **topic/\*.alias**: Any files ending in `.alias` get loaded into your environment
  after placed under `$ALIAS_FOLDER`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Install

Run this:

```sh
cd ~
git clone <repository> .dotfiles
cd ~/.dotfiles
script/install
```

This will symlink the appropriate files in `.dotfiles`.
