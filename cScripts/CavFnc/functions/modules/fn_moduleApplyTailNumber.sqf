/*
 * Author: CPL.Brostrom.A
 * This function checks if the helicopter type is correct and apply the desired logo.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Texture <STRING>
 *
 * Example:
 *  call cScripts_fnc_moduleApplyTailNumber;
 */

#include "..\script_component.hpp";

params ["_vehicle"];

_vehicle = [_logic, false] call Ares_fnc_GetUnitUnderCursor;
_vehicleType = ["RHS_UH60M_d", "RHS_UH60M_MEV2_d", "RHS_UH60M_MEV_d", "RHS_UH60M", "RHS_UH60M_MEV2", "RHS_UH60M_MEV"];

if (typeOf _vehicle in _vehicleType) then {

    _dialogResult = [
        "Helicopter Tailnumber Selection",
        [
            ["Tail number",["B1","B2","B3","B4"],0]
        ]
    ] call Ares_fnc_ShowChooseDialog;

    _texture = switch (_dialogResult select 0) do {
        case 0: {"b1";};
        case 1: {"b2";};
        case 2: {"b3";};
        case 3: {"b4";};
    };

    [_vehicle,_texture] remoteExec ["cScripts_fnc_UH60TailNumber",0,true];
} else {
    ["No or wrong type helicopter selected!"] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};
