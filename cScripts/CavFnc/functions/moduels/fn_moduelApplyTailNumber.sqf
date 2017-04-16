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

params [["_vehicle", objNull, [objNull]],"_texture"];

_vehicleType = ["RHS_UH60M_d", "RHS_UH60M_MEV2_d", "RHS_UH60M_MEV_d", "RHS_UH60M", "RHS_UH60M_MEV2", "RHS_UH60M_MEV"];

if (typeOf _vehicle in _vehicleType) then {
    [_vehicle,_texture] call FUNC(UH60TailNumber);
} else {
    ["No or wrong type helicopter selected."] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};