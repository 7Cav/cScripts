#!/bin/bash

_throw() {
    echo "FAILED: Pull Request: $1"
    exit 1
}

string="$*"
string=${string,,}

echo "Validating '$*'..."

if [[ ${#string} == 0 ]];                       then echo "SUCCESS: Empty name (Assumed bransh run)"; exit 0; fi

if [[ ${#string} -lt 20 ]];                     then _throw "Short name"; fi
if [[ $string == "update"*".sqf" ]];            then _throw "Bad name"; fi
if [[ $string == "add"*".sqf" ]];               then _throw "Bad name"; fi
if [[ $string == "remove"*".sqf" ]];            then _throw "Bad name"; fi


# Descriptor
valid_list=(Added Fixed Changed Updated Improved Cleaned Replaced Removed Reverted Revert)
missing_descriptor_error="Missing descriptor [${valid_list[@]}]"
_valid=false
for contain in ${valid_list[@]}; do
    contain=${contain,,}
    [[ $string == *${contain}* ]] && _valid=true && break
done
[ "$_valid" == "false" ] && _throw "$missing_descriptor_error"

echo "SUCCESS"
exit 0
