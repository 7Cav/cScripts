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

_dialogResult = [
    "7th Cavalry Supply Crate",
    [
        ["Supply Size","SLIDER",1]
    ]
] call Ares_fnc_ShowChooseDialog;

if (count _dialogResult == 0) exitWith {};

_supplieSize = _dialogResult select 0;

_crate = "B_CargoNet_01_ammo_F" createVehicle _pos;
[_crate,_supplieSize] remoteExec ["cScripts_fnc_doSupplyCrate",0,true];