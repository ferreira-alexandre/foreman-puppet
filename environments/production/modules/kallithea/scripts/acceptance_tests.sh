#!/usr/bin/env bash

set -eu

rm -rf .acceptance_logs
mkdir -p .acceptance_logs

exit_code=0

for nodeset_file in spec/acceptance/nodesets/*.yml; do
  nodeset=$(basename $nodeset_file)
  nodeset=${nodeset%.yml}
  export BEAKER_set=$nodeset
  export BEAKER_destroy=onpass
  echo -n "${nodeset}... "
  if rake acceptance > .acceptance_logs/${nodeset}.log 2>&1; then
    echo "OK"
  else
    echo "FAIL!"
    exit_code=1
  fi
done

exit $exit_code

