FROM postgres:13-bullseye

ENV PGROONGA_VERSION=3.0.0-1
RUN \
  apt update && \
  apt upgrade -y -V && \
  apt install -y -V wget && \
  wget https://packages.groonga.org/debian/groonga-apt-source-latest-bullseye.deb && \
  apt install -y -V ./groonga-apt-source-latest-bullseye.deb && \
  rm groonga-apt-source-latest-bullseye.deb && \
  apt update && \
  apt install -y -V \
    postgresql-13-pgdg-pgroonga=${PGROONGA_VERSION} \
    groonga-normalizer-mysql \
    groonga-token-filter-stem \
    groonga-tokenizer-mecab && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*
