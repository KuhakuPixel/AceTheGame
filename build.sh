#!/bin/bash
# enable build kit so  we can use --mount
# option to enable apt-get caching
# https://docs.docker.com/build/buildkit/#getting-started
DOCKER_BUILDKIT=1 docker build -t apktoolserv .
