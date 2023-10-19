#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function apply a loadout to a vehicle and save it as a variable.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: LoadoutName <OBJECT>
 * 2: VehicleLoadout <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle, "default", []] call cScripts_fnc_vehicle_applyLoadout;
 *
 * Public: No
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_loadoutName", "", [""]],
    ["_vehicleLoadout", [], [[]]]
];

if (_vehicle iskindOf "man") exitWith {};
if (isNull _vehicle) exitWith {};
if (_loadoutName == "") exitWith {};
if (count _vehicleLoadout == 0) exitWith {};

INFO_3("VehiclePylonApply", "Applying pylon '%1' to %2 (%3)", _loadoutName, _vehicle, typeOf _vehicle);

// Rearm vehicle first
_vehicle setVehicleAmmo 1;

// Clear magazine
{
    _x params ["_magazineClassname", "_turretPath"];
    INFO_4("VehiclePylonApply", "Removing magazine '%1' in turrent %2 to %3 (%4)", _magazineClassname, _turretPath, _vehicle, typeOf _vehicle);
    _vehicle removeMagazinesTurret [_magazineClassname, _turretPath];
} forEach magazinesAllTurrets _vehicle;

// Add magazine
{
    _x params [
        ["_magazineClassname", "", [""]],
        ["_turretPath", [], [[]]],
        ["_amount", -1, [0]]
    ];
    if (_amount != 0) then {
        INFO_5("VehiclePylonApply", "Adding magazine '%1' (%2) in turrent %23 to %4 (%5)", _magazineClassname, _amount, _turretPath, _vehicle, typeOf _vehicle);
        _vehicle addMagazineTurret [
            _magazineClassname,
            _turretPath,
            if (_amount < 0) then {getNumber (configFile >> "CfgMagazines" >> _magazineClassname >> "count")} else {_amount}
        ];
    };
} forEach _vehicleLoadout;

INFO_3("VehiclePylonApply", "Vehicle %1 (%2) have been rearmed with '%3'", _vehicle, typeOf _vehicle, _loadoutName);
_vehicle setVariable [QEGVAR(Vehicle,Pylon), [_loadoutName, _vehicleLoadout], true];
