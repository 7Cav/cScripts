#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
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

[
    "Unit injuries", 
    [
        ["CHECKBOX", ["Mak unit unconscious", ""], true, false],
        ["LIST", ["Injurie", "Select type of injurie"],
            [
                [
                    'Nothing'
                    '2 bullets in the cheast'
                ],
                [
                    ''
                    'twoBulletInChest'
                ],
                0,
                1
            ], false],
    ], 
    {
        params ["_arg", "_pos"];
        _arg params ["_setUnconscious"];
        _pos params ["_objectPos"];
        
        [_objectPos, _setUnconscious] call ace_medical_fnc_setUnconscious;

        switch () do {
            case "twoBulletInChest": {
                [_objectPos, 0.20, "hitbody", "bullet"] call ace_medical_fnc_addDamageToUnit;
                [_objectPos, 0.20, "hitbody", "bullet"] call ace_medical_fnc_addDamageToUnit;
            };
            default {};
        };
    },
    {},
    [_objectPos]
] call zen_dialog_fnc_create;
