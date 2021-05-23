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
    [_unit] remoteExec [QEFUNC(gear,setupRadios), _unit];

    [format["Radio reset for %1", name _unit]] call zen_common_fnc_showMessage;
};

[
    "Reset radio for all players", 
    [
        ["CHECKBOX", ["Are you sure?", ""], false, false]
    ], 
    {
        params ["_arg", "_pos"];
        _arg params ["_sure"];
        _pos params ["_modulePos"];


        if (_sure) exitWith {
            [player] remoteExec [QEFUNC(gear,setupRadios), 0];
            ["Radio have been reset for all players called"] call zen_common_fnc_showMessage;
        };
        ["Nothing have been done"] call zen_common_fnc_showMessage;
    },
    {},
    [_modulePos]
] call zen_dialog_fnc_create;
