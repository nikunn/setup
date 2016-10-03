#!/bin/bash

# save the currently installed applications list
ls /Applications/ > $HOME/Documents/Nolife/Save/applications.txt

# define the list of backup
FLASH_LIST="SANDO MISO CORSAIR"

# go through all potentially connected flash
for flash in $FLASH_LIST; do
  # define path to flash drive
  flash_path="/Volumes/$flash"

  # check which one is connected
  if [[ -n `ls $flash_path 2> /dev/null` ]]; then
    # a bit of log
    echo "$flash is connected. start synch..."

    # rsync Documents folder
    for folder in `ls -d */`; do
      # create folder if needed
      mkdir -p $flash_path/$folder/

      # rsync this folder
      rsync -av --delete ~/Documents/$folder/ $flash_path/$folder/
    done
  fi
done
