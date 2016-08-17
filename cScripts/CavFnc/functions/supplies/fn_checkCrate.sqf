/*
 * Author: CPL.Brostrom.A 
 * This check for classname of crates and add a inventory.
 * Runns best if used together with a trigger. 
 * With the folowing activation line:
 * {[_x] call cScripts_fnc_checkCrate;} forEach thislist;
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_checkCrate;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params ["_vehicle"];
_vehicleType = typeOf _vehicle;

private _vehicleSupplyCrate  = [
    "CargoNet_01_box_F",
    "B_CargoNet_01_ammo_F",
    "CargoNet_01_barrels_F",
    "B_supplyCrate_F"
];

switch (true) do {
    case (_vehicleType in _vehicleSupplyCrate): {
        [_vehicle,1] call cScripts_fnc_equipCrate;
    };
};