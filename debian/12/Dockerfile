FROM postgres:12

ENV PGROONGA_VERSION=2.2.9-1
RUN \
  apt update && \
  apt upgrade && \
  apt install -y wget && \
  wget https://packages.groonga.org/debian/groonga-archive-keyring-latest-buster.deb && \
  apt install -y -V ./groonga-archive-keyring-latest-buster.deb && \
  apt update && \
  apt install -y \
    postgresql-12-pgdg-pgroonga=${PGROONGA_VERSION} \
    groonga-normalizer-mysql \
    groonga-tokenizer-mecab && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*
