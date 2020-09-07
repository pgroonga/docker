FROM postgres:12-alpine

RUN \
  apk --no-cache add \
    build-base \
    clang-dev \
    llvm8 \
    lz4-dev \
    msgpack-c-dev \
    zstd-dev

ENV PGROONGA_VERSION=2.2.6 \
    GROONGA_VERSION=10.0.6

RUN \
  mkdir build && \
  cd build && \
  wget https://packages.groonga.org/source/pgroonga/pgroonga-${PGROONGA_VERSION}.tar.gz && \
  tar xf pgroonga-${PGROONGA_VERSION}.tar.gz && \
  wget https://packages.groonga.org/source/groonga/groonga-${GROONGA_VERSION}.tar.gz && \
  tar xf groonga-${GROONGA_VERSION}.tar.gz -C pgroonga-${PGROONGA_VERSION}/vendor && \
  cd pgroonga-${PGROONGA_VERSION}/vendor/groonga-${GROONGA_VERSION} && \
  ./configure && \
  make && \
  make install && \
  cd ../../ && \
  make HAVE_MSGPACK=1 && \
  make install && \
  cd ../ && \
  rm -rf build

RUN \
  apk del \
    build-base \
    clang \
    clang-dev \
    llvm8

EXPOSE 5432
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres"]
