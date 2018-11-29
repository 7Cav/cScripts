#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A (With the help from; 654wak654)
 * Move the player outside the passanger door on the left side.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_doGetOutHeloLeft;
 */

params [["_vehicle", objNull, [objNull]]];

private _rhs_UH60 = ["RHS_UH60M_MEV_d","RHS_UH60M_MEV2_d","RHS_UH60M2_d","RHS_UH60M_ESSS_d","RHS_UH60M_ESSS2_d","RHS_UH60M_d","RHS_UH60M","RHS_UH60M_ESSS","RHS_UH60M_ESSS2","RHS_UH60M2","RHS_UH60M_MEV2","RHS_UH60M_MEV"];
private _UH80 = ["B_CTRG_Heli_Transport_01_sand_F","B_CTRG_Heli_Transport_01_tropic_F","B_Heli_Transport_01_F"];

switch (true) do {
    case (typeOf _vehicle in _rhs_UH60): {
        if (_vehicle doorPhase "doorLB" == 0) then{
            _vehicle animateDoor ["doorLB", 1];
        } else {
            if (_vehicle doorPhase "doorLB" != 0) then {
                [_vehicle, "doorLB"] spawn rhs_fnc_doorHandler;
            };
        };
    };
    // case (typeOf _vehicle in _UH80): {
    //     if (_vehicle doorPhase "Door_L" == 0) then{
    //         _vehicle animateDoor ["Door_L", 1];
    //     };
    // };
};
sleep 1;

// Left
private _dir = getDir _vehicle - 50;
private _posASL = (getPosASL _vehicle) vectorAdd [sin _dir * 2.5, cos _dir * 2.5, 0];
moveOut player;
player setPosASL _posASL;
player setDir _dir - 40;
