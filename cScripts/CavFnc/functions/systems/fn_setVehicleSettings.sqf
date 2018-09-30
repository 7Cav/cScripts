#include "..\script_component.hpp";
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

params [["_vehicle", objNull, [objNull]]];

if (!isNil{_vehicle getVariable QEGVAR(Vehicle,Settings)}) exitWith {[formatText["Vehicle settings already applied for %1.", _vehicle]] call FUNC(logWarning);};

#ifdef DEBUG_MODE
    [formatText["Applying vehicle settings to %1.", _vehicle]] call FUNC(logInfo);
#endif

private _transportRotary = ["RHS_UH60M_MEV_d","RHS_UH60M_MEV2_d","RHS_UH60M2_d","RHS_UH60M_ESSS_d","RHS_UH60M_ESSS2_d","RHS_UH60M_d","RHS_UH60M","RHS_UH60M_ESSS","RHS_UH60M_ESSS2","RHS_UH60M2","RHS_UH60M_MEV2","RHS_UH60M_MEV","RHS_UH1Y_FFAR_d","RHS_UH1Y_d","RHS_UH1Y_UNARMED_d","RHS_UH1Y_FFAR","RHS_UH1Y","RHS_UH1Y_UNARMED","B_Heli_Transport_01_F"];
private _fixedWingTransport = ["RHS_C130J"];

switch (true) do {
    case (typeOf _vehicle in _transportRotary): {
        [_vehicle] call FUNC(addGetOutHelo);
    };
    case (typeOf _vehicle in _fixedWingTransport): {
        [_vehicle] call FUNC(addJump);
    };
};

_vehicle setVariable [QEGVAR(Vehicle,Settings), true];
