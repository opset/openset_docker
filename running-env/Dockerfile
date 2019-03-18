FROM        ubuntu:bionic
MAINTAINER  Seth Hamilton

# update and install dependencies
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install libstdc++6
RUN apt-get -y install rsyslog
RUN LD_LIBRARY_PATH=/usr/local/lib64/:$LD_LIBRARY_PATH
RUN mkdir /opt/openset
