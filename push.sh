#!/bin/bash
VERSION=$1
[ -z ${VERSION} ] && exit 1
TAG="tkikuchi/ionic-firebase-pipeline:${VERSION}"
docker build --tag ${TAG} .
docker login
docker push ${TAG}
