FROM postgres:15-alpine

RUN \
  apk --no-cache add \
    build-base \
    clang-dev \
    llvm15 \
    lz4-dev \
    msgpack-c-dev \
    zstd-dev

ENV PGROONGA_VERSION=2.4.2 \
    GROONGA_VERSION=12.1.0

RUN \
  mkdir build && \
  cd build && \
  wget -O mecab.tar.gz "https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7cENtOXlicTFaRUE" && \
  tar xf mecab.tar.gz && \
  cd mecab-* && \
  ./configure && \
  make -j$(nproc) && \
  make install && \
  cd - && \
  wget -O mecab-naist-jdic.tar.gz "https://ja.osdn.net/frs/redir.php?m=nchc&f=naist-jdic%2F53500%2Fmecab-naist-jdic-0.6.3b-20111013.tar.gz" && \
  tar xf mecab-naist-jdic.tar.gz && \
  cd mecab-naist-jdic-* && \
  ./configure && \
  make -j$(nproc) && \
  make install && \
  cd - && \
  wget https://packages.groonga.org/source/groonga/groonga-${GROONGA_VERSION}.tar.gz && \
  tar xf groonga-${GROONGA_VERSION}.tar.gz && \
  cd groonga-${GROONGA_VERSION} && \
  ./configure && \
  make -j$(nproc) && \
  make install && \
  cd - && \
  wget https://packages.groonga.org/source/pgroonga/pgroonga-${PGROONGA_VERSION}.tar.gz && \
  tar xf pgroonga-${PGROONGA_VERSION}.tar.gz && \
  cd pgroonga-${PGROONGA_VERSION} && \
  make HAVE_MSGPACK=1 -j$(nproc) && \
  make install && \
  cd - && \
  cd .. && \
  rm -rf build

RUN \
  apk del \
    build-base \
    clang \
    clang-dev \
    llvm15
