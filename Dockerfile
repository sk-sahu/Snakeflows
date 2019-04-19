FROM ubuntu:16.04
MAINTAINER Sangram Keshari Sahu <sangramsahu15@gmail.com>

RUN apt-get update

CMD ["eccho", "Hi there! Testing docker image."]
