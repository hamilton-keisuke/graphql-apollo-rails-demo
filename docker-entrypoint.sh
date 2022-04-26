#!/bin/bash

set -eu

rm -rf tmp/pids/server.pid
rails db:prepare
rails db:seed

exec "$@"
