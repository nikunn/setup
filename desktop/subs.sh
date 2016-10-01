#!/bin/bash
trap "exit 1" TERM
export TOP_PID=$$

# function to exit script with error message
ERROR_EXIT()
{
  # get the error message
  local MESSAGE=$1

  # print message if any
  if [[ -n $MESSAGE ]]; then
    printf "$SCRIPT_NAME ERROR: %s\n" "$MESSAGE"
  fi

  # exit with error code
  kill -s TERM $TOP_PID
}

