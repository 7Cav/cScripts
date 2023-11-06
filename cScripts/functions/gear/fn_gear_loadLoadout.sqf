#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function loads a loadout array stored in unit variable.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * loadout array <LOADOUT ARRAY>
 *
 * Example:
 * [bob] call cScripts_fnc_gear_loadLoadout
 *
 */

params [
    ["_unit", objNull, [objNull]]
];

private _emptyLoadout = [[],[],[],[],[],[],"","",[],["","","","","",""]];

if (!(_unit call EFUNC(gear,hasSavedLoadout))) exitWith {_emptyLoadout};

INFO("Gear", "Loaded stored loadout.");

_unit getVariable [QEGVAR(gear,loadout), _emptyLoadout];