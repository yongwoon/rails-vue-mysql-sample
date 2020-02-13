#!/bin/bash

cd /app
bundle install --path vendor/bundle
tail -f /dev/null
