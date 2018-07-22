/*
 * Author: CPL.Brostrom.A
 * This function crates a supply crate.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 *  this call moduelCreateSupplyCrate;
 */

#include "..\script_component.hpp";

params ["_crate","_pos"];

_pos = _this select 0;

private _dialogResult = [
    "7th Cavalry Supply Crate",
    [
        ["Supply Size","SLIDER",1]
    ]
] call Ares_fnc_ShowChooseDialog;

if (count _dialogResult == 0) exitWith {};

private _supplieSize = _dialogResult select 0;

private _crate = "B_CargoNet_01_ammo_F" createVehicle _pos;
[_crate,_supplieSize] remoteExec ["cScripts_fnc_doSupplyCrate",0,true];

// Change ace characteristics of crate
[_crate, 1] call ace_cargo_fnc_setSize;
[_crate, true] call ace_dragging_fnc_setDraggable;
[_crate, true] call ace_dragging_fnc_setCarryable;

// Add to curator so Zeus can manipulate it
[_crate] call ace_zeus_fnc_addObjectToCurator;
