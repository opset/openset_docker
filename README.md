# OpenSet Docker

There are three subfolders that are used to make three different Docker containers.

The latest versions of these containers can be found on [Docker Hub](https://hub.docker.com/u/opset/dashboard/).

#### Dockerfiles

- `/build-env` contains a Dockerfile that creates a build environment for OpenSet on Ubuntu 16.04 ([openset_build_env](https://hub.docker.com/r/opset/openset_build_env/) on Docker Hub)
- `/running-env` contains a Dockerfile that creates a run-time environment for OpenSet on Ubuntu 16.04. It is nearly identical to the `build-env` but doesn't include the build tools. ([openset_running_env](https://hub.docker.com/r/opset/openset_running_env/) on Docker Hub)
- `/openset_package` contains a multi-step docker file that uses the two containers above to produce a small final container. The container is built off the `running-env` container and adds the `openset` executable and an `entry_openset.sh` script which is used to reset the `rsyslog` daemon and start OpenSet.



