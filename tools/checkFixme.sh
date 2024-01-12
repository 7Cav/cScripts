#!/bin/bash

SCRIPTPATH=`dirname $(readlink -f $0)`
cd $SCRIPTPATH/../cScripts

grep -rn "FIXME"
[[ ! $(grep -rn "FIXME" | wc -l) == 0 ]] && echo "ERROR: FIXME found" && exit 1

echo "SUCCESS"
exit 0