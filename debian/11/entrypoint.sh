#!/bin/bash

version=11
cluster_name=main

bin_dir=/usr/lib/postgresql/${version}/bin
etc_dir=/etc/postgresql/${version}/${cluster_name}
state_dir=/var/run/postgresql
base_db_dir=/var/lib/postgresql
db_dir=${base_db_dir}/${version}/${cluster_name}

original_owner=$(stat --format %u ${base_db_dir})
original_group=$(stat --format %g ${base_db_dir})

if [ ! -e ${db_dir} ]; then
  mkdir -p ${base_db_dir}
  chown -R postgres: ${base_db_dir}
  pg_dropcluster ${version} ${cluster_name}
  pg_createcluster --locale C.UTF-8 ${version} ${cluster_name}
fi

echo "host all postgres 0.0.0.0/0 trust" >> \
  ${etc_dir}/pg_hba.conf
echo "listen_addresses = '*'" >> \
  ${etc_dir}/postgresql.conf
mkdir -p ${state_dir}/${version}-${cluster_name}.pg_stat_tmp
chown -R postgres: ${state_dir}

chown -R postgres: ${db_dir}
pg_ctlcluster --foreground ${version} ${cluster_name} start
chown -R ${original_owner}:${original_group} ${base_db_dir}
