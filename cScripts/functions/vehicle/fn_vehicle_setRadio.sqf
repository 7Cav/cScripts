#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function changes the inventory of the given vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: Channel <NUMBER>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call cScripts_fnc_vehicle_setRadio;
 *
 * Public: No
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_radioChannel", [], [[]]]
];

if (!EGVAR(Patches,usesACRE) && !EGVAR(Patches,usesTFAR)) exitWith {};
if (!EGVAR(Settings,enableRadios)) exitWith {};
if (!EGVAR(Settings,enableVehicleRadios)) exitWith {};
if (isNull _vehicle) exitWith {};
if (!(_vehicle call FUNC(isValidFaction))) exitWith {};

// ACRE
if (EGVAR(patches,usesACRE)) exitWith {
    if (!isServer) exitWith {};

    [_vehicle, "default"] call acre_api_fnc_setVehicleRacksPreset;
    [_vehicle, {}] call acre_api_fnc_initVehicleRacks;

    waitUntil { _vehicle call acre_api_fnc_areVehicleRacksInitialized };

    INFO_4("VehicleRadio", "Vehicle rack initzialized for %1 (%2)", _vehicle, typeOf _vehicle);

    private _racks = [_vehicle] call acre_api_fnc_getVehicleRacks;
    if (count _racks == 0) exitWith {INFO_2("VehicleRadio", "No Vehicle Racks discoverd for %1 (%2).", _vehicle, typeOf _vehicle);};

    // Add extra channels
    _radioChannel = _radioChannel + [1,1,1,1,1];

    {
        private _radio = [_x] call acre_api_fnc_getMountedRackRadio;
        if (count _radio != 0) then {
            private _channel = _radioChannel select _forEachIndex;
            [_radio, _channel] call acre_api_fnc_setRadioChannel;
            INFO_4("VehicleRadio", "Vehicle %1 (%2) radio %3 in rack %3 have radio set to channel %4", _vehicle, typeOf _vehicle, _radio, _x, _channel);
        };
    } forEach _racks;
};


// TFAR
if (EGVAR(patches,usesTFAR)) exitWith {
    /** TODO: Code goes here */
};

SHOW_CHAT_ERROR("VehicleRadio", "Fatal");