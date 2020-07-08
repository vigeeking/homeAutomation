FROM ubuntu:latest
MAINTAINER pipeline Tim.strackbein@gmail.com

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y build-essential

