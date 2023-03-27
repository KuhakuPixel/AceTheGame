FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

# ============ install cmake and all tools ==============
RUN apt-get -y update
RUN apt-get -y install wget
RUN apt-get -y install build-essential
RUN apt-get -y install cmake
RUN apt-get -y install unzip
RUN apt-get -y install git
RUN apt-get -y install python3

# =========== for Modder project =====================
RUN apt-get -y install apktool
RUN apt-get -y install openjdk-8-jdk

# https://stackoverflow.com/questions/34556884/how-to-install-android-sdk-on-ubuntu
RUN apt-get -y install android-sdk
# for accepting the licenses
# https://stackoverflow.com/a/72443530/14073678
RUN apt-get -y install sdkmanager
# (ping command for unit test)
RUN apt-get -y install iputils-ping
#
# ====== Set env needed by gradle ========
ENV ANDROID_HOME=/usr/lib/android-sdk
# =======================================
# =======================================================

# install ndk
# TODO: maybe use sdkmanager?
RUN wget https://dl.google.com/android/repository/android-ndk-r25c-linux.zip -O ndk.zip
RUN unzip ndk.zip -d ndk
RUN rm ndk.zip

# ========== copy sources code =================
COPY . .
#================================================
# accept all licenses of android sdk 
RUN yes | sdkmanager --licenses
# generate build
# TODO: have an automated way to determine toolchain path?
RUN python3 ./make_release.py /ndk/android-ndk-r25c/build/cmake/android.toolchain.cmake

