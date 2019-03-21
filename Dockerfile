FROM ihar77/base-docker-alpine-gcc-clang-cmake-conan 

LABEL maintainer="ihar@ukr.net"

RUN   conan install boost/1.69.0@conan/stable

#ENV CC clang
#ENV CXX clang++

USER develop
VOLUME "/home/project"
WORKDIR "/home/project"

ENTRYPOINT [ "/usr/bin/g++" ]
