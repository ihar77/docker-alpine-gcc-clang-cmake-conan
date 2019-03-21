#!/bin/bash

cwd=$(pwd)

docker stop project-docker-alpine-gcc-clang-cmake-conan
docker rm project-docker-alpine-gcc-clang-cmake-conan
docker run \
	-dt \
    --entrypoint="" \
	--name project-docker-alpine-gcc-clang-cmake-conan \
	-p 2000:2000 \
	-v ${cwd}:home/project \
	--privileged \
	ihar77/project-docker-alpine-gcc-clang-cmake-conan \
    "${@}" 

