This project is an encapsulation of build system of orange pi board. It provides Dockfile, docker-compose yaml file and some scripts to create a dockerized environment integrated with VS code to build orange pi smoothly and save your time.

Before you run the script, please make sure you have a properly installed docker environment in your os. And all the script is written in shell script. I am sorry about the user who have shell runtime environment.

Before executing the scripts, you could read following note or skip to run script:

1. To build the system for you target board, you should check the target_name in the config/propertis. Please refer to the officialy github: https://github.com/orangepi-xunlong/OrangePi_BuildUsing. See "Orange Pi Build System" paragraph in README.md. Our defined target_name is just the new created folder name. For example, in the document you can see:
```
For OrangePi OnePlus/Lite2/3, the folder is OrangePiH6_Linux4.9 or OrangePiH6_mainline.
```

2. You can easier to control the official released tool by change config file (script_to_container/config/config.properties) If you want to create BSP with linux 4.9 version for OrangePi OnePlus, fill the target name with OrangePiH6_Linux4.9 which is the same as the directory to be create.

Run scripts:

1. To run VS code, on the current folder run:

```
# The folder is
# workspace/orange_pi
code .
```
2. VS code will find container configuration file inside, choose "Reopen in container".

3. After VS code had prepared whole environment, go to container terminal, you will found following file and folder.
```
root@10104256cf39:/develop# ls
1_prepare_env.sh
2_pull_build_projects.sh
3_build_current_bsp.sh
config
fix_patch
```


4. Run "1_prepare_env.sh". Pulling official github project.
```
bash 1_prepare_env.sh
```

5. Run "2_pull_build_projects.sh", an interactive program will show up. Make you choice for the BSP, and it will pull more necessary github projects following official instruction. You will see all these projects come to the new folder created on first layer of this project.
```
bash 2_pull_build_projects.sh
```

6. Run 3_build_current_bsp.sh, an interactive program will show up. choose what you want to build. Some bug of the official building script will be fixed in this steps.
```
bash 3_build_current_bsp.sh
```
