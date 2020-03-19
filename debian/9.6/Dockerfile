FROM debian:stretch

ENV PGROONGA_VERSION=2.2.5-1
RUN \
  apt update && \
  apt install -y wget && \
  wget https://packages.groonga.org/debian/groonga-archive-keyring-latest-stretch.deb && \
  apt install -y -V ./groonga-archive-keyring-latest-stretch.deb && \
  apt update && \
  apt install -y \
    postgresql-9.6-pgroonga=${PGROONGA_VERSION} \
    groonga-tokenizer-mecab && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

EXPOSE 5432
ENTRYPOINT ["/entrypoint.sh"]
