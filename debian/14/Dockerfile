FROM postgres:14-bullseye

ENV PGROONGA_VERSION=2.3.2-1
RUN \
  apt update && \
  apt upgrade && \
  apt install -y wget && \
  wget https://packages.groonga.org/debian/groonga-apt-source-latest-bullseye.deb && \
  apt install -y -V ./groonga-apt-source-latest-bullseye.deb && \
  apt update && \
  apt install -y \
    postgresql-14-pgdg-pgroonga=${PGROONGA_VERSION} \
    groonga-normalizer-mysql \
    groonga-tokenizer-mecab && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*
