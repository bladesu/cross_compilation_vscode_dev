From ubuntu:14.04

RUN apt-get update
RUN apt-get install -y \
     git gnupg flex bison gperf build-essential \
     zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
     lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev ccache \
     libgl1-mesa-dev libxml2-utils xsltproc unzip realpath
RUN apt-get install -y u-boot-tools

# for uboot
RUN apt-get -y --fix-missing install \
      bsdtar mtools u-boot-tools pv bc \
      gcc automake make binfmt-support flex \
      lib32z1 lib32z1-dev qemu-user-static bison \
      dosfstools libncurses5-dev debootstrap \
      swig libpython2.7-dev libssl-dev python-minimal dos2unix
# add user and its home dir
ARG workspace
ARG persist_data
ENV workspace=${workspace}
ENV persist_data=${persist_data}
RUN mkdir ${workspace}
WORKDIR ${workspace}
COPY ./script_to_container ${workspace}/
RUN mkdir ${persist_data}
