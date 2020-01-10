#!/bin/bash

source config/config.properties

# process
cd $build_project 
echo "Going to process $build_worker in $(pwd)" 
./$build_worker
cd $workspace
echo "Process finished"
