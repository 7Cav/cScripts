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
 * ["vic", "default", []] call cScripts_fnc_vehicle_applyLoadout;
 * ["vic", "default", [["SmokeLauncherMag",[0,0],6]]] call cScripts_fnc_vehicle_applyLoadout;
 * ["vic", "default", [["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60],["2000Rnd_762x51_Belt_T_Red",[0],2000]] call cScripts_fnc_vehicle_applyLoadout;
 * ["vic", "default", ["","rhs_mag_M151_19","rhs_mag_AGM114L_4","rhs_mag_AGM114K_4","rhs_mag_M151_19","","rhsusf_M130_CMFlare_Chaff_Magazine_x2"]] call cScripts_fnc_vehicle_applyLoadout;
 *
 * _var = ["rhsusf_m1a1tank_base", "default"] call cScripts_fnc_vehicle_getPylon;
 * ["vic", "default", _var] call cScripts_fnc_vehicle_applyLoadout;
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

if (_vehicleLoadout#0 isEqualType []) then {
    // Rearm vehicle first
    _vehicle setVehicleAmmo 1;

    // Clear magazine
    {
        INFO_4("VehiclePylonApply", "Removing magazine '%1' in turrent %2 to %3 (%4)", _magazineClassname, _turretPath, _vehicle, typeOf _vehicle);
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
            INFO_5("VehiclePylonApply", "Adding magazine '%1' (%2) in turrent %23 to %4 (%5)", _magazineClassname, _amount, _turretPath, _vehicle, typeOf _vehicle);
            _vehicle addMagazineTurret [
                _magazineClassname,
                _turretPath,
                if (_amount < 0) then {getNumber (configFile >> "CfgMagazines" >> _magazineClassname >> "count")} else {_amount}
            ];
        };
    } forEach _vehicleLoadout;
} else {
    // Rearm vehicle first
    _vehicle setVehicleAmmo 1;

    // Add magazine
    {
        private _pylonIndex = _forEachIndex + 1;
        INFO_4("VehiclePylonApply", "Adding pylon index %1: '%2' to %3 (%4)", _pylonIndex, _x, _vehicle, typeOf _vehicle);
        _vehicle setPylonLoadout [_pylonIndex, _x, true];
    } forEach _vehicleLoadout;
};

INFO_3("VehiclePylonApply", "Vehicle %1 (%2) have been rearmed with '%3'", _vehicle, typeOf _vehicle, _loadoutName);
_vehicle setVariable [QEGVAR(Vehicle,Pylon), [_loadoutName, _vehicleLoadout], true];
