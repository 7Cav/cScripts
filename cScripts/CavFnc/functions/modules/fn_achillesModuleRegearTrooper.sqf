#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function regear to a given unit.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Example:
 * this call cScripts_fnc_moduleRegearTrooper
 *
 * Public: No
 */

params ["_unit"];

_unit = [_logic, false] call Ares_fnc_GetUnitUnderCursor;

if (_unit isKindOf "Man") then {
    if (vehicleVarName _unit == "") then {
        [_unit, typeOf _unit] remoteExec ["Poppy_fnc_applyLoadout", _unit];
    } else {
        [_unit, vehicleVarName _unit] remoteExec ["Poppy_fnc_applyLoadout", _unit];
    };
} else {
    ["Not a unit!"] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};
