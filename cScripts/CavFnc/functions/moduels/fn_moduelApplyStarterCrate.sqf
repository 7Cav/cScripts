/*
 * Author: CPL.Brostrom.A 
 * This function crates a startercrate of a given object.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 *  this call moduelApplyStarterCrate;
 */

#include "..\script_component.hpp";

params ["_crate"];

_crate = [_logic, false] call Ares_fnc_GetUnitUnderCursor;
_crateType = ["I_supplyCrate_F","O_supplyCrate_F","C_T_supplyCrate_F","C_supplyCrate_F","IG_supplyCrate_F","B_supplyCrate_F"];

if (typeOf _crate in _crateType) then {

    _dialogResult = [
        "7th Cavalry Starter Crate",
        [
            ["Quick Select Scale",["none","lite","medium","full","ranger"],0],
            ["ReGear action",["true","false"],0],
            ["Heal action",["true","false"],0],
            ["Insignia Selection",["true","false"],0],
            ["Supply Size (Currently forced 1)", "1", "1"]
        ]
    ] call Ares_fnc_ShowChooseDialog;

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

    [_crate,_quickSelectScale,_reGearOption,_reHealOption,_InsigniaSelectOption,1] remoteExec ["cScripts_fnc_doStarterCrate",0,true];
} else {
    ["No or wrong type of object/crate selected!"] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};