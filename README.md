# cross_compilation_vscode_dev


This project provide a solution to create an isolated enviroment to make cross-compilation project by integrating docker container and vs code. So you have to prepare two things before usage:

1. Docker runtime environment for this project.
2. VS code and extension pack

Please refer to following link in "Installation" part to get start...
```
https://code.visualstudio.com/docs/remote/containers#_devcontainerjson-reference
```

In the beginning and end of development, you should create a persistent volume for the source code and built files.

- Make/Remove persistent volume
```
# create
bash script/volume/create_nfs_readonly_folder.sh
# remove
bash script/volume/remove_persistent_volume.sh
```

- Make/Remove readonly folder in your host to see source code and built files.(Optional)
```
# create
bash script/volume/create_nfs_readonly_folder.sh
# remove
bash script/volume/remove_nfs_readonly_folder.sh

```
