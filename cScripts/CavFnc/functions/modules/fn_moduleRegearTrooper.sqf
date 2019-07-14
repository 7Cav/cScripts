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

params ["_objectPos"];

private _unit = _objectPos;

if (_unit isKindOf "Man") exitWith {
    if (vehicleVarName _unit == "") then {
        [_unit, typeOf _unit] call Poppy_fnc_applyLoadout;
    } else {
        [_unit, vehicleVarName _unit] call Poppy_fnc_applyLoadout;
    };
};

["Not a valid unit"] call zen_common_fnc_showMessage;