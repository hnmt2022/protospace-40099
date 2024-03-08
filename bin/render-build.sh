#!/usr/bin/env bash
# exit on error
set -o errexit

bundle _2.4.2_ install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate