# start from base
FROM openjdk:11 
MAINTAINER KuhakuPixel <Nicholaspixels@gmail.com>

# copy all the files to the container
COPY . .
# build ApkTool
WORKDIR /ApkTool/
RUN ./gradlew

# run server
WORKDIR /server/
CMD ["java","./Main.java"]
