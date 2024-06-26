#!/usr/bin/env bash

set -eux

lib_files=()
usr_lib_files=()
usr_local_lib_files=()

for line in $(ldd /usr/local/lib/postgresql/pgroonga.so 2>/dev/null); do
  if [ "${line:0:1}" != "/" ]; then
    continue
  fi
  file_name=$(basename "${line}")
  case $(dirname "${line}") in
    "/lib")
      lib_files+=("${file_name}")
      ;;
    "/usr/lib")
      usr_lib_files+=("${file_name}")
      ;;
    "/usr/local/lib")
      usr_local_lib_files+=("${file_name}")
      ;;
    *)
      echo "Unknown path"
      exit 1
      ;;
  esac
done

tar -chf /tmp/lib.tar -C /lib ${lib_files[@]}
tar -chf /tmp/usr_lib.tar -C /usr/lib ${usr_lib_files[@]}
tar -chf /tmp/usr_local_lib.tar -C /usr/local/lib ${usr_local_lib_files[@]}
