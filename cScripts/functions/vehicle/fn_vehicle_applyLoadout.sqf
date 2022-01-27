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
 * Example:
 * ["vic", "default", []] call cScripts_fnc_vehicle_applyLoadout;
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_loadoutName", "", [""]],
    ["_vehicleLoadout", [], [[]]]
];

if (_vehicle iskindOf "man") exitWith {};
if (_loadoutName == "") exitWith {};
if (count _vehicleLoadout == 0) exitWith {};

#ifdef DEBUG_MODE
    [format ["Applying pylon '%1' to %2 (%3)", _loadoutName, _vehicle, typeOf _vehicle], "Vehicle Pylon"] call FUNC(info);
#endif

// Rearm vehicle first
_vehicle setVehicleAmmo 1;

// Clear magazine
{
    _x params ["_magazineClassname", "_turretPath"];
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
        //[format["Adding magazine %1 (%2)", _magazineClassname, _amount]] call FUNC(log);
        _vehicle addMagazineTurret [
            _magazineClassname,
            _turretPath,
            if (_amount < 0) then {getNumber (configFile >> "CfgMagazines" >> _magazineClassname >> "count")} else {_amount}
        ];
    };
} forEach _vehicleLoadout;

_vehicle setVariable [QEGVAR(vehicle,pylon), [_loadoutName, _vehicleLoadout]];