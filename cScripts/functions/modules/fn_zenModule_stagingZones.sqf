#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, CPL.Dunn.W
 * This module function can disable the staging zones mid mission.
 *
 * Arguments:
 * 0: modulePos <POSITION>
 * 1: objectPos <OBJECT>
 * 
 *
 * Example:
 * [getPos logic, this] call cScripts_fnc_zenModule_callEndex;
 *
 * Public: No
 */

params ["_modulePos", "_objectPos"];

[
    "Staging zones", 
    [
        ["CHECKBOX", ["Allow access to staging zones", ""], true, false],
    ], 
    {
        params ["_arg", "_pos"];
        _arg params [
            "_stagingZones"
        ];
        _pos params ["_modulePos"];

        if (_stagingZones) then {
            missionNamespace setVariable [QEGVAR(mission,stagingZonesEnabled), true];
        } else {
            missionNamespace setVariable [QEGVAR(mission,stagingZonesEnabled), false];
        };
    },
    {},
    [_modulePos]
] call zen_dialog_fnc_create;
