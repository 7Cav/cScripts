#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function return true or false if you have a loadout stored.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * True you have a saved loadout <BOOL>
 *
 * Example:
 * [bob] call cScripts_fnc_gear_hasSavedLoadout
 *
 */

params [["_unit", objNull, [objNull]]];

_unit getVariable [QEGVAR(Gear,SavedLoadout), false];