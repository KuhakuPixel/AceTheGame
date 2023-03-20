FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

# install cmake and all tools
RUN apt-get -y update
RUN apt-get -y install wget
RUN apt-get -y install build-essential
RUN apt-get -y install cmake
RUN apt-get -y install unzip
RUN apt-get -y install git

# install ndk
RUN wget https://dl.google.com/android/repository/android-ndk-r25c-linux.zip -O ndk.zip
RUN unzip ndk.zip -d ndk
RUN rm ndk.zip

# copy sources code
COPY ./ACE/ ./ACE
