#!/bin/bash

version=9.6
cluster_name=main

bin_dir=/usr/lib/postgresql/${version}/bin
etc_dir=/etc/postgresql/${version}/${cluster_name}
state_dir=/var/run/postgresql
base_db_dir=/var/lib/postgresql
db_dir=${base_db_dir}/${version}/${cluster_name}

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

old_owner=$(stat --format %u ${db_dir})
old_group=$(stat --format %u ${db_dir})

chown -R postgres: ${db_dir}
su postgres \
  -c "${bin_dir}/postgres -D ${db_dir} -c config_file=${etc_dir}/postgresql.conf"
chown -R ${old_owner}:${old_group} ${db_dir}
