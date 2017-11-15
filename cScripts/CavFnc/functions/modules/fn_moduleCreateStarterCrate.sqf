/*
 * Author: CPL.Brostrom.A
 * Modified by: PVT.Schouten.M
 * This function crates a startercrate.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 *  this call moduleCreateStarterCrate;
 */

#include "..\script_component.hpp";

params ["_crate","_pos"];

_pos = _this select 0;

_dialogResult = [
    "7th Cavalry Starter Crate",
    [
        ["Quick Select Scale",["none","lite","medium","full","ranger"],0],
        ["ReGear action",["true","false"],1],
        ["Heal action",["true","false"],0],
        ["Insignia Selection",["true","false"],0],
        ["Supply Size","SLIDER",1]
    ]
] call Ares_fnc_ShowChooseDialog;

if (count _dialogResult == 0) exitWith {};

_quickSelectScale = switch (_dialogResult select 0) do {
    case 0: {"none";};
    case 1: {"lite";};
    case 2: {"medium";};
    case 3: {"full";};
    case 4: {"ranger";};
};

_reGearOption = if (_dialogResult select 1 == 0) then {true} else {false};
_reHealOption = if (_dialogResult select 2 == 0) then {true} else {false};
_InsigniaSelectOption = if (_dialogResult select 3 == 0) then {true} else {false};
_supplieSize = _dialogResult select 4;

_crate = "B_supplyCrate_F" createVehicle _pos;
[_crate,_quickSelectScale,_reGearOption,_reHealOption,_InsigniaSelectOption,_supplieSize] remoteExec ["cScripts_fnc_doStarterCrate",0,true];
