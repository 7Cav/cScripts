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
 * [getPos logic, this] call cScripts_fnc_moduleCreateStarterCrate;
 *
 * Public: No
 */

params ["_modulePos", "_objectPos"];

[
    "7th Cavalry Starter Crate", 
    [
        ["CHECKBOX", ["Regear action", "Allow you to regear on the crate."], true, false],
        ["CHECKBOX", ["Heal action", "Enables the crate to heal your wonds on regear as well as a separat action."], true, false],
        ["CHECKBOX", ["Insignia Selection", "Allow the selection of our insignias"], true, false],
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
        ["CHECKBOX", ["Owned by category", "Loadouts only avalible for selected company if your not in this company or squad you cant select the loadout."], false, false],
        ["CHECKBOX", ["Arsenal", "Enable the 7Cav Arsenal. It is limited to only cav equipment used."], false, false]
    ],
    {
        params ["_arg", "_pos"];
        _arg params [
            "_reGearOption",
            "_reHealOption",
            "_InsigniaSelectOption",
            "_quickSelectScale",
            "_requireCompanyVariable",
            "_arsenal"
        ];
        _pos params ["_modulePos"];

        private _crate = "B_supplyCrate_F" createVehicle _modulePos;
        [_crate,_quickSelectScale,_reGearOption,_reHealOption,_InsigniaSelectOption,_requireCompanyVariable,_arsenal] remoteExec [QFUNC(doStarterCrate),2,true];

        // Add object to Zeus
        [
            {
                params ["_crate"];
                _crate == vehicle _crate;
            },
            {
                params ["_crate"];
                _crate call FUNC(addObjectToCurator);
            },
            [_crate]
        ] call CBA_fnc_waitUntilAndExecute;
    },
    {},
    [_modulePos]
] call zen_dialog_fnc_create;