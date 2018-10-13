#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function spawn a 7th Cavalry Fieald Hostpital.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * this call cScripts_fnc_moduleCreateFieldHostpital
 *
 * Public: No
 */

params ["_crate"];

private _dialogResult = [
    "7th Cavalry Fieald Hostpital Crate",
    [
        ["Supply Size","SLIDER",1]
    ]
] call Ares_fnc_ShowChooseDialog;

if (count _dialogResult == 0) exitWith {};

private _supplieSize = _dialogResult select 0;

private _crate = "C_IDAP_supplyCrate_F" createVehicle _crate;
[_crate,true,_supplieSize] remoteExec [QFUNC(doFieldHospital),0,true];

// Change ace characteristics of crate
[_crate, 1] call ace_cargo_fnc_setSize;
[_crate, true] call ace_dragging_fnc_setDraggable;
[_crate, true] call ace_dragging_fnc_setCarryable;

// Add to curator so Zeus can manipulate it
[_crate] call FUNC(addObjectToCurator);
