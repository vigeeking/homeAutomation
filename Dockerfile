FROM ubuntu:latest
LABEL name="pipeline" 
LABEL maintainer="Tim.strackbein@gmail.com"
LABEL description="This container will be the basis of my personal pipeline and is a work in progress"
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y build-essential

