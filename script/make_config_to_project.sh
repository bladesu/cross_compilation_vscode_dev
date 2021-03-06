#! /bin/bash

source ./config/config.properties
target=${which_workspace_you_choose}/.env


function create_target() {
  echo "" >  $target
}
function append_to_target() {
  echo "$1=${!1}" >> $target;
}


# Make .env file to specific target project.
create_target
append_to_target "persist_data"
append_to_target "docker_volume_name"
