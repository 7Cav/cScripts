#!/bin/bash

set -e

sed -i "s/#define VERSION.*/#define VERSION \"${TRAVIS_TAG}\"/" cScripts/script_component.hpp

python3 tools/build.py -b release -d -y --deploy

python3 tools/build.py -b release -p -d -y --deploy

sed -i "s/DEVBUILD/${TRAVIS_TAG}/g" Compositions/*/header.sqe

PREV_TAG=git describe --abbrev=0 --tags `git rev-list --tags --skip=1 --max-count=1`

git archive -o cScripts_PATCH_v${PREV_TAG}_to_v${TRAVIS_TAG}.zip HEAD $(git diff --name-only ${TRAVIS_TAG}^ ${PREV_TAG})

zip release/Compositions-${TRAVIS_TAG}.zip -r Compositions
