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

// I_APC_Wheeled_03_cannon_F
private _cav_dragoon_base_F = createHashMapFromArray [
    ["antiarmor", [
        ["SmokeLauncherMag",[0],6],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_78Rnd_30mm_HEI_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_HEI_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_APFSDS_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_APFSDS_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_APFSDS_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_APFSDS_shells_Tracer_Red",[0],78]
    ]],
    // ["antiair", [
    //     ["SmokeLauncherMag",[0,0],6],
    //     ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
    //     ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
    //     ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
    //     ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
    //     ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
    //     ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
    //     ["cav_78Rnd_30mm_HEI_shells_Tracer_Red",[0],78],
    //     ["cav_78Rnd_30mm_HEI_shells_Tracer_Red",[0],78],
    //     ["cav_78Rnd_30mm_APFSDS_shells_Tracer_Red",[0],78],
    //     ["cav_78Rnd_30mm_APFSDS_shells_Tracer_Red",[0],78],
    //     ["4Rnd_Titan_long_missiles",[0],4]
    // ]],
    ["default",[
        ["SmokeLauncherMag",[0],6],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_78Rnd_30mm_HEI_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_HEI_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_HEI_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_HEI_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_APFSDS_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_APFSDS_shells_Tracer_Red",[0],78]
    ]],
    ["balanced",[
        ["SmokeLauncherMag",[0],6],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_mag_300Rnd_762x51_Belt_Red",[0],300],
        ["cav_78Rnd_30mm_HEI_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_HEI_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_HEI_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_APFSDS_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_APFSDS_shells_Tracer_Red",[0],78],
        ["cav_78Rnd_30mm_APFSDS_shells_Tracer_Red",[0],78]
    ]]
];

// Loadout vehicle list
private _allVehiclePylons = createHashMapFromArray [
    ["rhsusf_m1a1tank_base", _rhsusf_m1a1tank_base],
    ["cav_dragoon_base_F", _cav_dragoon_base_F]
];

// Return keys or full hashmap
if (_vehicleKind isEqualType true) exitWith {
    if (_vehicleKind) then {_allVehiclePylons = keys _allVehiclePylons};
    _allVehiclePylons;
};


// Check if valid input
if (_vehicleKind == "") exitWith {
    SHOW_WARNING("VehiclePylon", "No kind of vehicle is defined");
    [];
};
if (_loadout == "") exitWith {
    SHOW_WARNING("VehiclePylon", "No vehicle loadout is defined");
    [];
};

// Obtain pylon
private _vehiclePylons = _allVehiclePylons getOrDefault [_vehicleKind, []];
private _pylon = _vehiclePylons getOrDefault [_loadout, []];
if (count _pylon == 0) then {
    SHOW_WARNING_2("VehiclePylon", "%1 does not exist for selected kind of %2.", _loadout, _vehicleKind);
};

_pylon;
