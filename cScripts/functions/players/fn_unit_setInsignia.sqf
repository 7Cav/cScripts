#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function sets your insignia and save it to your profile.
 *
 * Arguments:
 * 0: Unit <STRING>
 * 1: Insignia <STRING>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [bob, "curator"] call cScripts_fnc_unit_setInsignia
 *
 */

params [
    ["_unit", objNull, [objNull]],
    ["_insignia", "", [""]]
];

[_unit, _insignia] call BIS_fnc_setUnitInsignia;
if (GVAR(isPlayer)) then {[_insignia] call EFUNC(player,saveInsignia);};