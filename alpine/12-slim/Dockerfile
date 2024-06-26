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

COPY alpine/create-required-so-tar.sh /
RUN \
  /create-required-so-tar.sh && \
  rm -f /create-required-so-tar.sh

FROM postgres:12-alpine

# copy thirdpart lib files
COPY --from=0 /tmp/lib.tar /tmp/
RUN \
  tar -xf /tmp/lib.tar -C /lib && \
  rm -f /tmp/lib.tar
COPY --from=0 /tmp/usr_lib.tar /tmp/
RUN \
  tar -xf /tmp/usr_lib.tar -C /usr/lib && \
  rm -f /tmp/usr_lib.tar
COPY --from=0 /tmp/usr_local_lib.tar /tmp/
RUN \
  tar -xf /tmp/usr_local_lib.tar -C /usr/local/lib && \
  rm -f /tmp/usr_local_lib.tar
# copy MeCab files
COPY --from=0 /usr/local/etc/mecabrc /usr/local/etc/
COPY --from=0 /usr/local/lib/libmecab.so.? /usr/local/lib/
COPY --from=0 /usr/local/lib/mecab/ /usr/local/lib/mecab/
# copy Groonga lib files
COPY --from=0 /usr/local/etc/groonga/ /usr/local/etc/groonga/
COPY --from=0 /usr/local/lib/groonga/ /usr/local/lib/groonga/
COPY --from=0 /usr/local/lib/libgroonga.so.? /usr/local/lib/
# copy PGroonga extension files
COPY --from=0 /usr/local/lib/postgresql/pgroonga*.so /usr/local/lib/postgresql/
COPY --from=0 /usr/local/share/postgresql/extension/pgroonga* /usr/local/share/postgresql/extension/
