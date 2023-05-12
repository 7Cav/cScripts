#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This is a quick function to create a start crate.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Crate Type <STRING>       (Default: "none")
 *
 * Return Value:
 * true or false <BOOLEAN>
 *
 * Example:
 * [this] call cScripts_fnc_addBaseCrate;
 * [this, "charlie"] call cScripts_fnc_addBaseCrate;
 *
 */

params [
    ["_object", objNull, [objNull]],
    ["_type", "none", [""]]
];

if (!isServer) exitWith {false};
if (!isPlayer _object) exitWith {false};
if (_object isKindOf "Man") exitWith {false};

[_object, _type, true, true, true, true, false, true] call FUNC(doStarterCrate);

true