FROM postgres:13-alpine

ENV PGROONGA_VERSION=3.2.5 \
    GROONGA_VERSION=14.1.1

COPY alpine/build.sh /
RUN \
  apk add --no-cache --virtual=.build-dependencies \
    apache-arrow-dev \
    build-base \
    clang19-dev \
    cmake \
    gettext-dev \
    linux-headers \
    llvm19 \
    lz4-dev \
    msgpack-c-dev \
    rapidjson-dev \
    ruby \
    samurai \
    xsimd-dev \
    xxhash-dev \
    zlib-dev \
    zstd-dev && \
  /build.sh ${PGROONGA_VERSION} ${GROONGA_VERSION} && \
  rm -f build.sh && \
  apk del .build-dependencies && \
  apk add --no-cache \
    libarrow \
    libgomp \
    libxxhash \
    msgpack-c \
    zlib \
    zstd
