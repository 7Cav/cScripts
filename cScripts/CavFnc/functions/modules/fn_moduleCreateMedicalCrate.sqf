#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function spawn a supply medical crate.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * this call cScripts_fnc_moduleCreateMedicalCrate
 *
 * Public: No
 */

params ["_crate"];

private _dialogResult = [
    "7th Cavalry Medical Crate",
    [
        ["Medical Size","SLIDER",1]
    ]
] call Ares_fnc_ShowChooseDialog;

if (count _dialogResult == 0) exitWith {};

private _supplieSize = _dialogResult select 0;

private _crate = "ACE_medicalSupplyCrate" createVehicle _crate;
[_crate,_supplieSize] remoteExec [QFUNC(doMedicalCrate),0,true];

// Change ace characteristics of crate
[_crate, 1] call ace_cargo_fnc_setSize;
[_crate, true] call ace_dragging_fnc_setDraggable;
[_crate, true] call ace_dragging_fnc_setCarryable;

// Add to curator so Zeus can manipulate it
[{(_this select 0) == vehicle (_this select 0)}, {
     _this select 0 call FUNC(addObjectToCurator)
}, [_crate]] call CBA_fnc_waitUntilAndExecute;