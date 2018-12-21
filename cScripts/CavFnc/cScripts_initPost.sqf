#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This script run on all vehicles on the mission.
 */
#define DEBUG_MODE;

params [["_vehicle", objNull, [objNull]]];

if (is3DEN) exitWith {};
if ((typeOf _vehicle) isKindOf ["Man", configfile >> "CfgVehicles"]) exitWith {};

if (EGVAR(Settings,allowCustomInit)) then {
    #ifdef DEBUG_MODE
        format["initPost initialize on %1", _vehicle] call FUNC(logInfo);
    #endif
    if (EGVAR(Settings,useCustomVehicleSettings)) then {
        [_vehicle] call FUNC(initVehicleInventory);
    };
};