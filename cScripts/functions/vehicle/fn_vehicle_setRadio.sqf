#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function changes the inventory of the given vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: Channel <NUMBER>
 *
 * Example:
 * ["vic"] call cScripts_fnc_vehicle_setRadio;
 */
params [
    ["_vehicle", objNull, [objNull]],
    ["_radioChannel", [], [[]]]
];

if (!isServer) exitWith {};
if (!EGVAR(patches,usesACRE)) exitWith {};
if (!EGVAR(Settings,enableACRE)) exitWith {};
if (!EGVAR(Settings,enableVehicleRadios)) exitWith {};
if (isNull _vehicle) exitWith { ["Vehicle is null", "Vehicle Radio"] call FUNC(error); };

// Is valid vehicle
private _factionArray = parseSimpleArray EGVAR(Settings,vehicleFactions);
if !(_factionArray isEqualType []) exitWith {["Faction array have not been setup correctly.", "Vehicle"] call FUNC(error);};
if (!(faction _vehicle in _factionArray)) exitWith {};

[_vehicle, "default"] call acre_api_fnc_setVehicleRacksPreset;
[_vehicle, {}] call acre_api_fnc_initVehicleRacks;

waitUntil { _vehicle call acre_api_fnc_areVehicleRacksInitialized };

#ifdef DEBUG_MODE
    [format["Vehicle rack initzialized for %1 (%2)", _vehicle, typeOf _vehicle], "Vehicle Radio" ] call FUNC(info);
#endif

private _racks = [_vehicle] call acre_api_fnc_getVehicleRacks;
if (count _racks == 0) exitWith {[format["No Vehicle Racks discoverd for %1 (%2).", _vehicle, typeOf _vehicle], "Vehicle Radio"] call FUNC(info)};

// Add extra channels
_radioChannel = _radioChannel + [1,1,1,1,1];

{
    private _radio = [_x] call acre_api_fnc_getMountedRackRadio;
    if (count _radio != 0) then {
        private _channel = _radioChannel select _forEachIndex;
        [_radio, _channel] call acre_api_fnc_setRadioChannel;
        #ifdef DEBUG_MODE
            [format["Vehicle %1 (%2) radio %3 in rack %3 have radio set to channel %4", _vehicle, typeOf _vehicle, _radio, _x, _channel], "Vehicle Radio"] call FUNC(info);
        #endif
    };
} forEach _racks;
