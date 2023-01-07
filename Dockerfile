# start from base
FROM openjdk:11 
MAINTAINER KuhakuPixel <Nicholaspixels@gmail.com>

# copy all the files to the container
COPY . .
# compile main
RUN javac ./server/Main.java

CMD ["java","./server/Main"]
