#!/bin/bash

set -e

Verions_NR = $*

sed -i "s/#define VERSION.*/#define VERSION \"${Verions_NR}\"/" cScripts/script_component.hpp

python3 tools/build.py -b release -d -y --deploy

python3 tools/build.py -b release -p -d -y --deploy

sed -i "s/DEVBUILD/${Verions_NR}/g" Compositions/*/header.sqe

# Make a patch release
PREV_TAG=$(git describe --abbrev=0 --tags `git rev-list --tags --skip=1 --max-count=1`)
zip release/cScripts_PATCH_v${PREV_TAG}_to_v${Verions_NR}.zip `git diff --name-only tags/${Verions_NR}^ tags/${PREV_TAG}` -x=*Compositions* -x=*tools* -x=*resourses* -x=*.github* -x=*.travis.yml* -x=*.gitignore* -x=*.gitattributes* -x=*.editorconfig*

# Pack Compositions
zip release/Compositions-${Verions_NR}.zip -r Compositions
