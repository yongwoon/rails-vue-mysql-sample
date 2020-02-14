#!/bin/bash -eux

cd /app
cp config/master.key.dev config/master.key

gem install foreman
bundle install --path vendor/bundle
tail -f /dev/null
