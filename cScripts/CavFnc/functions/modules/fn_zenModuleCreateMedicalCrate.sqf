#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function spawn a supply medical crate.
 *
 * Arguments:
 * 0: modulePos <POSITION>
 * 1: objectPos <OBJECT>
 *
 * Example:
 * [getPos logic, this] call cScripts_fnc_moduleCreateSupplyCrate
 *
 * Public: No
 */

params ["_modulePos", "_objectPos"];

[
    "7th Cavalry Medical Crate", 
    [
        ["SLIDER:PERCENT", ["Supply size", "Regulate the total amount of supplies in the crate"], [0, 1, 1], false]
    ], 
    {
        params ["_arg", "_pos"];
        _arg params ["_size"];
        _pos params ["_modulePos"];

        private _crate = "ACE_medicalSupplyCrate" createVehicle _modulePos;
        [_crate, _size] remoteExec [QFUNC(doMedicalCrate),0,true];

        // Change ace characteristics of crate
        [_crate, 1] call ace_cargo_fnc_setSize;
        [_crate, true] call ace_dragging_fnc_setDraggable;
        [_crate, true] call ace_dragging_fnc_setCarryable;

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
