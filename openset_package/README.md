# OpenSet Docker Build

Builds OpenSet and makes a small-ish container using that build.

> :pushpin: Building OpenSet uses a multi-step Dockerfile, information about the other containers used to create this container can be found in the parent directory.

#### Make the package

```bash 
docker build --build-arg TARGET=release --build-arg BRANCH=logging_fix -t openset_x64_rel . --no-cache
```

> :pushpin: use `--no-cache` to pick up any `TARGET=` or `BRANCH=` changes.

#### Run the package locally

```bash
docker run -p 2020:2020 -e OS_HOST=<HOST IP> -e OS_PORT=2020 --rm=true -it openset_x64_rel
```

Run the package as a daemon

```bash
docker run -p 2020:2020 -e OS_HOST=<HOST IP> -e OS_PORT=2020 --rm=true -d openset_x64_rel
```

## Docker Hub

There is always and up-to-date release version of OpenSet in [Docker Hub](https://hub.docker.com/r/opset/openset_x64_rel/). 

##### to run from Docker Hub -


```bash
docker run -p 2020:2020 -e OS_HOST=<HOST IP> -e OS_PORT=2020 --rm=true -d opset/openset_x64_rel
```

##### to get the container id (I use the names) -
```bash
docker ps
```

##### to see what's happening inside (tailing forever) -
```bash
docker logs {{funny_name or container_id}} -f
```

##### to stop it -
```bash
docker stop {{funny_name or container_id}}
```

