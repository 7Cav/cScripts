#!/bin/bash

set -e

VERSION_TAG=$*

sed -i "s/#define VERSION.*/#define VERSION \"${VERSION_TAG}\"/" cScripts/script_component.hpp

python3 tools/build.py -b release -d -y --deploy

python3 tools/build.py -b release -p -d -y --deploy

sed -i "s/DEVBUILD/${VERSION_TAG}/g" Compositions/*/header.sqe

# Make a patch release
PREV_TAG=$(git describe --abbrev=0 --tags `git rev-list --tags --skip=1 --max-count=1`)
zip release/cScripts_PATCH_v${PREV_TAG}_to_v${VERSION_TAG}.zip `git diff --name-only tags/${VERSION_TAG}^ tags/${PREV_TAG}` -x=*Compositions* -x=*tools* -x=*resourses* -x=*.github* -x=*.travis.yml* -x=*.gitignore* -x=*.gitattributes* -x=*.editorconfig*

# Pack Compositions
zip release/Compositions-${VERSION_TAG}.zip -r Compositions
