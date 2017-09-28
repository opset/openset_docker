FROM        ubuntu:xenial
MAINTAINER  Seth Hamilton

# update and install dependencies
RUN         apt-get update \
                && apt-get install -y software-properties-common wget \
                && add-apt-repository -y ppa:ubuntu-toolchain-r/test \
                && apt-get update \
                && apt-get install -y make git curl nano sudo \
                && apt-get install -y gcc-7 g++-7 \
                && CMAKE_URL="https://cmake.org/files/v3.8/cmake-3.8.0-Linux-x86_64.tar.gz" \
                && mkdir /opt/build \
                && mkdir /opt/build/bin \
                && mkdir /opt/build/cmake \
                && wget --no-check-certificate --quiet -O - ${CMAKE_URL} |  \
                        tar --strip-components=1 -xz -C /opt/build/cmake

ENV PATH="/opt/build/bin:/opt/build/cmake/bin:${PATH}"