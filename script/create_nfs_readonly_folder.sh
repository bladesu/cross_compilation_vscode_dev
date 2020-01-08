#! /bin/bash

source ./config/config.properties

# contants
shared=${nfs_container_folder}

# run
script="docker run -d --privileged \
--restart=always \
--name ${host_readonly_gate_container} \
-v ${docker_volume_name}:${shared} \
-e NFS_EXPORT_DIR_1=${shared} \
-e NFS_EXPORT_DOMAIN_1=\* \
-e NFS_EXPORT_OPTIONS_1=ro,insecure,no_subtree_check,no_root_squash,fsid=1 \
-p 111:111 -p 111:111/udp \
-p 2049:2049 -p 2049:2049/udp \
-p 32765:32765 -p 32765:32765/udp \
-p 32766:32766 -p 32766:32766/udp \
-p 32767:32767 -p 32767:32767/udp \
fuzzle/docker-nfs-server:latest"

echo $script
eval $script

if [ ! -d ${host_readonly_gate_folder} ]
then
  mkdir -p ${host_readonly_gate_folder}
fi

# It needs few seconds to wait the nfs service up.
sleep 3s

script="sudo mount  -v -t nfs -o rw,nfsvers=3,nolock,proto=udp,port=2049 127.0.0.1:${shared} ${host_readonly_gate_folder}"
echo $script
eval $script

