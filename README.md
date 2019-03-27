# docker-linux-cpp

[![Build Status](https://travis-ci.org/ihar77/docker-alpine-gcc-clang-cmake-conan.svg?branch=master)](https://travis-ci.org/ihar77/docker-alpine-gcc-clang-cmake-conan)

A basic docker image for C++ developers, featuring g++ (from 7.x up to 8.x) and clang++ (from 4 to 7), CMake, Conan. The default compiler is g++ 7, but you're free to modify the Dockerfile and set your own; as example, if you want to set g++ 4.9 as the default compiler, just write the following Dockerfile and build a new image:
The project was insired by madduci/docker-linux-cpp (https://github.com/madduci/docker-linux-cpp), but based on alpine 18.04 

As default working directory, `/project` is being used, but feel free to change it.

## Requirements

* Docker (possibly the latest version, 17.06+)

## Build/Run instructions

You can just type in your terminal:

`docker pull ihar77/base-docker-alpine-gcc-clang-cmake-conan`
or
`docker pull ihar77/project-docker-alpine-gcc-clang-cmake-conan`

to use my docker image or, in case of adjustments to the `Dockerfile`, just type:

`docker run --rm -it -v /your/folder:/project ihar77/project-docker-alpine-gcc-clang-cmake-conan my_file.cpp` 
