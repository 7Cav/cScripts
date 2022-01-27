#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function return a vehicle loadout based on loadout name and vehicle kind.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: LoadoutName <STRING> (Default; "default")
 *
 * Return Value:
 * Vehicle loadout Array <ARRAY>
 *
 * Example:
 * ["vic", "default"] call cScripts_fnc_vehicle_getPylon;
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_loadout", "default", [""]]
];

if (_vehicle iskindOf "man") exitWith {
    [format["Vehicle; %1 is a man object", _vehicle], "Vehicle Pylon"] call FUNC(error);
    [];
};
if (isNull _vehicle) exitWith {
    ["Vehicle is null", "Vehicle Pylon"] call FUNC(error);
    [];
};
if (_loadout == "") exitWith {
    ["No vehicle loadout is defined", "Vehicle Pylon"] call FUNC(warning);
    [];
};

private _vehicleKind = _vehicle iskindOf "rhsusf_m1a1tank_base";

// rhsusf_m1a1tank_base
private _rhsusf_m1a1tank_base = createHashMapFromArray [
    ["hard", [
        ["rhs_mag_smokegen",[-1],999],
        ["rhs_mag_M829A3_max",[0],44],
        ["rhs_mag_M830A1_max",[0],8],
        ["rhs_mag_762x51_M240_1200",[0],0],
        ["rhs_mag_762x51_M240_1200",[0],0],
        ["rhs_mag_762x51_M240_1200",[0],0],
        ["rhs_mag_762x51_M240_1200",[0],0],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_LaserFCSMag",[0],99],
        ["rhs_LaserFCSMag",[0],99],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhsusf_mag_L8A3_12",[0,0],12],
        ["rhs_mag_762x51_M240_200",[0,2]],
        ["rhs_mag_762x51_M240_200",[0,2]],
        ["rhs_mag_762x51_M240_200",[0,2]]
    ]],
    [ "default", [
        ["rhs_mag_smokegen",[-1],999],
        ["rhs_mag_M829A3_max",[0],28],
        ["rhs_mag_M830A1_max",[0],16],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_LaserFCSMag",[0],99],
        ["rhs_LaserFCSMag",[0],99],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhsusf_mag_L8A3_12",[0,0],12],
        ["rhs_mag_762x51_M240_200",[0,2]],
        ["rhs_mag_762x51_M240_200",[0,2]],
        ["rhs_mag_762x51_M240_200",[0,2]]
    ]],
    ["soft",[
        ["rhs_mag_smokegen",[-1],999],
        ["rhs_mag_M829A3_max",[0],4],
        ["rhs_mag_M1028_max",[0],10],
        ["rhs_mag_M1069_max",[0],22],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_mag_762x51_M240_1200",[0],1200],
        ["rhs_LaserFCSMag",[0],99],
        ["rhs_LaserFCSMag",[0],99],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0,0]],
        ["rhsusf_mag_L8A3_12",[0,0],12],
        ["rhs_mag_762x51_M240_200",[0,2]],
        ["rhs_mag_762x51_M240_200",[0,2]],
        ["rhs_mag_762x51_M240_200",[0,2]]
    ]]
];

// Loadout vehicle list
private _pylons = createHashMapFromArray [
    ["rhsusf_m1a1tank_base", _rhsusf_m1a1tank_base]
];

private _getVehiclePylons = _pylons getOrDefault ["_vehicleKind", []];
if (count _getVehiclePylons == 0) exitWith {[]};
private _pylon = _getVehiclePylons getOrDefault ["_loadout", []];

_pylon;