FROM alpine:edge

LABEL maintainer="ihar@ukr.net"

RUN echo "*** Installing... ***" \
      && apk update && apk upgrade \
      && rm -rf /var/cache/apk/* \
      && apk add --no-cache ca-certificates \
                     bash \
                     git \
                     binutils \
                     make \
                     cmake \
                     libc-dev \
                     gcc \
                     g++ \
                     clang \
                     gdb \
                     python3 \
                     python-dev \
                     py-pip \
      && pip install conan\
      && adduser -S develop

# for gdbserver
EXPOSE 2000

USER develop
VOLUME "/home/project"
WORKDIR "/home/project"
