#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Modified by: PVT.Schouten.M
 * This module function spawn a 7th Cavalry Starter Crate.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * this call cScripts_fnc_moduleCreateStarterCrate;
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
                    'Bravo',
                    'Lancer',
                    'Apollo',
                    'Mustang',
                    'Charlie',
                    'Bandit',
                    'Misfit'
                ],
                [
                    'Everything',
                    'None',
                    'Alpha Company',
                    'Bravo Company',
                    '        - Lancer',
                    '        - Apollo',
                    '        - Mustang',
                    'Charlie Company',
                    '        - Bandit',
                    '        - Misfit'
                ],
                1,
                12
            ], false],
        ["CHECKBOX", ["Owned by category", "Loadouts only avalible for selected company if your not in this company you cant select the loadout."], false, false],
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
        [_crate,_quickSelectScale,_reGearOption,_reHealOption,_InsigniaSelectOption,_requireCompanyVariable,_arsenal] remoteExec [QFUNC(doStarterCrate),0,true];

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