#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function apply abilities to a player based on config entries
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Loadout <STRING / ARRAY>
 *
 * Return Value:
 * true or false based on successful load <BOOL>
 *
 * Example:
 * [player] call cScripts_fnc_gear_loadLoadout
 *
 */

params [
    ["_unit", objNull, [objNull]]
];

if !(_unit getVariable [QEGVAR(Gear,savedLoadout), false]) exitWith {false};

private _loadout = _unit getVariable QEGVAR(Gear,Loadout);
[_unit, _loadout] call EFUNC(gear,applyLoadout);

#ifdef DEBUG_MODE
    ["Loaded stored loadout.", "Gear"] call FUNC(logInfo);
#endif

true