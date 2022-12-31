#!/bin/bash

set -eux

PGROONGA_VERSION=$1
GROONGA_VERSION=$2

mkdir build
cd build

wget \
  -O mecab.tar.gz \
  "https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7cENtOXlicTFaRUE"
tar xf mecab.tar.gz
cd mecab-*
sed -i.bak -e 's,ipadic,naist-jdic,g' mecabrc.in
./configure --prefix=/usr/local
make -j$(nproc)
make install
cd -

wget \
  -O mecab-naist-jdic.tar.gz \
  "https://ja.osdn.net/frs/redir.php?m=nchc&f=naist-jdic%2F53500%2Fmecab-naist-jdic-0.6.3b-20111013.tar.gz"
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
make HAVE_MSGPACK=1 -j$(nproc)
make install
cd -

cd ..
rm -rf build
