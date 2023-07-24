#!/bin/bash

set -eux

PGROONGA_VERSION=$1
GROONGA_VERSION=$2

MECAB_VERSION=0.996

mkdir build
cd build

wget \
  -O mecab.tar.gz \
  https://packages.groonga.org/source/mecab/mecab-${MECAB_VERSION}.tar.gz
tar xf mecab.tar.gz
cd mecab-*
sed -i.bak -e 's,ipadic,naist-jdic,g' mecabrc.in
./configure --prefix=/usr/local
make -j$(nproc)
make install
cd -

wget \
  -O mecab-naist-jdic.tar.gz \
  https://packages.groonga.org/source/mecab-naist-jdic/mecab-naist-jdic-0.6.3b-20111013.tar.gz
tar xf mecab-naist-jdic.tar.gz
cd mecab-naist-jdic-*
./configure \
  --prefix=/usr/local \
  --with-charset=utf-8
make -j$(nproc)
make install
cd -

wget https://packages.groonga.org/source/groonga/groonga-${GROONGA_VERSION}.tar.gz
tar xf groonga-${GROONGA_VERSION}.tar.gz
cd groonga-${GROONGA_VERSION}
./configure \
  --prefix=/usr/local \
  --disable-groonga-httpd \
  --disable-document \
  --disable-glibtest \
  --disable-benchmark \
  --enable-mruby
make -j$(nproc)
make install
cd -

wget https://packages.groonga.org/source/pgroonga/pgroonga-${PGROONGA_VERSION}.tar.gz
tar xf pgroonga-${PGROONGA_VERSION}.tar.gz
cd pgroonga-${PGROONGA_VERSION}
make PGRN_DEBUG=yes HAVE_MSGPACK=1 MSGPACK_PACKAGE_NAME=msgpack-c -j$(nproc)
make install
cd -

cd ..
rm -rf build
