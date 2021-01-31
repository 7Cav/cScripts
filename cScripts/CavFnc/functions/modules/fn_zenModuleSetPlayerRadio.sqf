#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, CPL.Dunn.W
 * This module resets the player radio.
 *
 * Arguments:
 * 0: modulePos <POSITION>
 * 1: objectPos <OBJECT>
 * 
 * Example:
 * [getPos logic, this] call cScripts_fnc_zenModuleSetPlayerRadio;
 *
 * Public: No
 */

params ["_modulePos", "_objectPos"];

if (_objectPos isKindOf "Man") exitWith {
    private _unit = _objectPos;
    [] remoteExec [QEFUNC(gear,setupRadios), _unit];
};

["Not a valid unit"] call zen_common_fnc_showMessage;