# Jupyter server

## To build and run:
- Step 1: list your required package in the src/requirements.txt file e.g.:
```txt
jupyter
```
- Step 2: build and run docker container
```sh
docker build -t jupyter-server .
docker run --rm -p 8888:8888 -v ./src:/src jupyter-server
```
In the terminal there should be a url you can click to access the notebook from a browser.

## To publish:
```sh
docker build -t jupyter-server .
docker tag jupyter-server john9francis/jupyter-server:latest
docker push john9francis/jupyter-server:latest
```

## To publish cross-arch
```sh
docker buildx build --platform linux/amd64,linux/arm64,linux/386 -t john9francis/jupyter-server:latest --push .
```
Arches pushed:
- ✅ linux/amd64
- ✅ linux/arm64
- ✅ linux/386

Arches not supported (yet):
- ❌ linux/arm/v7
- ❌ linux/arm/v6
- ❌ linux/ppc64le
- ❌ linux/s390x


## To get straight from docker hub
```sh
docker run --rm -p 8888:8888 -v ./src:/src john9francis/jupyter-server:latest
```

View the image on [docker hub](https://hub.docker.com/r/john9francis/jupyter-server)