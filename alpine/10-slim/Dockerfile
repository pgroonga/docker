FROM postgres:10-alpine

RUN apk --no-cache add build-base lz4-dev msgpack-c-dev zstd-dev

ENV PGROONA_VER='2.2.0' \
    GROONGA_VER='9.0.4'
RUN mkdir build && cd build &&\
    wget https://packages.groonga.org/source/pgroonga/pgroonga-${PGROONA_VER}.tar.gz && tar xf pgroonga-${PGROONA_VER}.tar.gz && \
    wget https://packages.groonga.org/source/groonga/groonga-${GROONGA_VER}.tar.gz && tar xf groonga-${GROONGA_VER}.tar.gz -C pgroonga-${PGROONA_VER}/vendor &&\
    cd pgroonga-${PGROONA_VER}/vendor/groonga-${GROONGA_VER} &&\
    ./configure && make && make install &&\
    cd ../../ &&\
    make HAVE_MSGPACK=1 && make install

FROM postgres:10-alpine

# copy thirdpart lib files
COPY --from=0 /usr/lib/libmsgpackc.so.2 /usr/lib/
COPY --from=0 /usr/lib/liblz4.so.1 /usr/lib/
COPY --from=0 /usr/lib/libzstd.so.1 /usr/lib/
# copy groonga lib files
COPY --from=0 /usr/local/lib/libgroonga.so.0 /usr/local/lib/
COPY --from=0 /usr/local/lib/groonga/ /usr/local/lib/groonga/
# copy pgroonga extension files
COPY --from=0 /usr/local/lib/postgresql/pgroonga.so /usr/local/lib/postgresql/pgroonga_check.so /usr/local/lib/postgresql/pgroonga_database.so /usr/local/lib/postgresql/
COPY --from=0 /usr/local/share/postgresql/extension/pgroonga* /usr/local/share/postgresql/extension/


EXPOSE 5432
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres"]