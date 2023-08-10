FROM postgres:12-alpine

RUN \
  apk --no-cache add \
    build-base \
    clang15-dev \
    llvm15 \
    lz4-dev \
    msgpack-c-dev \
    zstd-dev

ENV PGROONGA_VERSION=3.1.2 \
    GROONGA_VERSION=13.0.5

COPY alpine/build.sh /
RUN \
  /build.sh ${PGROONGA_VERSION} ${GROONGA_VERSION} && \
  rm -f build.sh

RUN \
  apk del \
    build-base \
    clang15 \
    clang15-dev \
    llvm15
