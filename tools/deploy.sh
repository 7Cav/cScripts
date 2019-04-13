#!/bin/bash

set -e

sed -i "s/#define VERSION.*/#define VERSION \"${TRAVIS_TAG}\"/" cScripts/script_component.hpp

python3 tools/build.py -b release -d -y --deploy

python3 tools/build.py -b release -p -d -y --deploy

sed -i "s/DEVBUILD.*/${TRAVIS_TAG}\";/" Compositions/*/header.sqe

zip release/Compositions-${TRAVIS_TAG}.zip -r Compositions
