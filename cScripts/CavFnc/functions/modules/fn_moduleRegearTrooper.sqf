/*
 * Author: CPL.Brostrom.A
 * Thsi function is a moduel that aply the doctor ability to a given unit.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 *  call cScripts_fnc_moduleRegearTrooper;
 */

#include "..\script_component.hpp";

params ["_unit"];

_unit = [_logic, false] call Ares_fnc_GetUnitUnderCursor;

if (_unit isKindOf "Man") then {
    if (vehicleVarName _unit == "") then {
        [_unit, typeOf _unit] call Poppy_fnc_applyLoadout;
    } else {
        [_unit, vehicleVarName _unit] call Poppy_fnc_applyLoadout;
    };
} else {
    ["Not a unit!"] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};
