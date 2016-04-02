# fpg1503 does dotfiles

Your dotfiles are how you personalize your system. These are mine.

Based on [holman/dotfiles](https://github.com/holman/dotfiles.git). This repo was originally a fork but since there was no intent of merging it back I've detached it.


## Components

There's a few special files in the hierarchy.


- **Brewfile**: This is a list of [formulae](http://brew.sh) and [casks](http://caskroom.io). You might want to edit this file before running any initial setup.
- **Masfile**: This is a list of Mac App Store App IDs. I use it to install the apps I've purchased through MAS.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
  
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Install

Run this:

```sh
git clone https://github.com/fpg1503/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

