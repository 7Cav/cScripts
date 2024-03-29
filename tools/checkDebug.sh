#!/bin/bash

SCRIPTPATH=`dirname $(readlink -f $0)`
cd $SCRIPTPATH/../cScripts


[[ ! $(grep -n "//#define DEBUG_MODE" script_component.hpp | wc -l) == 1 ]] && echo "ERROR: Global debugging enabled" && exit 1

grep -rn "#define DEBUG_MODE" --exclude=script_component.hpp
[[ ! $(grep -rn "#define DEBUG_MODE" --exclude=script_component.hpp | wc -l) == 0 ]] && echo "ERROR: DEBUG_MODE is enabled" && exit 1


echo "SUCCESS"
exit 0