FROM postgres:11-alpine

RUN \
  apk --no-cache add \
    build-base \
    clang-dev \
    llvm15 \
    lz4-dev \
    msgpack-c-dev \
    zstd-dev

ENV PGROONGA_VERSION=2.4.3 \
    GROONGA_VERSION=12.1.1

COPY alpine/build.sh /
RUN \
  /build.sh ${PGROONGA_VERSION} ${GROONGA_VERSION} && \
  rm -f build.sh

RUN \
  apk del \
    build-base \
    clang \
    clang-dev \
    llvm15
