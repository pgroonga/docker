FROM postgres:14-alpine

ENV PGROONGA_VERSION=3.2.0 \
    GROONGA_VERSION=14.0.4

COPY alpine/build.sh /
RUN \
  apk add --no-cache --virtual=.build-dependencies \
    apache-arrow-dev \
    build-base \
    clang15-dev \
    cmake \
    gettext-dev \
    linux-headers \
    llvm15 \
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
    libxxhash \
    msgpack-c \
    zlib \
    zstd && \
  rm -rf \
    /usr/local/include \
    /usr/local/lib/mecab/dic/naist-jdic/naist-jdic.csv \
    /usr/local/share/groonga/html \
    /usr/local/share/man
