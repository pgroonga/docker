FROM postgres:10-alpine

ENV PGROONGA_VERSION=2.3.3 \
    GROONGA_VERSION=11.0.9
RUN apk --no-cache add build-base lz4-dev msgpack-c-dev zstd-dev &&\
    mkdir build && cd build &&\
    wget https://packages.groonga.org/source/pgroonga/pgroonga-${PGROONGA_VERSION}.tar.gz && tar xf pgroonga-${PGROONGA_VERSION}.tar.gz && \
    wget https://packages.groonga.org/source/groonga/groonga-${GROONGA_VERSION}.tar.gz && tar xf groonga-${GROONGA_VERSION}.tar.gz -C pgroonga-${PGROONGA_VERSION}/vendor &&\
    cd pgroonga-${PGROONGA_VERSION}/vendor/groonga-${GROONGA_VERSION} &&\
    ./configure && make -j$(nproc) && make install &&\
    cd ../../ &&\
    make HAVE_MSGPACK=1 -j$(nproc) && make install &&\
    cd ../ && rm -rf build &&\
    apk del build-base
