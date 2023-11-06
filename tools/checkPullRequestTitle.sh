#!/bin/bash

_throw() {
    echo "Pull Request: Bad name"
    exit 1
}
string="$*"
if [[ ${#string} -lt 20 ]]; then _throw; fi
    

exit 0
