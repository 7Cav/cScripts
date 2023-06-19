#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, SPC.Turn.J
 * This module function spawn a supply medical crate.
 *
 * Arguments:
 * 0: modulePos <POSITION>
 * 1: objectPos <OBJECT>
 *
 * Example:
 * [getPos logic, this] call cScripts_fnc_zenModule_createMedicalCrate
 *
 * Public: No
 */

params ["_modulePos", "_objectPos"];

// The crate type that will be passed to the supply crate spawner.
private _crateTypeList = [
    'atlas', 
    'platoon'
];

// Display text for the crate list selection. This is what the zeus sees.
private _displayTextList = 
[
    ['Atlas Team', "Contains enough supplies to sustain two Atlas teams as well supplementing one infantry platoon."],
    ['Infantry Plt', "Contains enough medical supplies for one infantry platoon."]
];


[
    "7th Cavalry Medical Crate", 
    [
        ["LIST", ["Crate Type", "Select the type of unit you are supplying with this crate"],
            [
                _crateTypeList,
                _displayTextList,
                0,
                2
            ], false]
    ], 
    {
        params ["_arg", "_pos"];
        _arg params ["_crateType"];
        _pos params ["_modulePos"];
        
        private _crate = "ACE_medicalSupplyCrate" createVehicle _modulePos;
        [_crate, _crateType] remoteExec [QFUNC(doMedicalCrate), 0, true];

        // Change ace characteristics of crate
        
        [_crate, 1] call ace_cargo_fnc_setSize;
        [_crate, true] call ace_dragging_fnc_setDraggable;
        [_crate, true] call ace_dragging_fnc_setCarryable;
        

        // Use existing function to set ACE3 characteristics.
        //[_crate, -1, 1] remoteExec [QEFUNC(setCargoAttributes), 0, true];
        // Add object to Zeus
        [{
            _this call ace_zeus_fnc_addObjectToCurator;
        }, _crate] call CBA_fnc_execNextFrame;
    },
    {},
    [_modulePos]
] call zen_dialog_fnc_create;
