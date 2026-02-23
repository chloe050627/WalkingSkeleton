#!/usr/bin/env bash
# Exit immediately if any command fails
set -e

# Install gems
bundle install --jobs 4 --retry 3

# Skip asset precompilation if not needed (Hello World has no real assets)
# If you add JS/CSS later, uncomment: bundle exec rails assets:precompile
# bundle exec rails assets:clean   # optional

# No DB yet → skip migrations