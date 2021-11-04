#!/bin/bash

set -eu

if [ $# != 2 ]; then
  echo "Usage: $0 PGROONGA_VERSION GROONGA_VERSION"
  echo " e.g.: $0 2.2.0 9.0.2"
  exit 1
fi

pgroonga_version=$1
groonga_version=$2

if type gsed > /dev/null 2>&1; then
  SED=gsed
else
  SED=sed
fi

for docker_file in */*/Dockerfile; do
  ${SED} \
    -i'' \
    -r \
    -e "s/ PGROONGA_VERSION=[0-9.]*/ PGROONGA_VERSION=${pgroonga_version}/g" \
    -e "s/ GROONGA_VERSION=[0-9.]*/ GROONGA_VERSION=${groonga_version}/g" \
    ${docker_file}
  git add ${docker_file}
done

ruby "$(dirname "$0")/update-tag-list.rb" "$@"
git add README.md

message="PGroonga ${pgroonga_version} and Groonga ${groonga_version}"
git commit -m "${message}"

tag="${pgroonga_version}"
echo ${tag}
git tag -a -m "${message}" ${tag}
