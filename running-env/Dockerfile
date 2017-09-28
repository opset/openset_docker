FROM        ubuntu:xenial
MAINTAINER  Seth Hamilton

# update and install dependencies
RUN     apt-get update\
        && apt-get install -y software-properties-common \
        && add-apt-repository -y ppa:ubuntu-toolchain-r/test \
        && apt-get update \
        && apt-get upgrade \
        && apt-get -y install libstdc++6 \
        && apt-get -y install rsyslog \
        && LD_LIBRARY_PATH=/usr/local/lib64/:$LD_LIBRARY_PATH \
        && mkdir /opt/openset
