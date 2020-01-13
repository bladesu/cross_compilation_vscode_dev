#!/bin/bash

source config/config.properties

# constants
target_name=$target_name

# fix script if patch existed.
if [ -d "./fix_patch/$target_name/" ]; then
  echo "fix_patch existed."
  script="rsync -avP ./fix_patch/$target_name/* $target_name/"
  echo $script
  eval $script
fi

cd $target_name
bash ./build.sh
echo "Process finished"

