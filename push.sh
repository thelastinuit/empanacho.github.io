#!/usr/bin/env bash

set -e

docker-compose run --rm app middleman build
cp build/*.* .
cp -R build/**/* .
git add .
git commit -m "new post".
git push
