#! /bin/bash

source ./config/config.properties

# umount nfs readonly folder and delete it.
if [ -d ${host_readonly_gate_folder} ]
then
  echo "umount nfs readonly folder and delete it"
  echo "proccesing:$host_readonly_gate_folder"
  sudo umount $host_readonly_gate_folder
  rmdir  ${host_readonly_gate_folder}
  echo "done...\n\n"
fi



script="docker stop $host_readonly_gate_container"
echo $script
eval $script

script="docker rm $host_readonly_gate_container"
echo $script
eval $script
