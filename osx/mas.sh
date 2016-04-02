#!/bin/sh
#
# Mac App Store
#
# This installs the apps listed on the Masfile
# using mas.

# Check for Mas
if [ -x $(which mas) ] && [ -r Masfile ]
then
  echo "  Installing Mac App Store apps for you."

  # Sanity check
  if test "$(uname)" = "Darwin"
  then
    while read line; do
    	APP_ID=$(echo $line | egrep -o "^mas\s+'(\d+)'" | egrep -o "\d+")
    	if [[ -n $APP_ID ]]
    	then
	    	mas install $APP_ID
	    fi
    done < Masfile
  fi

fi

exit 0
