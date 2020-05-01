#!/bin/bash

set -e

VERSION_TAG=$*

mkdir release/

sed -i "s/#define VERSION.*/#define VERSION \"${VERSION_TAG}\"/" cScripts/script_component.hpp

python3 tools/build.py -b release -d -y --deploy

python3 tools/build.py -b release -p -d -y --deploy

sed -i "s/DEVBUILD/${VERSION_TAG}/g" Compositions/*/header.sqe

# Make a patch release
set +e # allow fail
PREV_TAG=$(git describe --abbrev=0 --tags `git rev-list --tags --skip=1 --max-count=1`)
echo "Creating patch build for ${PREV_TAG} to ${VERSION_TAG}"
git diff --name-only ${PREV_TAG} ${VERSION_TAG} > pre_changed_file_list.txt
sed '/tools/d;/Compositions/d;/resourses/d;/^\.\(.*\)/d' pre_changed_file_list.txt > changed_file_list.txt
zip release/cScripts_PATCH_v${PREV_TAG}_to_v${VERSION_TAG}.zip -@ < changed_file_list.txt
set -e

# Pack Compositions
zip release/Compositions-${VERSION_TAG}.zip -r Compositions

chmod +x ./tools/build_settings_config.sh
./tools/build_settings_config.sh $VERSION_TAG

zip release/Compositions-${VERSION_TAG}.zip -r Compositions
