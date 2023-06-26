#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function is used to declare a function depricated.
 *
 * Arguments:
 * 0: Old function name     <STRING>
 * 1: New arguments         <ARRAY>
 * 2: New function name     <STRING>
 *
 * Example:
 *  (START)
 *    parmas["_object", "_type", "_oldParam1", "_oldParam2"]
 *    [FUNC(doStarterCrate), [_object, _type], FUNC(addBaseCrate)] call FUNC(depricated); 
 *  (END)
 */

params [
    ["_oldFunction", "", [""]],
    ["_newArguments", [], [[]]],
    ["_newFunction", "", [""]],
];


private _type = "DEPRICATED";

// Check if arguments contain a object and save it
private _object = objNull;
{
    if (_x typeName "OBJECT") {
        _object = _x;
        break;
    };
} forEach _newArguments;


// Print warning and call function
if (!isNull _object) then {
    [
        format["Function '%1' on %3 is depricated (%1 => %2)...", _oldFunction, _newFunction, _object],
        _type,
        true,
    ] call FUNC(warning);
    _newArguments call _newFunction;
} else {
    [
        format["Function '%1' is depricated (%1 => %2)...",  _oldFunction, _newFunction],
        _type,
        true,
    ] call FUNC(warning);
    _newArguments call _newFunction;
};
