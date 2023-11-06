#!/bin/bash

_throw() {
    echo "FAILED: Pull Request has $1"
    exit 1
}

string="$*"

if [[ ${#string} -lt 20 ]]; then _throw "short name"; fi
if [[ $string == "Update cba_settings.sqf" ]]; then _throw "bad name"; fi
    
echo "SUCCESS"
exit 0