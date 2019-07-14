#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function spawn a supply crate.
 *
 * Arguments:
 * 0: Moduel Position <Position>
 *
 * Example:
 * [x, y, z] call cScripts_fnc_moduleCreateSupplyCrate
 *
 * Public: No
 */

params ["_modulePos"];

[
    "7th Cavalry Supply Crate", 
    [
        ["SLIDER:PERCENT", ["Supply size", "Regulate the total amount of supplies in the crate"], [0,1,1], false]
    ], 
    {
        params ["_modulePos", "_size"];
        private _crate = "B_CargoNet_01_ammo_F" createVehicle _modulePos;
        [_crate, _size] remoteExec [QFUNC(doSupplyCrate),0,true];

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
    ["_modulePos"]
] call zen_dialog_fnc_create;
