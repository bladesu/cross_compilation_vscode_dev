FROM ubuntu:18.04

RUN apt-get update --fix-missing
# Basic tools
RUN apt-get install -y git
RUN apt-get install -y wget

# Building tool.
RUN apt-get install -y make

# Compiler for C language.
RUN apt-get install -y gcc

# library
RUN apt-get install -y libacl1-dev
RUN apt-get install -y libcap-dev
RUN apt-get install -y libselinux1-dev

# C language toolchain.
RUN apt-get install -y valgrind
RUN apt-get install -y cdecl
RUN apt-get install -y gdb
## gdb dashborad
RUN cd ~/ && wget -P ~ https://git.io/.gdbinit
