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

params ["_crate"];

private _dialogResult = [
    "7th Cavalry Starter Crate",
    [
        ["Company Crate Type",["None","Alpha","Bravo","Charlie","Heavy Weapons","Ranger","Sniper","Medical","All"],0],
        ["ReGear action",["true","false"],0],
        ["Heal action",["true","false"],0],
        ["Insignia Selection",["true","false"],0],
        ["Company Variable Required",["true","false"],1],
        ["Add full arsenal",["true","false"],1]
    ]
] call Ares_fnc_ShowChooseDialog;

if (count _dialogResult == 0) exitWith {};

private _quickSelectScale = switch (_dialogResult select 0) do {
    case 0: {"none";};
    case 1: {"alpha";};
    case 2: {"bravo";};
    case 3: {"charlie";};
    case 4: {"heavyweapons";};
    case 5: {"ranger";};
    case 6: {"sniper";};
    case 7: {"medical";};

    case 8: {"full";};
};

private _reGearOption = if (_dialogResult select 1 == 0) then {true} else {false};
private _reHealOption = if (_dialogResult select 2 == 0) then {true} else {false};
private _InsigniaSelectOption = if (_dialogResult select 3 == 0) then {true} else {false};
private _requirePlatoonVariable = if (_dialogResult select 4 == 0) then {true} else {false};
private _arsenal = if (_dialogResult select 5 == 0) then {true} else {false};

_crate = "B_supplyCrate_F" createVehicle _crate;
[_crate,_quickSelectScale,_reGearOption,_reHealOption,_InsigniaSelectOption,_requirePlatoonVariable,_arsenal] remoteExec [QFUNC(doStarterCrate),0,true];
[_crate] call ace_zeus_fnc_addObjectToCurator;
