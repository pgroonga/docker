FROM postgres:11.1-alpine

ENV PGROONA_VER='2.1.8' \
GROONGA_VER='8.1.0'
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories &&\
apk --no-cache add build-base lz4-dev msgpack-c-dev &&\
mkdir build && cd build &&\
wget https://packages.groonga.org/source/pgroonga/pgroonga-${PGROONA_VER}.tar.gz && tar xf pgroonga-${PGROONA_VER}.tar.gz && \
wget https://packages.groonga.org/source/groonga/groonga-${GROONGA_VER}.tar.gz && tar xf groonga-${GROONGA_VER}.tar.gz -C pgroonga-${PGROONA_VER}/vendor &&\
cd pgroonga-${PGROONA_VER}/vendor/groonga-${GROONGA_VER} &&\
./configure && make && make install &&\
cd ../../ &&\
make HAVE_MSGPACK=1 && make install &&\
cd ../ && rm -rf build &&\
apk del build-base

EXPOSE 5432
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres"]
