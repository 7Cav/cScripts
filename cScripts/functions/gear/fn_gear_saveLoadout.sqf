#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function save players loadout
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * true or false <BOOL>
 *
 * Example:
 * [player] call cScripts_fnc_gear_saveLoadout
 *
 */

params [["_unit", objNull, [objNull]]];

private _loadout = getUnitLoadout _unit;
if (EGVAR(patches,usesACRE)) then { _loadout = [_loadout] call acre_api_fnc_filterUnitLoadout; };
_loadout = [_unit] call CBA_fnc_getLoadout;

_unit setVariable [QEGVAR(gear,Loadout), _loadout];
_unit setVariable [QEGVAR(gear,savedLoadout), true];

private _insignia = _unit call BIS_fnc_getUnitInsignia;
if (_insignia != "") then {
    profileNamespace setVariable [QEGVAR(Cav,Insignia), _insignia];
};

[
    [],
    ["Loadout have been saved"],
    [""],
    [""]
] call CBA_fnc_notify;

_unit getVariable [QEGVAR(gear,savedLoadout), false];
