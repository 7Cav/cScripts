#!/bin/bash

SCRIPTPATH=`dirname $(readlink -f $0)`
cd $SCRIPTPATH/../cScripts

grep -rn "TODO"
[[ ! $(grep -rn "TODO" | wc -l) == 0 ]] && echo "WARNING: TODO found" && exit 0

echo "SUCCESS"
exit 0
