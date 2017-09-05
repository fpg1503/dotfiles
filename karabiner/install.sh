#!/bin/sh
#
# Karabiner Elements
#
# This installs sets up the Karabiner Elements configuration


# Check for Karabiner config
TARGET=~/.config/karabiner/karabiner.json
SOURCE=~/.dotfiles/karabiner/karabiner.json
if ! [[ -L "$TARGET" ]]
then
  echo "  Symlinking karabiner config for you."

  rm -f $TARGET
  ln -s $SOURCE $TARGET

fi

exit 0
