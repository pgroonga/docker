FROM debian:stretch

ENV PGROONGA_VERSION="2.1.8-1"
RUN \
  apt update && \
  apt install -y \
    apt-transport-https \
    wget && \
  echo "deb [signed-by=/usr/share/keyrings/groonga-archive-keyring.gpg] https://packages.groonga.org/debian/ stretch main" > \
    /etc/apt/sources.list.d/groonga.list && \
  wget -O /usr/share/keyrings/groonga-archive-keyring.gpg https://packages.groonga.org/debian/groonga-archive-keyring.gpg && \
  apt update && \
  apt install -y \
    postgresql-9.6-pgroonga=${PGROONGA_VERSION} \
    groonga-tokenizer-mecab && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

EXPOSE 5432
ENTRYPOINT ["/entrypoint.sh"]
