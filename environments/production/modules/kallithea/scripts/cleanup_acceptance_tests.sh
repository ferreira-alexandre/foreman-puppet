#!/usr/bin/env bash

set -eu

for vagrant_dir in .vagrant/beaker_vagrant_files/*; do
  echo "cleaning up $vagrant_dir"
  cd $vagrant_dir
  vagrant destroy -f > /dev/null
  cd $OLDPWD
  rm -rf $vagrant_dir
done

exit 0

