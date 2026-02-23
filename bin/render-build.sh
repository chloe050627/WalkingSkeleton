#!/usr/bin/env bash
# Exit immediately if any command fails
set -o errexit

# Install gems
bundle install 
bundle exec rails assets:precompile
bundle exec rails assets:clean

# Skip asset precompilation if not needed (Hello World has no real assets)
# If you add JS/CSS later, uncomment: bundle exec rails assets:precompile
# bundle exec rails assets:clean   # optional

# No DB yet → skip migrations