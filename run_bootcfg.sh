#!/usr/bin/env bash

docker run -p 8080:8080 -d \
    -v $PWD/examples:/var/lib/bootcfg:Z \
    -v $PWD/examples/groups/bootkube-install:/var/lib/bootcfg/groups:Z \
    quay.io/coreos/bootcfg:v0.4.0 -address=0.0.0.0:8080 -log-level=debug
