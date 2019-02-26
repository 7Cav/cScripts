#!/bin/bash

set -e

sed -i "s/#define VERSION.*/#define VERSION ${TRAVIS_TAG}/" cScripts/script_component.hpp

python3 tools/build.py -b release -d -y

python3 tools/build.py -b release -p -d -y
