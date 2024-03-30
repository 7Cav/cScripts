#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, J.Turn
 * This module function spawn a supply crate.
 *
 * Arguments:
 * 0: modulePos <POSITION>
 * 1: objectPos <OBJECT>
 *
 * Example:
 * [getPos logic, this] call cScripts_fnc_zenModule_createSupplyCrate
 *
 * Public: No
 */

params ["_modulePos", "_objectPos"];
// The crate type that will be passed to the supply crate spawner.
private _crateTypeList = [
    'crate_resupply_general',
    'crate_medicalAtlas', 
    'crate_medicalInfantry',
    'crate_stinger'
];

// Display text for the crate list selection. This is what the zeus sees.
private _displayTextList = 
[
    ['Infantry Resupply', "Contains weapons, ammo, and supplies for one infantry platoon"],
    ['Atlas Team', "Contains enough supplies to sustain two Atlas teams as well supplementing one infantry platoon."],
    ['Infantry Medical', "Contains enough medical supplies for one infantry platoon."],
    ['Stinger MANPAD', "Contains 1 launcher and 2 missiles."]
];
[
    "7th Cavalry Supply Crates", 
    [
        ["LIST", ["Crate Type", "Select the type of unit you are supplying with this crate"],
            [
                _crateTypeList,
                _displayTextList,
                0,
                4
            ], false]
    ], 
    {
        params ["_arg", "_pos"];
        _arg params ["_crateType"];
        _pos params ["_modulePos"];
        
        [_modulePos, _crateType] remoteExec [QFUNC(doSupplyCrate), 2, false];
    },
    {},
    [_modulePos]
] call zen_dialog_fnc_create;
