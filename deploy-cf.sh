#!/bin/sh

# This script assumes your Cloud Foundry platform allows for pushing
# Dockerfiles.
#
# This script also assumes you have already logged into docker hub via
# `docker login`.
# It performs the following steps:
# - Builds the image
# - Pushes the image to docker hub
# - Deploys the image from docker hub to Cloud Foundry.
# - Calls the parser script to push data to the deployed app.
#
# The script needs two arguments:
# 1) The Repo/Image name combination  (e.g. jcscottiii/ssperegs)
# 2) The app name
IMAGE=$1
APP_NAME=$2
docker build -f Dockerfile.cf -t $IMAGE
docker push $IMAGE
cf push $APP_NAME -o $IMAGE
docker run -it -v $(pwd)/eregs_extensions:/app/extensions -v $(pwd)/input:/app/input --entrypoint="/app/extensions/docker-start-cf.sh" eregs/parser
cf app $APP_NAME
