/*
 * Author: CPL.Brostrom.A
 * This function gear a helicopter with fastrope and add the get out right and left ability.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 *  call cScripts_fnc_moduleReadyHelicopter;
 */

#include "..\script_component.hpp";

params ["_vehicle"];

_vehicle = [_logic, false] call Ares_fnc_GetUnitUnderCursor;
_vehicleType = [
    "B_CTRG_Heli_Transport_01_sand_F",
    "B_CTRG_Heli_Transport_01_tropic_F",
    "B_Heli_Transport_01_F",
    "B_Heli_Transport_01_camo_F",
    "RHS_UH60M_d",
    "RHS_UH60M_MEV2_d",
    "RHS_UH60M_MEV_d",
    "RHS_UH60M",
    "RHS_UH60M_MEV2",
    "RHS_UH60M_MEV",
    "RHS_UH1Y_FFAR_d",
    "RHS_UH1Y_d",
    "RHS_UH1Y_d_GS",
    "RHS_UH1Y_UNARMED_d",
    "RHS_UH1Y_FFAR",
    "RHS_UH1Y",
    "RHS_UH1Y_GS",
    "RHS_UH1Y_UNARMED"
];

if (typeOf _vehicle in _vehicleType) then {
    [_vehicle] remoteExec ["cScripts_fnc_addGetOutHelo",0,true];
} else {
    ["No or wrong type helicopter selected!"] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};
