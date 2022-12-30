#!/bin/bash

set -eux

rm -rf output
mkdir -p output
cp -a /host/pgroonga/expects output/results

export PG_REGRESS_DIFF_OPTS="-u --color=always"

if ! $(dirname $(pg_config --pgxs))/../test/regress/pg_regress \
        --user=pgroonga \
        --schedule=/host/pgroonga/schedule \
        --inputdir=/host/pgroonga \
        --outputdir=output \
        --load-extension=pgroonga \
        --launcher=/host/pgroonga/test/short-pgappname; then
  cat output/regression.diffs
  exit 1
fi
