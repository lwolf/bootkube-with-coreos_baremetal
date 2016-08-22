#!/usr/bin/env bash

docker run -d \
    --cap-add=NET_ADMIN \
    --net=host \
    -v $PWD/tftpboot:/var/lib/tftpboot \
    -v $PWD/dnsmasq_complete.conf:/etc/dnsmasq.conf \
    -v $PWD/dnsmasq_static_hosts.conf:/etc/dnsmasq_static_hosts.conf \
    -v $PWD/dnsmasq_leases.conf:/etc/dnsmasq_leases.conf \
    quay.io/coreos/dnsmasq -d -q
