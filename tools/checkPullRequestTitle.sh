#!/bin/bash

_throw() {
    echo "FAILED: Pull Request: $1"
    exit 1
}


string="$*"


echo "Validating '$string'..."
if [[ ${#string} == 0 ]];                       then echo "SUCCESS (Empty name)"; exit 0; fi

if [[ ${#string} -lt 20 ]];                     then _throw "Short name"; fi
if [[ $string == "Update cba_settings.sqf" ]];  then _throw "Sad name"; fi
if [[ $string == "Update settings" ]];          then _throw "Sad name"; fi

# Descriptor
if [[ $string != *"Added"* ]];                  then _throw "missing descriptor [Added, Fixed, Adjusted, Updated]"; fi
if [[ $string != *"added"* ]];                  then _throw "missing descriptor [Added, Fixed, Adjusted, Updated]"; fi
if [[ $string != *"Fixed"* ]];                  then _throw "missing descriptor [Added, Fixed, Adjusted, Updated]"; fi
if [[ $string != *"fixed"* ]];                  then _throw "missing descriptor [Added, Fixed, Adjusted, Updated]"; fi
if [[ $string != *"Updated"* ]];                then _throw "missing descriptor [Added, Fixed, Adjusted, Updated]"; fi
if [[ $string != *"updated"* ]];                then _throw "missing descriptor [Added, Fixed, Adjusted, Updated]"; fi
if [[ $string != *"Adjusted"* ]];               then _throw "missing descriptor [Added, Fixed, Adjusted, Updated]"; fi
if [[ $string != *"adjusted"* ]];               then _throw "missing descriptor [Added, Fixed, Adjusted, Updated]"; fi
    
echo "SUCCESS"
exit 0