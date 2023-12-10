#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function creates a base create contining staging zone and everythig.
 * (This is a quick function for the starter create)
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
 * [this, "all"] call cScripts_fnc_addBaseCrate;
 *
 * Public: Yes
 */

params [
    ["_object", objNull, [objNull]],
    ["_type", "none", [""]]
];

if (_object isKindOf "Man") exitWith {false};

[_object, _type, true, true, true, false, false, true] call FUNC(doStarterCrate);

true