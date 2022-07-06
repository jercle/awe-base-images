#!/bin/bash

version=0.0.6
repository=jercle

declare -a imageNames

for dir in ./linux/*/; do
  dir=${dir%*/}
  imageNames=("${imageNames[@]}" "${dir##*/}")
done

printHelp() {
  echo "Usage: ./buildall.sh build|push|clean|help"
}

dockerPrune() {
  echo "Pruning docker images and containers"
  docker container prune -f
  docker image prune -a -f
}

buildImages() {
  for imageName in "${imageNames[@]}"; do
    echo "Building $repository/$imageName\nTags: latest $version"
    docker build -f ./linux/$imageName/Dockerfile -t $repository/$imageName:latest -t $repository/$imageName:$version --no-cache .
  done
  echo "Done!"
}

pushImages() {
  for imageName in "${imageNames[@]}"; do
    echo "Pushing $repository/$imageName:latest ..."
    docker push $repository/$imageName:latest
    echo "Pushing $repository/$imageName:$version ..."
    docker push $repository/$imageName:$version
  done

  echo "Done!"
}

if [ "$1" == "build" ]; then
  buildImages
elif [ "$1" == "push" ]; then
  pushImages
elif [ "$1" == "prune" ]; then
  dockerPrune
else
  printHelp
fi
