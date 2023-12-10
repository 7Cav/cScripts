#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function regear to a given unit.
 *
 * Arguments:
 * 0: modulePos <POSITION>
 * 1: objectPos <OBJECT>
 *
 * Example:
 * [getPos logic, this] call cScripts_fnc_zenModule_regearTrooper
 *
 * Public: No
 */

params ["_modulePos", "_objectPos"];

if (_objectPos isKindOf "Man") exitWith {
    private _unit = _objectPos;
    [QEGVAR(gear,applyLoadout), [_unit], _unit] call CBA_fnc_targetEvent;
    [format["Regeared %1", name _unit]] call zen_common_fnc_showMessage;
};

["Not a valid unit"] call zen_common_fnc_showMessage;