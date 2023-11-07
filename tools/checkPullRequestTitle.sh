#!/bin/bash

_throw() {
    echo "FAILED: Pull Request: $1"
    exit 1
}


string="$*"


echo "Validating '$string'..."
if [[ ${#string} == 0 ]];                       then echo "SUCCESS (Empty name)"; exit 0; fi

if [[ ${#string} -lt 20 ]];                     then _throw "short name"; fi
if [[ $string == "Update cba_settings.sqf" ]];  then _throw "bad name"; fi
if [[ $string == "Update settings" ]];          then _throw "bad name"; fi

# Descriptor
if [[ $string != *"Added"* ]]; then
    if [[ $string != *"added"* ]]; then
        if [[ $string != *"Fixed"* ]]; then
            if [[ $string != *"fixed"* ]]; then
                if [[ $string != *"Updated"* ]]; then
                    if [[ $string != *"updated"* ]]; then
                        if [[ $string != *"Adjusted"* ]]; then
                            if [[ $string != *"adjusted"* ]]; then _throw "missing descriptor [Added, Fixed, Adjusted, Updated]"; fi
                        fi
                    fi
                fi
            fi
        fi
    fi
fi
    
echo "SUCCESS"
exit 0
