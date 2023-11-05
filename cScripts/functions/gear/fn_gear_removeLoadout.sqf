#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function remove any saved loadout
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * true or false <BOOL>
 *
 * Example:
 * [player] call cScripts_fnc_gear_removeLoadout
 *
 */

params [["_unit", objNull, [objNull]]];

if (_unit call EFUNC(gear,hasSavedLoadout)) exitWith {false};

_unit setVariable [QEGVAR(Gear,Loadout), nil];
_unit setVariable [QEGVAR(Gear,SavedLoadout), nil];

true
