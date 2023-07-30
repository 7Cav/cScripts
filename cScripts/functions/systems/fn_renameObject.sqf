#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function renames a given object.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Name <STRING>
 *
 * Return Value:
 * Name or Empty string <STRING>
 *
 * Example:
 * [_object, "My Supply Crate"] call cScripts_fnc_renameObject
 *
 * Public: Yes
 */

params[
    ["_object", objNull, [objNull]],
    ["_name", "", [""]]
];

if (!EGVAR(patches,usesACE)) exitWith {""};
if (!isNil {ace_cargo_noRename}) exitWith {""};
if (_object getVariable ["ace_cargo_noRename", false]) exitWith {""};

if (_name isEqualTo "") exitWith {
    _object setVariable ["ace_cargo_customName", nil, true];
    ""
};

_object setVariable ["ace_cargo_customName", _name, true];

_name