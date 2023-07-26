FROM postgres:15-bookworm

ENV PGROONGA_VERSION=3.1.1-1
RUN \
  apt update && \
  apt upgrade -y -V && \
  apt install -y -V wget && \
  wget https://packages.groonga.org/debian/groonga-apt-source-latest-bookworm.deb && \
  apt install -y -V ./groonga-apt-source-latest-bookworm.deb && \
  rm groonga-apt-source-latest-bookworm.deb && \
  apt update && \
  apt install -y -V \
    postgresql-15-pgdg-pgroonga=${PGROONGA_VERSION} \
    groonga-normalizer-mysql \
    groonga-token-filter-stem \
    groonga-tokenizer-mecab && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*
