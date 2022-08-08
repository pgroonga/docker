FROM debian:buster

ENV PGROONGA_VERSION=2.3.8-1
RUN \
  apt update && \
  apt upgrade -y -V && \
  apt install -y -V wget && \
  wget https://packages.groonga.org/debian/groonga-apt-source-latest-buster.deb && \
  apt install -y -V ./groonga-apt-source-latest-buster.deb && \
  apt update && \
  apt install -y -V \
    postgresql-11-pgroonga=${PGROONGA_VERSION} \
    groonga-tokenizer-mecab && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

EXPOSE 5432
ENTRYPOINT ["/entrypoint.sh"]
