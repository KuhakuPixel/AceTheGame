# start from base
FROM ubuntu:22.04
MAINTAINER KuhakuPixel <Nicholaspixels@gmail.com>

# copy all the files to the container
COPY . .

# run update
RUN apt-get update

# ==================== install deps ===================

# install deps with cache, cause its gonna get annoying
# if you have a change in your source file and have to 
# install all the packages all over again
# https://stackoverflow.com/questions/66808788/docker-can-you-cache-apt-get-package-installs
# https://github.com/moby/buildkit/blob/master/frontend/dockerfile/docs/reference.md#run---mounttypecache
RUN --mount=target=/var/lib/apt/lists,type=cache,sharing=locked \
    --mount=target=/var/cache/apt,type=cache,sharing=locked \
    rm -f /etc/apt/apt.conf.d/docker-clean && \
    apt-get update &&\
    apt-get -y --no-install-recommends install \
    python3 \
    # https://askubuntu.com/a/1139285/1348774
    openjdk-8-jdk \
    vim \
    locales 

# set java tools env variable to
# encode by utf8
ENV JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8
# ====================================================
# run gradlew
#WORKDIR /ApkTool
#RUN ./gradlew

# run the command
CMD /runner.sh
