#! /bin/bash

# This script aim to create a persistent data volume in docker.

source ./config/config.properties

script="docker volume rm  $docker_volume_name"

# run
echo $script
eval $script
