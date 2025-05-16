#!/bin/sh

podman volume create jupyterlab

podman run --rm -p 8888:8888 -p 6006:6006 -v "jupyterlab:/opt/app-root/src/persistent:Z" my-jupyter-image jupyter lab --no-browser --port=8888 --ip=0.0.0.0
