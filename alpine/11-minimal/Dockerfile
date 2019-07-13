FROM postgres:11-alpine
RUN apk --no-cache add build-base lz4-dev msgpack-c-dev

ENV PGROONA_VER='2.2.0' \
    GROONGA_VER='9.0.3'
RUN mkdir build && cd build &&\
    wget https://packages.groonga.org/source/pgroonga/pgroonga-${PGROONA_VER}.tar.gz && tar xf pgroonga-${PGROONA_VER}.tar.gz && \
    wget https://packages.groonga.org/source/groonga/groonga-${GROONGA_VER}.tar.gz && tar xf groonga-${GROONGA_VER}.tar.gz -C pgroonga-${PGROONA_VER}/vendor &&\
    cd pgroonga-${PGROONA_VER}/vendor/groonga-${GROONGA_VER} &&\
    ./configure && make && make install &&\
    cd ../../ &&\
    make HAVE_MSGPACK=1 && make install


FROM postgres:11-alpine

COPY --from=0 /usr/lib/libmsgpackc.so.2.0.0 /usr/lib/
COPY --from=0 /usr/lib/liblz4.so.1.8.3 /usr/lib/

COPY --from=0 /usr/local/lib/libgroonga.so.0.0.0 /usr/local/lib/
COPY --from=0 /usr/local/lib/groonga/ /usr/local/lib/groonga/
COPY --from=0 /usr/local/lib/pkgconfig/groonga.pc /usr/local/lib/pkgconfig/
COPY --from=0 /usr/local/etc/groonga/groonga.conf /usr/local/etc/groonga/synonyms.tsv  /usr/local/etc/groonga/
COPY --from=0 /usr/local/bin/groonga /usr/local/bin/groonga-benchmark /usr/local/bin/groonga-suggest-create-dataset /usr/local/bin/

COPY --from=0 /usr/local/lib/postgresql/pgroonga.so /usr/local/lib/postgresql/pgroonga_check.so /usr/local/lib/postgresql/pgroonga_database.so /usr/local/lib/postgresql/
COPY --from=0 /usr/local/share/postgresql/extension/pgroonga* /usr/local/share/postgresql/extension/

RUN ln -s /usr/lib/libmsgpackc.so.2.0.0 /usr/local/lib/libmsgpackc.so.2 &&\
    ln -s /usr/lib/libmsgpackc.so.2.0.0 /usr/local/lib/libmsgpackc.so &&\
    ln -s /usr/lib/liblz4.so.1.8.3 /usr/lib/liblz4.so.1 &&\
    ln -s /usr/lib/liblz4.so.1.8.3 /usr/lib/liblz4.so &&\
    ln -s /usr/local/lib/libgroonga.so.0.0.0 //usr/local/lib/libgroonga.so &&\
    ln -s /usr/local/lib/libgroonga.so.0.0.0 //usr/local/lib/libgroonga.so.0

EXPOSE 5432
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres"]