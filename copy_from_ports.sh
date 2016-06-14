#!/bin/sh
set -e
cd `dirname "$0"`
for port in `mtn ls known | egrep '^[^/]+/[^/]+$'`; do
  echo $port
  rm -rf $port
  cp -r /usr/ports/$port $port
done
