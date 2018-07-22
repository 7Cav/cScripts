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
    if (vehicleVarName player == "") then {
        [player, typeOf player] call Poppy_fnc_applyLoadout;
    } else {
        [player, vehicleVarName player] call Poppy_fnc_applyLoadout;
    };
    [_unit, currentWeapon _unit, currentMuzzle _unit] call ace_safemode_fnc_lockSafety;
} else {
    ["Not a unit!"] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};
