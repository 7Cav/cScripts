#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function apply the doctor ability to a given unit.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Example:
 * this call cScripts_fnc_moduleMakeEngineer
 *
 * Public: No
 */

params ["_unit"];

_unit = [_logic, false] call Ares_fnc_GetUnitUnderCursor;

if (_unit isKindOf "Man") then {
    _unit setVariable ["ACE_medical_medicClass", 2, true];
} else {
    ["Not a unit!"] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};
