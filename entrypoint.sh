#!/usr/bin/env bash

set -e

riak start

exec tail -f /var/log/riak/console.log
