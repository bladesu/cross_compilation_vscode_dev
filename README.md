# cross_compilation_vscode_dev


This project provide a solution to create an isolated enviroment to make cross-compilation project by integrating docker container and vs code. So you have to prepare two things before usage:

1. Docker runtime environment and docker compose.
2. VS code and extension pack

Please refer to following link in "Installation" part to get start: https://code.visualstudio.com/docs/remote/containers#_devcontainerjson-reference

## Volume setup

In the beginning and end of development, you should manage a persistent volume for the source code and built files. This whole project have beed designed based on an isolated storage. The source code or built files probably be different within different filesystem.

You could choose other filesystem provided by docker distribution, and options depends on your host os. Here we use default one, you can change it by modify config/config.properties: "docker_volume_driver". You can manage by applying script in following script:
- Make or remove persistent volume
```
# create
bash script/create_nfs_readonly_folder.sh
# remove
bash script/remove_persistent_volume.sh
```

After persistent volume made, you can see current docker volume in you local host and control it.

- See current docker volume:
```
docker volume ls
```
- Remove assigned volume by docker command:
```
docker volume rm VOLUME_NAME
```
- (Optional) Make/Remove readonly folder in your host to see source code and built files. You can view the content by nfs mounted folder.
```
# create
bash script/create_nfs_readonly_folder.sh
# remove
bash script/remove_nfs_readonly_folder.sh
```

## Setup configuration

Before starting the specific project for our pre-defined target in our workspace, we have to make and send config file to assigned workspace. Modify config/config.properties: "which_workspace_you_choose" to the project in workspace, and run make config file(.env file for docker-compose) to project folder within workspace. If you want to start new target sub-project in workspace, you have to create new folder in workspace and also make this configuration setup.
```
# 1. edit config/config.properties

# 2. create config to the assigned project in workspace
bash script/make_config_to_project.sh
```

## Start VS Code in assigned sub-project

After make_config_to_project.sh, you can run "code ." in the sub-folder in workspace. After that, vs code can start the container and development UI.


