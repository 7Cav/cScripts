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
        ["Crate Content",["Mortar","M2 50 CAL","Mk19","TOW","All"],0],
        ["Supply Size","SLIDER",1]
    ]
] call Ares_fnc_ShowChooseDialog;

if (count _dialogResult == 0) exitWith {};

private _crateType = switch (_dialogResult select 0) do {
    case 0: {"mortar";};
    case 1: {"m2";};
    case 2: {"mk19";};
    case 3: {"tow";};
    case 4: {"All";};
};

private _supplieSize = _dialogResult select 1;

private _crate = "B_CargoNet_01_ammo_F" createVehicle _pos;
[_crate,_supplieSize,_crateType] remoteExec ["cScripts_fnc_doSupplyCrate",0,true];
