#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function save players loadout
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [player] call cScripts_fnc_gear_saveLoadout
 *
 */

params [["_unit", objNull, [objNull]]];

private _loadout = getUnitLoadout _unit;

_unit setVariable [QEGVAR(Gear,Loadout), _loadout];
_unit setVariable [QEGVAR(Gear,savedLoadout), true];

#ifdef DEBUG_MODE
    ["Saved current loadout.", "Gear"] call FUNC(logInfo);
#endif

_unit getVariable [QEGVAR(Gear,savedLoadout), false];
