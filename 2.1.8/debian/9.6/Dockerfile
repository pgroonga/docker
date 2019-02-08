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
    groonga-tokenizer-mecab

RUN \
  echo "host all postgres 0.0.0.0/0 trust" >> \
    /etc/postgresql/9.6/main/pg_hba.conf && \
  echo "listen_addresses = '*'" >> \
    /etc/postgresql/9.6/main/postgresql.conf && \
  mkdir -p /var/run/postgresql/9.6-main.pg_stat_tmp && \
  chown -R postgres: /var/run/postgresql

EXPOSE 5432
USER postgres
ENTRYPOINT [ \
  "/usr/lib/postgresql/9.6/bin/postgres", \
  "-D", \
  "/var/lib/postgresql/9.6/main", \
  "-c", \
  "config_file=/etc/postgresql/9.6/main/postgresql.conf" \
]
