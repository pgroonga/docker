FROM postgres:12-alpine

RUN \
  apk --no-cache add \
    apache-arrow-dev \
    autoconf \
    automake \
    build-base \
    clang15-dev \
    cmake \
    gettext-dev \
    libtool \
    llvm15 \
    lz4-dev \
    msgpack-c-dev \
    samurai \
    zstd-dev

ENV PGROONGA_VERSION=3.2.0 \
    GROONGA_VERSION=14.0.4

COPY alpine/build.sh /
RUN \
  /build.sh ${PGROONGA_VERSION} ${GROONGA_VERSION} && \
  rm -f build.sh

RUN \
  apk del \
    autoconf \
    automake \
    build-base \
    clang15 \
    clang15-dev \
    cmake \
    gettext-dev \
    libtool \
    llvm15 \
    samurai
