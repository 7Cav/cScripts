#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function return your current loadout.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * Loadout name <STRING>
 *
 * Example:
 * [player] call cScripts_fnc_gear_getCurrentLoadout
 * [bob] call cScripts_fnc_gear_getCurrentLoadout
 *
 */
params [["_unit", objNull, [objNull]]];

private _loadout = if (!isNil {_unit getVariable QEGVAR(gear,loadoutClass)}) then {
    _unit getVariable QEGVAR(gear,loadoutClass);
} else {
    typeOf _unit;
};

_loadout