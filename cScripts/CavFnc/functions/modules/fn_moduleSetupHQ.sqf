/*
 * Author: CPL.Brostrom.A
 * This function aply a vehicle rack to a given object accesable only from the outside.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 *  call cScripts_fnc_moduleMakeDoctor;
 */

#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]],
    ["_radio","ACRE_PRC117F"]
];

_vehicle = [_logic, false] call Ares_fnc_GetUnitUnderCursor;

if (_vehicle isKindOf "thingx") then {
    #ifdef DEBUG_MODE
        [formatText["Setting up a HQ on %1.", _vehicle]] call FUNC(logInfo);
    #endif
    [_vehicle, {}] call acre_api_fnc_initVehicleRacks;
    [_vehicle, ["ACRE_VRC103", "HQ Radio", "ERadio", false, ["external"], [], _radio, [], []],false, {true}] call acre_api_fnc_addRackToVehicle;
} else {
    ["Not a valid object!"] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};
