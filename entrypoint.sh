#!/bin/bash

cd "$(dirname $(readlink -f $0))"

chmod 700 /root/.ssh/
rm -f /root/.ssh/known_hosts
chmod 400 /root/.ssh/*

ssh -v $@