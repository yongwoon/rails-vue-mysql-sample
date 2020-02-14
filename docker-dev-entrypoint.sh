#!/bin/bash -eux

cd /app
cp config/master.key.dev config/master.key

bundle install --path vendor/bundle
tail -f /dev/null
