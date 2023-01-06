# start from base
FROM ubuntu:22.04
MAINTAINER KuhakuPixel <Nicholaspixels@gmail.com>

# copy all the files to the container
COPY . .

# run update
RUN apt-get update

# ==================== install deps ===================
RUN apt-get -y install python3
# https://ubuntu.com/tutorials/install-jre#2-installing-openjdk-jre
RUN apt-get -y install default-jre
# ====================================================
# run
# run the command
CMD ["python3", "./server/app.py"]
