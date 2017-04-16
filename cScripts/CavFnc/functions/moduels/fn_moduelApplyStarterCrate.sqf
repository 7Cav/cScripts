/*
 * Author: CPL.Brostrom.A 
 * This function checks if the helicopter type is correct and apply the desired logo.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Texture <STRING>
 *
 * Example:
 *  call cScripts_fnc_moduelApplyTailNumber;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params [["_crate", objNull, [objNull]]];

_crateType = ["I_supplyCrate_F","O_supplyCrate_F","C_T_supplyCrate_F","C_supplyCrate_F","IG_supplyCrate_F","B_supplyCrate_F"];

if (typeOf _crate in _crateType) then {
    [_crate] call FUNC(doStarterCrate);
} else {
    ["No or wrong type of object/crate selected."] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};