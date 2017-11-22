####
#### first step in our multi-step build
####

FROM        opset/openset_build_env:0.1.0 as build_env
MAINTAINER  Seth Hamilton

ARG TARGET
ARG BRANCH

COPY ./res/build.sh /opt/openset/bin/build

RUN /opt/openset/bin/build $TARGET $BRANCH

####
#### second step in our multi-step build
####

FROM        opset/openset_running_env:0.1.0
MAINTAINER  Seth Hamilton

EXPOSE 8080

COPY ./res/31-openset.conf /etc/rsyslog.d/31-openset.conf
COPY ./res/entrypoint_openset.sh /opt/openset/entrypoint_openset.sh
COPY --from=build_env /opt/openset/openset/cmake-build/openset /opt/openset/openset

RUN chmod +x /opt/openset/openset && chmod +x /opt/openset/entrypoint_openset.sh

ENTRYPOINT ./opt/openset/entrypoint_openset.sh
