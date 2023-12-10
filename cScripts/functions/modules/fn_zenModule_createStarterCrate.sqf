#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Modified by: PVT.Schouten.M
 * This module function spawn a 7th Cavalry Starter Crate.
 *
 * Arguments:
 * 0: modulePos <POSITION>
 * 1: objectPos <OBJECT>
 *
 * Example:
 * [getPos logic, this] call cScripts_fnc_zenModule_createStarterCrate;
 *
 * Public: No
 */

params ["_modulePos", "_objectPos"];

[
    "7th Cavalry Starter Crate", 
    [
        ["CHECKBOX", ["Heal action", "Enables the crate to heal your wonds on regear as well as a separat action."], true, false],
        ["LIST", ["Company, squad or group", "Select the company, group or squad the crate should populate loadouts with."],
            [
                [
                    'All',
                    'None',
                    'Alpha',
                    'Buffalo',
                    'Titan',
                    'Raider',
                    'Sparrow',
                    'Eagle',
                    'Hog',
                    'Bravo',
                    'Saber',
                    'Banshee',
                    'Viking',
                    'Lancer',
                    'Atlas',
                    'Charlie',
                    'Bandit',
                    'Misfit'
                ],
                [
                    'Everything',
                    'None',
                    'Alpha Company',
                    '        - Buffalo',
                    '        - Titan',
                    '        - Raider',
                    '        - Sparrow',
                    '        - Eagle',
                    '        - Hog',
                    'Bravo Company',
                    '        - Saber',
                    '        - Banshee',
                    '        - Viking',
                    '        - Lancer',
                    '        - Atlas',
                    'Charlie Company',
                    '        - Bandit',
                    '        - Misfit'
                ],
                1,
                12
            ], false],
        ["CHECKBOX", ["Allow all loadouts", "Show and allow all loadouts to be accessable."], false, false]
    ],
    {
        params ["_arg", "_pos"];
        _arg params [
            "_reHealOption",
            "_quickSelectScale",
            "_allowAllLoadouts"
        ];
        _pos params ["_modulePos"];
        private _crate = "B_supplyCrate_F" createVehicle _modulePos;
        [_crate, _quickSelectScale, true, _reHealOption, true, _allowAllLoadouts] remoteExec [QFUNC(doStarterCrate), 0, true];

        // Add object to Zeus
        [{
            _this call ace_zeus_fnc_addObjectToCurator;
        }, _crate] call CBA_fnc_execNextFrame;
    },
    {},
    [_modulePos]
] call zen_dialog_fnc_create;