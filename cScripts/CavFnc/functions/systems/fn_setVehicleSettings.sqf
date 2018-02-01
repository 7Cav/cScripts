/*
 * Author: CPL.Brostrom.A
 * This
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Lable <INTERGER> (Optinal)
 *
 * Example:
 *
 */

#include "..\script_component.hpp";

if (!isServer) exitwith {};

params [["_vehicle", objNull, [objNull]]];

//if (!isNil{_vehicle getVariable QGVAR(hasVehichleSettings)}) exitWith {};

private _transportRotary = ["RHS_UH60M_MEV_d","RHS_UH60M_MEV2_d","RHS_UH60M2_d","RHS_UH60M_ESSS_d","RHS_UH60M_ESSS2_d","RHS_UH60M_d","RHS_UH60M","RHS_UH60M_ESSS","RHS_UH60M_ESSS2","RHS_UH60M2","RHS_UH60M_MEV2","RHS_UH60M_MEV","RHS_UH1Y_FFAR_d","RHS_UH1Y_d","RHS_UH1Y_UNARMED_d","RHS_UH1Y_FFAR","RHS_UH1Y","RHS_UH1Y_UNARMED","B_Heli_Transport_01_F"];
private _fixedWingTransport = ["RHS_C130J"];

switch (true) do {
    case (typeOf _vehicle in _transportRotary): {
        [_vehicle] call FUNC(addGetOutHelo);
    };
    case (typeOf _vehicle in _fixedWingTransport): {
        [_vehicle,200,160,250] call FUNC(addJump);
    };
};

_vehicle setVariable [QGVAR(hasVehichleSettings), true];
