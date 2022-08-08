FROM postgres:14-alpine

RUN \
  apk --no-cache add \
    build-base \
    clang-dev \
    llvm13 \
    lz4-dev \
    msgpack-c-dev \
    zstd-dev

ENV PGROONGA_VERSION=2.3.8 \
    GROONGA_VERSION=12.0.6

RUN \
  mkdir build && \
  cd build && \
  wget https://packages.groonga.org/source/pgroonga/pgroonga-${PGROONGA_VERSION}.tar.gz && \
  tar xf pgroonga-${PGROONGA_VERSION}.tar.gz && \
  wget https://packages.groonga.org/source/groonga/groonga-${GROONGA_VERSION}.tar.gz && \
  tar xf groonga-${GROONGA_VERSION}.tar.gz -C pgroonga-${PGROONGA_VERSION}/vendor && \
  cd pgroonga-${PGROONGA_VERSION}/vendor/groonga-${GROONGA_VERSION} && \
  ./configure && \
  make -j$(nproc) && \
  make install && \
  cd ../../ && \
  make HAVE_MSGPACK=1 -j$(nproc) && \
  make install

FROM postgres:14-alpine

# copy thirdpart lib files
COPY --from=0 /usr/lib/libmsgpackc.so.2 /usr/lib/
COPY --from=0 /usr/lib/liblz4.so.1 /usr/lib/
COPY --from=0 /usr/lib/libzstd.so.1 /usr/lib/
# copy Groonga lib files
COPY --from=0 /usr/local/lib/libgroonga.so.0 /usr/local/lib/
COPY --from=0 /usr/local/lib/groonga/ /usr/local/lib/groonga/
# copy PGroonga extension files
COPY --from=0 /usr/local/lib/postgresql/pgroonga.so /usr/local/lib/postgresql/pgroonga_check.so /usr/local/lib/postgresql/pgroonga_database.so /usr/local/lib/postgresql/
COPY --from=0 /usr/local/share/postgresql/extension/pgroonga* /usr/local/share/postgresql/extension/
