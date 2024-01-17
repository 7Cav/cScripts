#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function return a vehicle loadout based on provided name and vehicle kind.
 *
 * Arguments:
 * 0: VehicleKind or ListOfVehicleKind(true) or Everything(false) <STRING|BOOLEAN>
 * 1: LoadoutName <STRING> (Default; "default")
 *
 * Return Value:
 * Vehicle loadout Array or keys <ARRAY>
 *
 * Example:
 * ["rhsusf_m1a1tank_base", "default"] call cScripts_fnc_vehicle_getPylon;
 * [true] call cScripts_fnc_vehicle_getPylon;
 *
 * Public: No
 */

params [
    ["_vehicleKind", "", ["", true]],
    ["_loadout", "default", [""]]
];

// Loadout vehicle list
private _pylonMap = GVAR(PYLONS);
private _pylon = [];

// Return keys or full hashmap
if (_vehicleKind isEqualType true) exitWith {
    if (_vehicleKind) exitWith {keys _pylonMap};
    _pylonMap;
};


// Check if valid input
if ((_vehicleKind == "") && (_loadout == "")) exitWith {
    SHOW_CHAT_WARNING("VehiclePylon", "No kind of vehicle and no vehicle loadout is defined");
    _pylon;
};
if (_vehicleKind == "") exitWith {
    SHOW_CHAT_WARNING("VehiclePylon", "No kind of vehicle is defined");
    _pylon;
};
if (_loadout == "") exitWith {
    SHOW_CHAT_WARNING("VehiclePylon", "No vehicle loadout is defined");
    _pylon;
};

// Obtain pylon
private _vehiclePylons = _pylonMap getOrDefault [_vehicleKind, []];
private _vehiclePylonsMap = createHashMapFromArray _vehiclePylons;

private _pylon = _vehiclePylonsMap getOrDefault [_loadout, []];
if (count _pylon == 0) then {
    SHOW_WARNING_2("VehiclePylon", "%1 does not exist for selected kind of %2.", _loadout, _vehicleKind);
};

_pylon;
