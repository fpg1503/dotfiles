#!/bin/sh
#
# Karabiner Elements
#
# This installs sets up the Karabiner Elements configuration


# Check for Karabiner config
FILE=~/.config/karabiner/karabiner.json
if ! [[ -L "$FILE" ]]
then
  echo "  Symlinking karabiner config for you."

  rm $FILE
  ln -s karabiner.json $FILE

fi

exit 0
