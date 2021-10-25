#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function clear all vehicle magazines
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["truckMcTruckLoad"] call cScripts_fnc_vehicle_clearAllMagazines
 *
 * Public: No
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_turretPath", [0], [[]]]
];

private _magazines = _vehicle magazinesTurret _turretPath;
{
    _vehicle removeMagazinesTurret [_x, _turretPath];
} forEach _magazines;