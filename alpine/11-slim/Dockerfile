FROM postgres:11-alpine

RUN \
  apk --no-cache add \
    build-base \
    clang15-dev \
    llvm15 \
    lz4-dev \
    msgpack-c-dev \
    zstd-dev

ENV PGROONGA_VERSION=3.0.2 \
    GROONGA_VERSION=13.0.1

COPY alpine/build.sh /
RUN \
  /build.sh ${PGROONGA_VERSION} ${GROONGA_VERSION} && \
  rm -f build.sh

FROM postgres:11-alpine

# copy thirdpart lib files
COPY --from=0 /usr/lib/libmsgpackc.so.? /usr/lib/
COPY --from=0 /usr/lib/liblz4.so.? /usr/lib/
COPY --from=0 /usr/lib/libzstd.so.? /usr/lib/
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
