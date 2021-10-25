#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add stadgeing to vehicles
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["truckMcTruckLoad"] call cScripts_fnc_vehicle_addMagazines
 *
 * Public: No
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_turretPath", [], [[]]],
    ["_magazines", [],[[]]]
];
{
    _x params ["_magazine", ["_amount", getNumber (configFile >> "CfgMagazines" >> _x#0 >> "count"), []]];
    _vehicle addMagazineTurret [_magazine, _turretPath, _amount];
} forEach _magazines;
