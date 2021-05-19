#!/bin/sh

cd "$(dirname $(readlink -f $0))"

rm -rf /root/.ssh
mkdir -p /root/.ssh
chmod 700 /root /root/.ssh/

cp /.ssh/* /root/.ssh/
rm -f /root/.ssh/known_hosts
chmod 400 /root/.ssh/*

ssh -v $@