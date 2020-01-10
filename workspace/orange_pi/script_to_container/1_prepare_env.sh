#/bin/bash

source ./config/config.properties

# Clone this repository from official source
# 1. build tool.
if [ -d ${build_project} ]; then
  cd ${build_project}
  git pull
  cd ..
else
  if [ ! -d ${persist_data}/${build_project} ]; then
    mkdir ${persist_data}/${build_project}
  fi
  ln -s  ${persist_data}/${build_project} ${build_project}
  if [ "$(ls ${build_project})" ]; then
     cd ${build_project} &&  git pull && cd ..
  else
    git clone ${build_git}
  fi
fi

# 2. The BSP kernel code for Orange Pi H6, the version is linux4.9.

if [ -d $target_name ]; then
  echo "Target exist:$target_name"
else
  if [ ! -d ${persist_data}/${target_name} ]; then
    mkdir ${persist_data}/${target_name}
  fi
  ln -s ${persist_data}/${target_name} ${target_name}
fi

