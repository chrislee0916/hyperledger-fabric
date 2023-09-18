#!/bin/bash

export PATH=$PWD/bin:$PATH

for dir in $(find ca -type d -maxdepth 1 -mindepth 1); do
  DEST=$(echo $dir|sed 's/ca/workdir/g')
  if [ ! -d "$DEST/ca/admin" ]; then
    mkdir -p "$DEST/ca/admin"
  fi
  cp $dir/ca/ca-cert.pem $DEST/ca/ca-cert.pem

  if [ ! -d "$DEST/tls/admin" ]; then
    mkdir -p "$DEST/tls/admin"
  fi
  cp "$dir/tls/ca-cert.pem" "$DEST/tls/ca-cert.pem"
done
