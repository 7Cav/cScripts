#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function return a vehicle loadout based on loadout name and vehicle kind.
 *
 * Arguments:
 * 0: VehicleKind <STRING>
 * 1: LoadoutName <STRING> (Default; "default")
 *
 * Return Value:
 * Vehicle loadout Array <ARRAY>
 *
 * Example:
 * ["rhsusf_m1a1tank_base", "default"] call cScripts_fnc_vehicle_getPylon;
 */

params [
    ["_vehicleKind", "", [""]],
    ["_loadout", "default", [""]]
];

if (_vehicleKind == "") exitWith {
    ["No kind of vehicle is defined", "Vehicle Pylon"] call FUNC(warning);
    [];
};
if (_loadout == "") exitWith {
    ["No vehicle loadout is defined", "Vehicle Pylon"] call FUNC(warning);
    [];
};


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

// _APC_Wheeled_03_base_F
private _APC_Wheeled_03_base_F = createHashMapFromArray [
    ["antiarmor", [
        ["SmokeLauncherMag",[0,0],6],
        ["140Rnd_30mm_MP_shells_Tracer_Red",[0],140],
        ["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60],
        ["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["2Rnd_GAT_missiles",[0],2],
        ["2Rnd_GAT_missiles",[0],2],
        ["2Rnd_GAT_missiles",[0],2]  
    ]],
    [ "antiair", [
        ["SmokeLauncherMag",[0,0],6],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60],
        ["140Rnd_30mm_MP_shells_Tracer_Red",[0],140],
        ["140Rnd_30mm_MP_shells_Tracer_Red",[0],140],
        ["4Rnd_Titan_long_missiles",[0],4],
        ["4Rnd_Titan_long_missiles",[0],4]
    ]],
    ["default",[
        ["SmokeLauncherMag",[0,0],6],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["140Rnd_30mm_MP_shells_Tracer_Red",[0],140],
        ["2Rnd_GAT_missiles",[0],2],
        ["2Rnd_GAT_missiles",[0],2],
        ["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60],
        ["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60]
    ]],
    ["assault",[
        ["SmokeLauncherMag",[0,0],6],
        ["140Rnd_30mm_MP_shells_Tracer_Red",[0],140],
        ["140Rnd_30mm_MP_shells_Tracer_Red",[0],140],
        ["2Rnd_GAT_missiles",[0],2],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["2000Rnd_762x51_Belt_T_Red",[0],2000],
        ["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60],
        ["60Rnd_30mm_APFSDS_shells_Tracer_Red",[0],60]
    ]]
];

// Loadout vehicle list
private _pylons = createHashMapFromArray [
    ["rhsusf_m1a1tank_base", _rhsusf_m1a1tank_base],
    ["APC_Wheeled_03_base_F", _APC_Wheeled_03_base_F]
];

private _getVehiclePylons = _pylons getOrDefault [_vehicleKind, []];
if (count _getVehiclePylons == 0) exitWith {[]};
private _pylon = _getVehiclePylons getOrDefault [_loadout, []];

#ifdef DEBUG_MODE
    if (_pylon == []) then {
        [format ["%1 not found in list of loadouts for %2.", _loadout, _vehicleKind], "Vehicle Pylon"] call FUNC(warning);
    };
#endif

_pylon;
