#!/bin/bash

SCRIPTPATH=`dirname $(readlink -f $0)`
cd $SCRIPTPATH/../cScripts

grep -rn "LOG(" --exclude=script_macros.hpp
grep -rn "LOG_" --exclude=script_macros.hpp
[[ ! $(grep -rn "LOG(" --exclude=script_macros.hpp | wc -l) == 0 ]] && echo "ERROR: LOG usage detected" && exit 1
[[ ! $(grep -rn "LOG_" --exclude=script_macros.hpp | wc -l) == 0 ]] && echo "ERROR: LOG usage detected" && exit 1

echo "SUCCESS"
exit 0