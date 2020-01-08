#! /bin/bash

# This script aim to create a persistent data volume in docker.

source ./config/config.properties

script="docker volume create --name $docker_volume_name"

if [ -z $docker_volume_driver ]
then
  script="${script} --driver local "
else
  script="${script} --driver $docker_volume_driver "
fi

# run
echo $script
eval $script
