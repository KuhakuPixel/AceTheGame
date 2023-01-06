# start from base
FROM ubuntu:22.04
MAINTAINER KuhakuPixel <Nicholaspixels@gmail.com>

# copy all the files to the container
COPY . .

# run update
RUN apt-get update

# ==================== install deps ===================
RUN apt-get -y install python3
# https://askubuntu.com/a/1139285/1348774
RUN apt-get -y install openjdk-8-jdk
# ====================================================
# run
# run the command
CMD ["python3", "./server/app.py"]
