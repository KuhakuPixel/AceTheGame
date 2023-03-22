FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

# install cmake and all tools
RUN apt-get -y update
RUN apt-get -y install wget
RUN apt-get -y install build-essential
RUN apt-get -y install cmake
RUN apt-get -y install unzip
RUN apt-get -y install git
RUN apt-get -y install python3

# install ndk
RUN wget https://dl.google.com/android/repository/android-ndk-r25c-linux.zip -O ndk.zip
RUN unzip ndk.zip -d ndk
RUN rm ndk.zip

# copy sources code
COPY ./ACE ./ACE
COPY ./util.py ./util.py
COPY ./ACE_release.py ./ACE_release.py
COPY ./make_release.py ./make_release.py

COPY ./Modder ./Modder

# generate build
# TODO: have an automated way to determine toolchain path?
RUN python3 ./make_release.py /ndk/android-ndk-r25c/build/cmake/android.toolchain.cmake
