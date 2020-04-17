
### ABOUT this sub-project.
This project is an encapsulation of c compilation source code in linux docker container.  It provides Dockfile, docker-compose yaml file to create a dockerized environment integrated with VS code.

### Run the code.
In current folder, run "code .".

### Workspace
In our running container, you would find three special folder as three roles.

|folder name|discription|
|-|-|
|/persistant_data|Where the storage is connected to the persistent docker volume we had created. A good way to use this folder is make soft link to this storage.
|/develop|It is just belong to writable layer of this container. The things within the folder exists until the container is removed. This folder also contains all the files copied from "contents-to-loaded-in-container". You can put the files which you want to transfer to container before starting container, it will make transferring automatically.|
|/workspace|Where the volume shared with the current folder. Also you can edit and modify the files outside the container.|
