#!/usr/bin/env bash

declare -a ides=(code-oss pycharm webstorm)

dt=$(date +%Y%m%d)

for ide in "${ides[@]}"
do
  image_name="kabashan/cws-workspace:$ide-$dt"
  echo "start building a image $image_name"
  docker build -t "$image_name" . --build-arg "IDE=$ide"
  docker push "$image_name"
  docker rmi "$image_name"
  echo "end building"
done
