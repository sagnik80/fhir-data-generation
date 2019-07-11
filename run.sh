#!/bin/bash
# build the docker image from the source code -> Dockerfile
docker build -t docker_sagnik .
# Get the current root dir to the variable loc
loc=$(pwd)
#Create the dir in docker for saving the files and returning back to your local dir
mkdir -p "$loc/<folder_name>/"
# Creating the container and mounting volume from source to destination and running the scripts using pipenv
docker run --rm --name syapse -v "$loc/<folder_name>/:/app/<folder_name>/" docker_sagnik pipenv run python main.py $*
