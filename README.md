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

## To get straight from docker hub
```sh
docker run --rm -p 8888:8888 -v ./src:/src john9francis/jupyter-server:latest
```
