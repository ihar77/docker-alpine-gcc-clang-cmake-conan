#!/bin/bash

cwd=$(pwd)

docker build \
    -t ihar77/base-docker-alpine-gcc-clang-cmake-conan \
    ./docker_base_builder/

docker build \
    -t ihar77/project-docker-alpine-gcc-clang-cmake-conan \
    .
